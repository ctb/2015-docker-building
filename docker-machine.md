https://docs.docker.com/machine/drivers/aws/

apt-get install awscli

aws configure
#us-east-1

aws ec2 describe-subnets


docker-machine create --driver amazonec2 --amazonec2-access-key XXX --amazonec2-secret-key XXX --amazonec2-vpc-id XXX --amazonec2-zone b --amazonec2-instance-type m3.xlarge aws01

docker-machine env aws03


