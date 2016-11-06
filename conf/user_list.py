import sys, json
userlist=json.loads(sys.stdin.readlines()[0])["users"]
print "{0}".format("\n".join(i["username"] for i in userlist.values()))
