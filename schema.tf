# resource "null_resource" "schema" {

#     # This make sures that this null_resource will only be executed post the creation of the RDS only    
#     depends_on = [aws_db_instance.mysql]

#       provisioner "local-exec" {
#         command = <<EOF
#             cd /tmp
#             curl -s -L -o /tmp/mysql.zip "https://github.com/stans-robot-project/mysql/archive/main.zip"
#             unzip -o mysql.zip
#             cd mysql-main
#             mysql -h ${aws_db_instance.mysql.address}  -uadmin1 -pRoboshop1 < shipping.sql
#         EOF
#     }
# }

resource "aws_route53_record" "www" {
  zone_id = Z0547409165EGAKUG3EH3
  name    = "mysql-${var.ENV}.roboshopping"
  type    = "A"
  ttl     = 300
  records = [aws_db_instance.mysql.address]
}