variable "user_groups" {
  description = <<EOT
Map of user_groups, attributes below
Required:
    - account_id
    - name
Optional:
    - policies
EOT

  type = map(object({
    account_id = string
    name       = string
    policies = optional(list(object({
      access = string
      permission_groups = list(object({
        id = string
      }))
      resource_groups = list(object({
        id = string
      }))
    })))
  }))
}

