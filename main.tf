resource "aws_ssm_parameter" "params" {
  count = length(var.params)
  name  = var.params[count.index].name
  type  = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.devopspractice.lol:8080", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.devopspractice.lol:8080", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.devopspractice.lol:8080", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.devopspractice.lol:8080", type = "String" } ,
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.devopspractice.lol:8080", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.devopspractice.lol:27017/catalogue", type = "String" },
    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.dispatch.rabbitmq_host", value = "rabbitmq-dev.devopspractice.lol", type = "String" },
    { name = "roboshop.dev.payment.cart_host", value = "<cart-dev.devopspractice.lol>", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "SecureString" },
    { name = "roboshop.dev.payment.user_host", value = "<user-dev.devopspractice.lol>", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "<rabbitmq-dev.devopspractice.lol>", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.shipping.cart.end_point", value = "<cart-dev.devopspractice.lol>:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "<mysql-dev.devopspractice.lol>", type = "String" }


  ]
}