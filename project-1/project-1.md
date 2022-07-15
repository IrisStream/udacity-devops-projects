# Deploy Static Website on AWS

## Website Files

### The student has created a S3 bucket.
![s3-bucket](imgs/s3-bucket.png)

### All website files should be added to the S3 bucket.
![s3-objects](imgs/s3-objects.png)

### The bucket configuration should be set up to support static website hosting.
![website-properties](imgs/website-properties.png)

### The permission access to the bucket should be configured.
![s3-policy](imgs/s3-policy.png)

## Website Distribution

### The website should be distributed via Cloudfront.
![cloudfront-distribution](imgs/cloudfront-distribution.png)

## Web Browser Access

### Is the website publicly accessible?
- CloudFront domain name
![cloudfront-url](imgs/cloudfront-url.png)
- Website URL
![website-url](imgs/website-endpoint.png)
- S3 object URL 
![s3-url](imgs/s3-url.png)