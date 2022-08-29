variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "The database name"
  type        = string
}

variable "instance_class" {
  description = "the db shape"
  type        = string
}





