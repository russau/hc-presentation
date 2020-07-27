## Terraform 

* Use Infrastructure as Code to provision and manage any cloud, infrastructure, or service. 

* Declarative language.

* Providers <a href="https://registry.terraform.io/" target="_blank">https://registry.terraform.io/</a>
  * *Cloud*: AWS, Azure, GCP, Alibaba, ...
  * *Infrastructure*: Chef, Consul, Docker, K8, Nomad, Vault, ...
  * *Network*: Akamai, Check Point, Cloudflare, DNS, HTTP, ...

Notes:

A provider is a plug in that makes available *resources* and *data sources*.  For example the AWS provider has an `aws_instance` resource and a `aws_ami` data source.