## Terraform - Data Sources

```
data "aws_ami" "nginx-demo" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = ["nginx-demo-*"]
  }
}
```