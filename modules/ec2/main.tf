resource "aws_instance" "webserver" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name        = "webserver-${var.environment}"
    Managed_By  = "Terraform"
    Cost_Center = "DevOps"
    environment = var.environment
  }
}
