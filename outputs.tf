output "user_groups_id" {
  description = "Map of id values across all user_groups, keyed the same as var.user_groups except keys with no id are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_groups_account_id" {
  description = "Map of account_id values across all user_groups, keyed the same as var.user_groups except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "user_groups_created_on" {
  description = "Map of created_on values across all user_groups, keyed the same as var.user_groups except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "user_groups_modified_on" {
  description = "Map of modified_on values across all user_groups, keyed the same as var.user_groups except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "user_groups_name" {
  description = "Map of name values across all user_groups, keyed the same as var.user_groups except keys with no name are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "user_groups_policies" {
  description = "Map of policies values across all user_groups, keyed the same as var.user_groups except keys with no policies are omitted"
  value       = { for k, v in cloudflare_user_group.user_groups : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

