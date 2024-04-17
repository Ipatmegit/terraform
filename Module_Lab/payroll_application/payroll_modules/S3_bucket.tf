resource "aws_s3_bucket" "patrick_aws_s3" {
  bucket = "mypatbucket2"

  tags = {
    Name        = "Patrick bucket"
    Environment = "Lab"
  }
}