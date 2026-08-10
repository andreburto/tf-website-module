
variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "domain_url" {
  type    = string
}

variable "file_list" {
  type    = list(map(string))
  default = [
    {
      source      = "index.html"
      type        = "text/html"
    },
    {
      source      = "error.html"
      type        = "text/html"
    }
  ]
}

variable "zone_id" {
  type    = string
}
