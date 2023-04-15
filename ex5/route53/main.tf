resource "aws_route53_record" "record" {
  zone_id = "Z08747613MFS3WNPFXV8R"
  name    = "${var.component}-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}

