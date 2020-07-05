# build a docker image
docker build -t webportal-demo2 .

# login to ECR (change for your region)
$(aws ecr get-login --no-include-email --region ap-southeast-1 --profile aws-devops)

# tag image (change aws account number)
docker tag webportal-demo2:latest 019614656427.dkr.ecr.ap-southeast-1.amazonaws.com/webportal-server-image:latest

# push image
docker push 019614656427.dkr.ecr.ap-southeast-1.amazonaws.com/webportal-server-image:latest

# pull image
docker pull 019614656427.dkr.ecr.ap-southeast-1.amazonaws.com/webportal-server-image:latest