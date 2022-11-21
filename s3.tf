resource "aws_s3_bucket" "s3bucket" {
  bucket = "s3-website-test.hashicorp.com"
  acl    = "public-read"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["https://s3-website-test.hashicorp.com"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}

resource "aws_s3_bucket_object" "object" {
  bucket = "aws_s3_bucket.s3bucket"
  key    = "users/1/articles/article_1.json"
  source = "https://example.com/api/users/1/articles/article_1.json"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("http://example.com/api/users/1/articles/article_1.json"))}"
  #etag = filemd5("http://example.com/api/users/1/articles/article_1.json")
}

