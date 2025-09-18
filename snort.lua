-- ===================== Snort++ 3.x Configuration (FINAL) =====================

-- Define Networks
HOME_NET = '192.168.198.0/24'
EXTERNAL_NET = 'any'

-- Load Default Snort Configs
include 'snort_defaults.lua'

-- ===================== Modules =====================
stream = {}
stream_ip = {}
stream_icmp = {}
stream_tcp = {}
stream_udp = {}
stream_user = {}
stream_file = {}

arp_spoof = {}
dns = {}
imap = {}
netflow = {}
normalizer = {}
pop = {}
rpc_decode = {}
sip = {}
ssh = {}
ssl = {}
telnet = {}

cip = {}
dnp3 = {}
iec104 = {}
mms = {}
modbus = {}
s7commplus = {}

dce_smb = {}
dce_tcp = {}
dce_udp = {}
dce_http_proxy = {}
dce_http_server = {}

gtp_inspect = default_gtp
port_scan   = default_med_port_scan
smtp        = default_smtp
ftp_server  = default_ftp_server
ftp_client  = {}
ftp_data    = {}
http_inspect = {}
http2_inspect = {}
file_id = { rules_file = 'file_magic.rules' }
file_policy = {}
js_norm = default_js_norm

appid   = {}
wizard  = default_wizard
binder  = {}

references       = default_references
classifications = default_classifications

-- ===================== IPS / Rules =====================
ips =
{
    variables = default_variables,
    include = '/etc/snort/rules/local.rules'
}

-- ===================== OUTPUT ALERT =====================
-- Show alerts in console (fast format)
alert_fast = { }

-- ==================================================================================
