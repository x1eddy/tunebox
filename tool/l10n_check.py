#!/usr/bin/env python3
"""Checks every lib/l10n/app_*.arb against app_en.arb: valid JSON, no unknown
keys, placeholders identical, plurals have an 'other' branch."""
import json, re, glob, sys, os
d = os.path.join(os.path.dirname(__file__), '..', 'lib', 'l10n')
en = json.load(open(os.path.join(d, 'app_en.arb')))
keys = [k for k in en if not k.startswith('@')]
ph = lambda s: sorted(set(re.findall(r'\{([A-Za-z_]\w*)(?:,|\})', s)))
bad = 0
for f in sorted(glob.glob(os.path.join(d, 'app_*.arb'))):
    if f.endswith('app_en.arb'): continue
    try: t = json.load(open(f))
    except Exception as e:
        print(os.path.basename(f), 'INVALID JSON', e); bad += 1; continue
    probs = []
    missing = [k for k in keys if k not in t]
    extra = [k for k in t if not k.startswith('@') and k not in en]
    if missing: probs.append(f'{len(missing)} missing')
    if extra: probs.append(f'extra {extra[:3]}')
    for k in keys:
        if k in t and ph(t[k]) != ph(en[k]):
            probs.append(f'placeholders {k}: {ph(en[k])} vs {ph(t[k])}')
        if k in t and 'plural' in en[k] and 'other{' not in t[k]:
            probs.append(f'plural {k} lacks other')
    if probs: bad += 1; print(os.path.basename(f), '; '.join(probs[:5]))
print('files checked, problems:', bad)
sys.exit(1 if bad else 0)
