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
  description = <<-EOT
  {
   "type": "api",
   "purpose": "autocomplete",
   "data": "/api/v1/autocomplete/billingid",
   "description": "The alphanumeric ID of the billing account this project belongs to."
}
EOT
}

variable "org_id" {
  type        = string
  description = <<-EOT
  {
   "type": "api",
   "purpose": "autocomplete",
   "data": "/api/v1/autocomplete/organizationID",
   "description": "The numeric ID of the organization this project belongs to. Changing this forces a new project to be created."
}
EOT
}

// optional variables
variable "auto_create_network" {
  type        = bool
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "true",       
             "false"
        ],
   "description": "Create the 'default' network automatically."
}
EOT
  default     = false
}

variable "service_apis" {
  type        = list(string)
  description = "The list of apis to be enabled in the project"
  default     = []
}

variable "is_host_project" {
  type        = bool
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "true",       
             "false"
        ],
   "description": "Set to true if this project should be a host project; both this and is_service_project cannot be true"
}
EOT
  default     = false
}

variable "is_service_project" {
  type        = bool
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "true",       
             "false"
        ],
   "description": "Set to true if this project should be a service project; both this and is_host_project cannot be true"
}
EOT
  default     = false
}

variable "host_project_id" {
  type        = string
  description = "the host project id; only needed when is_service_project is set to true"
  default     = ""
}
