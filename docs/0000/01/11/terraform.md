## Terraform - Data Sources

```
data "github_release" "terraform" {
  repository  = "terraform"
  owner       = "hashicorp"
  retrieve_by = "latest"
}
```