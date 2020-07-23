# cloudwatch
For parallel installation of cloudwatch agent we are using pssh,Its distributed power shell which can execute same command on multiple servers.The shell script in this repository is only for linux servers,same thing can be done for windows servers.Follow the following steps to setup Cloudwatch agent on linux servers.

**step1**:<br />
sudo apt-get install -y pssh

**step2**:<br />
Add severs list to servers.txt<br />
For exp: <br />
ec2-x-x-46-218.compute-1.amazonaws.com <br />
ec2-x-x-2-22.compute-1.amazonaws.com


**step3**:<br />
parallel-ssh -i  -h servers.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i <pem file>" 'git clone https://<usrname>:<pswd>@github.com/kapilsingh421/cloudwatch'

**step4**:<br />
parallel-ssh -i  -h servers.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i <pem file>" 'cd cloudwatch && chmod +x install_CWagent.sh && ./install_CWagent.sh'

