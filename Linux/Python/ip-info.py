#!/usr/bin/python3

import requests
import json
import sys

if len(sys.argv) == 1:
	print("Miss the ip adress.")
	sys.exit(2)

ip = sys.argv[1]

r = requests.get('http://ip-api.com/json/'+ ip)

json_result = json.loads(r.content.decode('utf-8'))

print(json_result)

