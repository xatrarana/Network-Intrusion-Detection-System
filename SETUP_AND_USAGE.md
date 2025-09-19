# SETUP & USAGE — Snort NIDS (Full guide)
*Author: Dip Kar — Intern @ Infotact Solution*
*Purpose: single-file, step-by-step install / run / troubleshoot / test guide so anyone can reproduce the project*

---

## Overview (what's in this repo)
- `snort.lua` — Snort++ (Snort 3) config used for this project
- `rules/local.rules` — custom detection rules (35 rules)
- `rules/RULES_SUMMARY.md` — human readable SID → message summary
- `docs/SNORT_NIDS_Project_Report.pdf` — final report & test playbook
- `docs/screenshots/` — alert screenshots (evidence)
- `tests/` — simple test scripts (example attacker commands)

---

## Quick TL;DR (one-liners)
1. Use a Linux VM (Ubuntu/Debian recommended).
2. Install dependencies + Snort++ (Snort 3).
3. Edit `snort.lua` → set `HOME_NET`.
4. Run test parse: `sudo snort -c snort.lua -T`
5. Run Snort: `sudo snort -c snort.lua -i <iface> -A alert_fast`
6. Run tests from `docs/` or `tests/` to trigger alerts.

---

## Full (step-by-step) — Ubuntu/Debian style

> NOTE: run all commands as a user with `sudo` or inside a root shell. **Never** run offensive tests on networks you don't own.

### 1) Prepare VM / environment
- Recommended: Ubuntu 20.04 / 22.04 or Debian 11/12. Use VirtualBox/VMWare.
- Give VM at least 2 vCPU, 4GB RAM (8GB better), 20GB disk.
- Network: use host-only or NAT + port forwarding for isolated lab.

Update OS and install basic deps:

