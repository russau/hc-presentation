## Terraform 

* Input Variables, Interpolation
* Resource Dependencies

```
variable "region" {
  default = "ap-southeast-2"
}

resource "aws_iam_instance_profile" "decrypt_profile" {
  name = "decrypt_profile_${var.region}"
  role = aws_iam_role.cert_decrypt_role.name
}

resource "aws_instance" "web1" {
  ami                    = data.aws_ami.nginx-demo.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.presentation-subnet-public-1.id
  vpc_security_group_ids = [aws_security_group.web-open.id]
}
```