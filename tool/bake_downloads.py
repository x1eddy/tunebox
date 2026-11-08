#!/usr/bin/env python3
"""Writes the newest release's direct download links into site/index.html, so
the buttons work even when a visitor's browser cannot reach GitHub's API."""
import json, os, re, subprocess, sys

page = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'site', 'index.html')
rel = json.loads(subprocess.run(
    ['gh', 'api', 'repos/x1eddy/tunebox/releases/latest'],
    capture_output=True, text=True, check=True).stdout)
assets = {a['name']: a['browser_download_url'] for a in rel['assets']}

def find(suffix):
    hits = [u for n, u in assets.items() if n.endswith(suffix)]
    if not hits:
        sys.exit(f'release {rel["tag_name"]} has no {suffix} file')
    return hits[0]

links = {'dl-android': find('.apk'), 'dl-linux': find('.tar.gz'), 'dl-ios': find('.ipa')}
html = open(page, encoding='utf-8').read()
for id_, url in links.items():
    html, n = re.subn(rf'(id="{id_}" href=")[^"]*(")', rf'\g<1>{url}\g<2>', html)
    if n != 1:
        sys.exit(f'button {id_} not found exactly once')
html = re.sub(r'<b id="ver">[^<]*</b>', f'<b id="ver">{rel["tag_name"]}</b>', html)
open(page, 'w', encoding='utf-8').write(html)
print('download links point at', rel['tag_name'])
