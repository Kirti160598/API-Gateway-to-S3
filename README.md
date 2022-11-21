# API-Gateway-to-S3

Created an API Gateway that contains an endpoints(connector) to upload required data to S3 Bucket.
The data should be stored in S3 bucket using the parameter as S3 object key.


1. Created Role with policy
AmazonAPIGatewayPushToCloudWatchLogs
2. Under Policy section ->S3->PUTObject-> added bucket name ,object name and attached to role.
3.Created API Gateway 
  Required 2 RestfulAPI resources one for specifying s3 bucket to store data and second one to save data through s3 bucket.

4. Upload data in s3 bucket we need PUT method.

