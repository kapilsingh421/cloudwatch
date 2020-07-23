# cloudwatch

step1:
sudo apt-get install -y pssh

step2:
add sever list to servers.txt
for exp:
ec2-x-x-46-218.compute-1.amazonaws.com
ec2-x-x-2-22.compute-1.amazonaws.com


step3:
parallel-ssh -i  -h servers.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i x.pem" 'git clone https://<usrname>:<pswd>@github.com/kapilsingh421/cloudwatch'

step4:
parallel-ssh -i  -h servers.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i x.pem" 'cd cloudwatch && chmod +x install_CWagent.sh && ./install_CWagent.sh'
