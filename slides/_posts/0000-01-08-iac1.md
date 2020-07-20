## Terraform - Infrastructure as Code

``` code
resource "aws_vpc" "presentation-vpc" {
    cidr_block = "10.0.0.0/16"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    
    tags = {
        Name = "presentation-vpc"
    }
}
```

Notes:

Terraform gives us the ability to define resources from a lot of different providers into files.  Now that we have resources in code we can start treating it like code.  It can be source controlled and versioned.

With our infrastructure in a git repository we can build CI/CD pipelines to monitor to updates and use Terraform to make those updates to environments.  We've now automated a lot of the configuration that was previously done in front of a user interfaces.  Security and governance teams are also interested the history and configuration of infrastructure - we now have this just as we have it for application source.