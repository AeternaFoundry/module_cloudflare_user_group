resource "cloudflare_user_group" "user_groups" {
  for_each = var.user_groups

  account_id = each.value.account_id
  name       = each.value.name
  policies   = each.value.policies
}

