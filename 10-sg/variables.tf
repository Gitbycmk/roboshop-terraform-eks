variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "sg_names" {
  default =  [
        # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        #"catalogue", "user", "cart", "shipping", "payment",
        # frontend
        #"frontend",
        # bastion
        "bastion",
        # Frontend load balancer
        "ingress_lb",
        # Backend ALB
        #"backend_alb",
        "open_vpn",
        "eks_control_plane",
        "eks_node"
    ]
}