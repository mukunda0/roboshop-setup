data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}


resource "aws_instance" "frontend" {
  ami                    = data.aws_ami.ami.image_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z08747613MFS3WNPFXV8R"
  name    = "frontend-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "cart" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "cart-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "catalogue-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z08747613MFS3WNPFXV8R"
  name    = "user-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "shipping-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "payment" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "payment-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "mongodb" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "mongodb-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z08747613MFS3WNPFXV8R"
  name    = "mysql-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_route53_record" "redis" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "redis-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "redis" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "redis"
  }
}


resource "aws_instance" "rabbitmq" {
  ami                    = "ami-0089b8e98cd95257d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-04431cb92998376ef"]
  tags = {
    Name = "rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id =  "Z08747613MFS3WNPFXV8R"
  name    = "rabbitmq-dev.devops71a.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

output "rabbitmq" {
  value = "Public IP address  = ${aws_instance.rabbitmq.public_ip}"
}