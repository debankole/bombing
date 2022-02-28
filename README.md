# bombing

This repo contains scripts for ddosing russian web sites.

userdata+nologs.sh - this script installs infrastructure and runs docker containers that use bombardier to ddos provided list of sites, this script can be used as user data script of EC2 instance for example. 

userdata+cloudwatch.sh - same as userdata+nologs.sh but with logging to aws cloud watch (needs additional steps to work)

How to run on AWS:

Simple way (without logs):
Create EC2 instance, put userdata+nologs.sh content to EC2 user data, allocate public IP for monitoring (ssh + docker logs)


Harder way (logs in Cloud Watch):
1) Create IAM policy
2) Create role
3) Create EC2 instance, attach role, put userdata+cloudwatch.sh content to EC2 user data, use Cloud Watch for monitoring (find query for Cloud Watch Logs Insights in cloudwatch_query.txt)

