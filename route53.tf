resource "aws_route53_record" "mysql" {
  zone_id = "Z0547409165EGAKUG3EH3"
  name    = "mysql-${var.ENV}.roboshopshopping"
  type    = "CNAME"
  ttl     = 10
  records = [aws_db_instance.mysql.address]
}