## Terraform 

* Output values
* View with `terraform output`
* Teams share outputs via `terraform_remote_state` data source

```
output "web_certificate_pem" {
  value = acme_certificate.certificate.certificate_pem
}
```