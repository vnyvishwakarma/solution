
variable "bucket_name" {
  description = "The name to assign to the bucket resource."
}

variable "acl" {
  description = "(Optional) The canned ACL to apply. Defaults to 'private'."
  default     = "private"
}


variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  default     = {}
}

variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  
  default     = false
}
variable "region" {
  description = "(Optional) If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee."
}
variable "versioning" {
  description = "Map containing versioning configuration."
  default     = {}
}