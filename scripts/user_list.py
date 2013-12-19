import sys, json
for user in json.loads(sys.stdin.readlines()[0])["Users"]:
  print user["Username"]