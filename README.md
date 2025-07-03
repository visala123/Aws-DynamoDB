#  DynamoDB Terraform Deployment

This project provisions an **Amazon DynamoDB table** using **Terraform** and automates deployment using **GitHub Actions CI/CD**.

---

##  Features

- Terraform-managed DynamoDB table (Provisioned mode)
- Global Secondary Index (GSI) configuration
- Time-To-Live (TTL) support
- Fully parameterized using `terraform.tfvars`
- CI/CD via GitHub Actions
- Remote state ( `backend.tf`) optional
- Resources created in ap-northeast-2

---

##  Folder Structure
```
.
├── backend.tf
├── main.tf
├── variables.tf
├── terraform.tfvars
├── provider.tf
├── output.tf
├── .gitignore
└── .github/
└── workflows/
└── deploy.yml

```

---

##  GitHub Secrets for AWS Authentication

To securely deploy Terraform from GitHub Actions, create the following GitHub repository secrets:

| Secret Name             | Description                             |
|-------------------------|-----------------------------------------|
| `AWS_ACCESS_KEY_ID`     | Your AWS IAM User Access Key ID         |
| `AWS_SECRET_ACCESS_KEY` | Your AWS IAM User Secret Access Key     |

>  You can add them under your repo:  
> `Settings` → `Secrets and variables` → `Actions` → `New repository secret`

---

##  GitHub Actions Workflow

The GitHub Actions workflow (`.github/workflows/deploy.yml`) runs on every push to `main` or `stage` branches and does the following:

1. Checks out the code
2. Sets up Terraform
3. Runs `terraform init`, `validate`, `plan`, and `apply` 

---

##  Cleanup
```
terminal
terraform init
terraform destroy 
```
---

## Note 
    For testing purpose you can remove the backend.tf file and cleanup the resources manually.

## References

   Terraform AWS Provider Docs

   Amazon RDS Documentation

   https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table