Pipeline desgin:

1. Git checkout with sourcing github

2. Check all yaml files are good with yamllint

3. Run the npm install and npm test

4. docker build and push

5. Deploy using K8s or helm charts with rollback deployment in production

6. Notify using Slack


- - - - - - - - - - 

1.  Git checkout with sourcing github:
Add credentials in jenkins with repo url: https://github.com/carTrawler-interview/senior-devops-tech-test.git and git pat token.
Using pipeline syntax, generate steps in stage

2. Check all yaml files are good with yamllint
All files of K8s needs to be checked for multiline, indentation etc

sudo yum install python3-pip -y
sudo pip3 install yamllint

3. Run the npm install and npm test
nodejs plugin is required to be installed in jenkins and mention the tool name in pipeline 
nodejs "nodejs23.11.0"

4. docker build and push
docker needs to be installed:
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker
sudo groupadd docker
sudo usermod -aG docker $USER


Docker pipeline plugin is reuired to be installed
run in server:
sudo usermod -aG docker jenkins
sudo systemctl restart docker
sudo systemctl restart jenkins

Install awscli
sudo yum install wget unzip -y
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
aws --version


aws needs to be cnfigured by: aws configure

To push the file jenkins server needs to have proper role: ECRContainerRegistryFullAccess
attach it to server

5. Deploy using K8s or helm charts

Run the EKS cluster in AWS
Cluster must be created with AmazonEKSClusterPolicy, AmazonEKSServicePolicy
Create worker node with AmazonEKSWorkerNodePolicy, AmazonEC2ContainerRegistryReadOnly, AmazonEKS_CNI_Policy and AmazonEBSCSIDriverPolicy
Install aws cli
Run command:
aws eks update-kubeconfig --region eu-west-1 --name nodejs-app

Not installed ASG for this task.

We need AWS Credentials in jenkins plugin, add credentials for access and scecret key and kubeconfig file

We need kubectl to communicate with K8s cluster

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

Install helm as well

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

<<<<<<< HEAD
6. Slack notify
slack function is placed in shared library: https://github.com/carTrawler-interview/shared-lib-slack.git

we can access it in other scripts as well.Pipeline desgin:

1. Git checkout with sourcing github

2. Check all yaml files are good with yamllint

3. Run the npm install and npm test

4. docker build and push

5. Deploy using K8s or helm charts

6. Notify using Slack

1.  Git checkout with sourcing github:
Add credentials in jenkins with repo url: https://github.com/carTrawler-interview/senior-devops-tech-test.git and git pat token.
Using pipeline syntax, generate steps in stage

2. Check all yaml files are good with yamllint
All files of K8s needs to be checked for multiline, indentation etc

sudo yum install python3-pip -y
sudo pip3 install yamllint

3. Run the npm install and npm test
nodejs plugin is required to be installed in jenkins and mention the tool name in pipeline 
nodejs "nodejs23.11.0"

4. docker build and push
docker needs to be installed:
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker
sudo groupadd docker
sudo usermod -aG docker $USER


Docker pipeline plugin is reuired to be installed
run in server:
sudo usermod -aG docker jenkins
sudo systemctl restart docker
sudo systemctl restart jenkins

Install awscli
sudo yum install wget unzip -y
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
aws --version


aws needs to be cnfigured by: aws configure

To push the file jenkins server needs to have proper role: ECRContainerRegistryFullAccess
attach it to server

5. Deploy using K8s or helm charts

Run the EKS cluster in AWS
Cluster must be created with AmazonEKSClusterPolicy, AmazonEKSServicePolicy
Create worker node with AmazonEKSWorkerNodePolicy, AmazonEC2ContainerRegistryReadOnly, AmazonEKS_CNI_Policy and AmazonEBSCSIDriverPolicy
Install aws cli
Run command:
aws eks update-kubeconfig --region eu-west-1 --name nodejs-app

Not installed ASG for this task.

We need AWS Credentials in jenkins plugin, add credentials for access and scecret key and kubeconfig file

We need kubectl to communicate with K8s cluster

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

Install helm as well

curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
=======
Create a helm package by using : helm create nodejs-app
Now modify the values.yaml or templates as per requirement
package it and keep a copy
>>>>>>> 326d3f976329aedb3708cb1235cc5726d887b6d1

6. Slack notify
slack function is placed in shared library: https://github.com/carTrawler-interview/shared-lib-slack.git

<<<<<<< HEAD
we can access it in other scripts as well.
=======
we can access from other scripts as well.
>>>>>>> 326d3f976329aedb3708cb1235cc5726d887b6d1
