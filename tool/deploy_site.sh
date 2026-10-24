#!/bin/bash
# Publishes site/ to https://tunebox.pages.dev (Cloudflare Pages, project "tunebox").
# One-time: cd ~/temp/cfdeploy && npx wrangler login   (wrangler 3.x; Node 18 is too old for 4.x)
set -e
cd ~/temp/cfdeploy
npx wrangler pages deploy "$(dirname "$(readlink -f "$0")")/../site" --project-name tunebox --branch main --commit-dirty=true
