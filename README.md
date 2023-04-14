## Project Overview

Defines a scheduled Fargate task that runs once per minute. The Fargate task must print a Random Useless Fact obtained from this public API: https://uselessfacts.jsph.pl/api/v2/facts/random to stdout. Only the "text" portion of the API response needs to be printed.
* The Fargate task container must be configured to send stdout to CloudWatch Logs. The reviewer of your submission will check CloudWatch Logs for the expected output.
* The CloudFormation stack should provide the CloudWatch Log Group name associated with the previous item in it's Outputs.


## Architecture Design




AWS CloudFormation + ECS Tasks cron-like schedule  + Cloudwtach Logging to test public API



## CloudFormation Template

link of the template file: https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/cloudformationtemplate.yml

The CloudFormation template includes the following resources:

it uses the VPC, subnets create new role and policy for execution the ecs fargate, cluster, scheduled tasks and create cloudwatch resources for logs
creates the security-group to open the port 80


## Deployment Guide
1) The deployment guide includes the following steps:
Go the Cloudformation and upload the cloudformation template and select the subnet and vpc next click on the next ,select the check and click submit wait for the stack to be completed 
2) if we need to change the cpu and memory of ecs we can change in parameter include cloudwatch logs retain peroid in parameters



## Testing Plan
1) go and check the ecs culster there will be scheduled task check cron expression which is going to start the task every one minute
2) after the scheduled task is created it creates very task per minute you can check it in the task section in cluster
3) check the cloudwatch where the log group name is task-LogsGroup where you have one separate logstream for everytask check the log you will  display the text of the url
4) check the task in ecs is every one minute new container is running or not


## Screenshots 

![alt text](https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/Images/CFT_Parameters.PNG?raw=true)

![alt text](https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/Images/CFT_Image_2.PNG?raw=true)


![alt text](https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/Images/ECS_Cron_job.PNG?raw=true)


![alt text](https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/Images/ECS_Scheduled_task.PNG?raw=true)


![alt text](https://github.com/abhishekonteddu/ECS-CFT-APITEST/blob/main/Images/Cloud_watch_1.PNG?raw=true)




