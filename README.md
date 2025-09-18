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

- ![aggressive scan detected](docs/screenshots/aggressive_scan_detected.jpg)
- ![brute force attempt detected](docs/screenshots/brute_force_attempt_detected.jpg)
- ![dirb scan detected](docs/screenshots/dirb_scan_detected.jpg)
- ![dns query detected](docs/screenshots/dns_query_detected.jpg)
- ![dos ddos attack detected](docs/screenshots/dos_ddos_attack_detected.jpg)
- ![ftp connection detected](docs/screenshots/ftp_connection_detected.jpg)
- ![http access attempt detected](docs/screenshots/http_access_attempt_detected.jpg)
- ![http brute force detected](docs/screenshots/http_brute_force_detected.jpg)
- ![https access detected](docs/screenshots/https_access_detected.jpg)
- ![malware detected](docs/screenshots/malware_detected.jpg)
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
