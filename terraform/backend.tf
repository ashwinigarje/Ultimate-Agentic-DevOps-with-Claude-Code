# S3 Backend Configuration
#
# IMPORTANT: Follow these steps to enable remote state management:
#
# 1. First, run `terraform init` WITHOUT this backend configured (leave it commented out)
#    This will initialize Terraform with local state
#
# 2. Run `terraform plan` and `terraform apply` to create the initial resources
#    (S3 bucket, CloudFront distribution, etc.)
#
# 3. Create a separate S3 bucket for Terraform state (e.g., terraform-state-${account_id})
#    Make sure to enable versioning and encryption on this state bucket
#
# 4. Once the state bucket is created, uncomment the backend configuration below
#
# 5. Run `terraform init -migrate-state` to migrate from local state to S3
#    Terraform will prompt you to confirm moving the existing state
#
# 6. Verify the state was migrated successfully to S3

# terraform {
#   backend "s3" {
#     bucket         = "terraform-state-ACCOUNT_ID"
#     key            = "portfolio-site/terraform.tfstate"
#     region         = "ap-south-1"
#     encrypt        = true
#     dynamodb_table = "terraform-locks"
#   }
# }
