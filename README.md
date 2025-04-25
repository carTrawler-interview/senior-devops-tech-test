Two branches have been created: staging and production

Branch: "staging" is deploying with kubectl - k8s and
Branch: "production" is deploying with helm charts

SLACK shared library path: https://github.com/carTrawler-interview/shared-lib-slack.git

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Both pipelines are active and can be checked

JENKINS URL:  http://54.170.171.220:8080/

login:

username: carTrawler

password: carTrawler

Please connect using the above credentials

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

staging branch runs in namespace: car-trawler

ECR private repo: 741448928302.dkr.ecr.eu-west-1.amazonaws.com/car-trawler-interview/nodejs-app

The image tag is as per the build number

Pipeline Name: node-js-interview  | Manually trigger the build

Post build completion, use this as mentioned in the  console:

Run the pipeline and then check the link

URL: http://ad4ee035f8df843d79165974acde1c7b-1978458333.eu-west-1.elb.amazonaws.com

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

production branch runs in namespace: car-trawler-helm

ECR private repo: 741448928302.dkr.ecr.eu-west-1.amazonaws.com/car-trawler-interview/nodejs-app-helm

The image tag is as per the build number

Pipeline Name: helm-pipeline-interview  | Runs on github-webook

Post build completion, use this as mentioned in the console:

Run the pipeline and then check the link

URL: http://ad4ee035f8df843d79165974acde1c7b-1978458333.eu-west-1.elb.amazonaws.com/helm/

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Both pipelines have a cleanup script to remove the alternative deployment since both are the same.
