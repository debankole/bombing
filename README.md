# bombing

This repo contains scripts for ddosing russian web sites.

userdata+nologs.sh - this script installs infrastructure and runs docker containers that use bombardier to ddos provided list of sites, this script can be used as user data script of EC2 instance for example. 

userdata+cloudwatch.sh - same as userdata+nologs.sh but with logging to aws cloud watch (needs additional steps to work)
