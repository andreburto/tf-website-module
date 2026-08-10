# tf-website-module

## About

This Terraform module creates an S3 bucket configured for static website hosting and a CloudFront distribution to serve the content. Build basic web applications and host them on AWS with this module.

## Usage

### Requirements

1. Terraform v1.14.6 or similar
2. hashicorp/aws provider v5.0.0 or similar
3. An AWS account with permissions to create S3 buckets, CloudFront distributions, and Route 53 records.

### Example

```hcl
module "website" {
  source = "git::https://github.com/andreburto/tf-website-module.git?ref=master"

  domain_url = var.bucket_name
  file_list   = [
    {
      source = "${var.local_path}/${var.image_file}"
      type   = "image/jpeg"
    },
    {
      source = "${var.local_path}/${var.index_file}"
      type   = "text/html"
    }
  ]
  zone_id     = var.zone_id
}
```

## To Do

* Add examples of how to use the module.
* Create options for Azure and GCP.
* Add option for Lambda Function to handle dynamic content.

## Update Log

* **2026-08-10:** Initial release of the module with S3 bucket, Route53 domain, and CloudFront distribution creation.
