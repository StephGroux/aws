# # ---------------------------------------------------------------------------------------------------------------------
# # REQUIRED PARAMETERS
# # You must provide a value for each of these parameters.
# # ---------------------------------------------------------------------------------------------------------------------

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
  default     = "example_database_stage"
}

variable "instance_class" {
  description = "The db shape"
  type        = string
  default     = "db.t2.micro"
}  
