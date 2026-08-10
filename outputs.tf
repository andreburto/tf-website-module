output "bucket_url" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website-${local.region}.amazonaws.com"
}

output "bucket_name" {
  value = aws_s3_bucket.website.bucket
}

output "cloudfront_url" {
  value = aws_cloudfront_distribution.website.domain_name
}

ouytput "cloudfront_id" {
  value = aws_cloudfront_distribution.website.id
}