wget https://s3.amazonaws.com/amazoncloudwatch-agent/linux/amd64/latest/AmazonCloudWatchAgent.zip
unzip AmazonCloudWatchAgent.zip
sudo ./install.sh
./amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:config.json  -s