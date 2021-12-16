// required variables
variable "name" {
  type        = string
  description = "this name will be used as the project name"
}

variable "project_id_prefix" {
  type        = string
  description = "this will be the prefix for the project_id, project id will be generated like <prefix>-<453322>"
}

variable "billing_account" {
  type        = string
  description = "The alphanumeric ID of the billing account this project belongs to. The user or service account performing this operation with Terraform must have at minimum Billing Account User privileges (roles/billing.user) on the billing account."
}

// optional variables
variable "org_id" {
  type        = string
  description = "The numeric ID of the organization this project belongs to. Changing this forces a new project to be created. Only one of org_id or folder_id may be specified. If the org_id is specified then the project is created at the top level. Changing this forces the project to be migrated to the newly specified organization."
  default     = null
}

variable "folder_id" {
  type        = string
  description = "The numeric ID of the folder this project should be created under. Only one of org_id or folder_id may be specified. If the folder_id is specified, then the project is created under the specified folder. Changing this forces the project to be migrated to the newly specified folder."
  default     = null
}

variable "auto_create_network" {
  type        = bool
  description = "Create the 'default' network automatically. Default false. If set to false, the default network will be deleted. Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily."
  default     = true
}