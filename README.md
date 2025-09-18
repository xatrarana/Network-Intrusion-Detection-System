# 🚀 Snort NIDS — Custom Rules & Test Playbook

**Author:** Dip Kar — Intern @ Infotact Solution  
**License:** MIT

> ⚠️ Use only in a lab or on systems where you have explicit permission. Unauthorized scanning or attack simulation is illegal.

## Short intro
This repository contains an advanced Snort++ (Snort 3) based Network Intrusion Detection System (NIDS) setup created as an internship project at Infotact Solution. It includes a Snort configuration, 35 custom detection rules for common web/network attacks, and a full test playbook (attacker/victim commands) with a final internship report.

## ✨ Features
- 35 custom Snort++ rules covering:
  - SQL Injection (basic & encoded payloads)
  - Cross-Site Scripting (XSS) raw & encoded
  - Reconnaissance & scans (Nmap SYN, XMAS, aggressive scans)
  - Brute-force and authentication attempts (SSH, FTP, HTTP)
  - Malware detection (EXE requests / MZ payload)
  - Webshell upload detection (.php, .asp, .jsp)
  - DoS/DDoS and UDP attack detection
- Configurable `snort.lua` (set `HOME_NET` for your lab)
- Full reproducible test playbook in PDF (`docs/SNORT_NIDS_Project_REPORT.pdf`)
- Contributors & credits file included
- Easy to run from a lab VM/host with Snort installed

## 📂 Repo Structure
Snort-NIDS-Custom-Rules/
│── snort.lua                       # Snort++ configuration (rename/adjust HOME_NET)
│── rules/
│   └── local.rules                 # Custom rule set (35 rules)
│   └── RULES_SUMMARY.md            # Human readable SID + msg summary
│── docs/
│   └── SNORT_NIDS_Project_Report.pdf
│   └── screenshots/                # put alert screenshots here (examples)
│── tests/
│   └── run_sqli.sh                 # example test scripts
│── README.md
│── CONTRIBUTORS.md
│── LICENSE
│── .gitignore

## ⚙️ Setup (quick)
1. Use a Linux VM (Ubuntu/Debian recommended) with root/sudo access.  
2. Install Snort++ (Snort 3) and required dependencies — follow official Snort docs.  
3. Clone this repo:
   `git clone https://github.com/xatrarana/Network-Intrusion-Detection-System.git`
4. Edit `snort.lua` and set `HOME_NET` to your lab network (example: `192.168.198.0/24`).  
5. You may either copy `rules/local.rules` to your system Snort rules folder or run Snort directly pointing to this repo config.

## ▶️ Run (example)
Start Snort in console alert mode (fast format):  

sudo snort -c /etc/snort/snort.lua -i eth0 -A alert_fast

## 📸 Screenshots

Below are example alert screenshots (click to view on GitHub):

