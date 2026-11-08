#!/bin/bash
# Publishes site/ to https://tunebox.pages.dev (Cloudflare Pages, project "tunebox").
# One-time: cd ~/temp/cfdeploy && npx wrangler login   (wrangler 3.x; Node 18 is too old for 4.x)
set -e
site="$(dirname "$(readlink -f "$0")")/../site"
# the download buttons carry the newest release's direct links
python3 "$(dirname "$(readlink -f "$0")")/bake_downloads.py"
cd ~/temp/cfdeploy
npx wrangler pages deploy "$site" --project-name tunebox --branch main --commit-dirty=true
