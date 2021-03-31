# go-app
#dev env output
[root@anil go-calc]# curl http://ec2-18-188-219-161.us-east-2.compute.amazonaws.com:30007/add -d '{"operand1": 4, "operand2": 3}'
7
#preprod env output
[root@anil go-calc]# curl http://ec2-18-188-219-161.us-east-2.compute.amazonaws.com:30008/subtract -d '{"operand1": 4, "operand2": 3}'
1
#prod env output
[root@anil go-calc]# curl http://ec2-18-188-219-161.us-east-2.compute.amazonaws.com:30009/multiply -d '{"operand1": 4, "operand2": 3}'
12
