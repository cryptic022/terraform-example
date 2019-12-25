variable "user-bucket-name" {
  type        = string
  description = "User bucket which we will create as part of user module"
}

variable "game-score-dynamo-name" {
  type        = string
  description = "Dynamo DB which we will create as part of user module"
}