- ![Brute Force Attempt detected](docs/screenshots/Brute Force Attempt detected.jpg)
- ![DNS query detected](docs/screenshots/DNS query detected.jpg)
- ![Dirb scan Detected](docs/screenshots/Dirb scan Detected.jpg)
- ![Dos Ddos attack detected](docs/screenshots/Dos Ddos attack detected.jpg)
- ![Metasploit User-Agent Detected](docs/screenshots/Metasploit User-Agent Detected.jpg)
- ![Metasploit detected](docs/screenshots/Metasploit detected.jpg)
- ![SQL Injection Detected](docs/screenshots/SQL Injection Detected.jpg)
- ![Sql Injection (Encoded OR 1=1) Detected](docs/screenshots/Sql Injection (Encoded OR 1=1) Detected.jpg)
- ![Sql Injection Tautology Detected](docs/screenshots/Sql Injection Tautology Detected.jpg)
- ![Syn scan detected snort](docs/screenshots/Syn scan detected snort.jpg)
- ![UDP packet detected](docs/screenshots/UDP packet detected.jpg)
- ![UNION sql detected](docs/screenshots/UNION sql detected.jpg)
- ![Webshell detected](docs/screenshots/Webshell detected.jpg)
- ![XMAS scan detected](docs/screenshots/XMAS scan detected.jpg)
- ![XSS detected](docs/screenshots/XSS detected.jpg)
- ![Xss Encoded Detected](docs/screenshots/Xss Encoded Detected.jpg)
- ![aggressive scan detected](docs/screenshots/aggressive scan detected.jpg)
- ![ftp connection detected](docs/screenshots/ftp connection detected.jpg)
- ![http Brute force detected](docs/screenshots/http Brute force detected.jpg)
- ![http access attempt detected ](docs/screenshots/http access attempt detected .jpg)
- ![https access detected](docs/screenshots/https access detected.jpg)
- ![malware detected ](docs/screenshots/malware detected .jpg)
- ![mysql access detected](docs/screenshots/mysql access detected.jpg)
- ![nikto scan detected](docs/screenshots/nikto scan detected.jpg)
- ![ping detected snort](docs/screenshots/ping detected snort.jpg)
- ![port scan detected](docs/screenshots/port scan detected.jpg)
- ![rdp connection detected](docs/screenshots/rdp connection detected.jpg)
- ![smb file sharing detected](docs/screenshots/smb file sharing detected.jpg)
- ![smtp mail detected](docs/screenshots/smtp mail detected.jpg)
- ![ssh Connection Attempt Detected](docs/screenshots/ssh Connection Attempt Detected.jpg)
- ![telnet connection detected](docs/screenshots/telnet connection detected.jpg)

## 📸 Screenshots

Below are example alert screenshots (click to view on GitHub):

- ![aggressive scan detected](docs/screenshots/aggressive_scan_detected.jpg)
- ![brute force attempt detected](docs/screenshots/brute_force_attempt_detected.jpg)
- ![dirb scan detected](docs/screenshots/dirb_scan_detected.jpg)
- ![dns query detected](docs/screenshots/dns_query_detected.jpg)
- ![dos ddos attack detected](docs/screenshots/dos_ddos_attack_detected.jpg)
- ![ftp connection detected](docs/screenshots/ftp_connection_detected.jpg)
- ![http access attempt detected](docs/screenshots/http_access_attempt_detected_.jpg)
- ![http brute force detected](docs/screenshots/http_brute_force_detected.jpg)
- ![https access detected](docs/screenshots/https_access_detected.jpg)
- ![malware detected](docs/screenshots/malware_detected_.jpg)
- ![metasploit detected](docs/screenshots/metasploit_detected.jpg)
- ![metasploit user-agent detected](docs/screenshots/metasploit_user-agent_detected.jpg)
- ![mysql access detected](docs/screenshots/mysql_access_detected.jpg)
- ![nikto scan detected](docs/screenshots/nikto_scan_detected.jpg)
- ![ping detected snort](docs/screenshots/ping_detected_snort.jpg)
- ![port scan detected](docs/screenshots/port_scan_detected.jpg)
- ![rdp connection detected](docs/screenshots/rdp_connection_detected.jpg)
- ![smb file sharing detected](docs/screenshots/smb_file_sharing_detected.jpg)
- ![smtp mail detected](docs/screenshots/smtp_mail_detected.jpg)
- ![sql injection detected](docs/screenshots/sql_injection_detected.jpg)
- ![sql injection tautology detected](docs/screenshots/sql_injection_tautology_detected.jpg)
- ![sql injection encoded or 1=1 detected](docs/screenshots/sql_injection_(encoded_or_1=1)_detected.jpg)
- ![ssh connection attempt detected](docs/screenshots/ssh_connection_attempt_detected.jpg)
- ![syn scan detected snort](docs/screenshots/syn_scan_detected_snort.jpg)
- ![telnet connection detected](docs/screenshots/telnet_connection_detected.jpg)
- ![udp packet detected](docs/screenshots/udp_packet_detected.jpg)
- ![union sql detected](docs/screenshots/union_sql_detected.jpg)
- ![webshell detected](docs/screenshots/webshell_detected.jpg)
- ![xmas scan detected](docs/screenshots/xmas_scan_detected.jpg)
- ![xss detected](docs/screenshots/xss_detected.jpg)
- ![xss encoded detected](docs/screenshots/xss_encoded_detected.jpg)
