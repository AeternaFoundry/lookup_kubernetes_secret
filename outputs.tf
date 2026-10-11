output "secret_lookup_id" {
  description = "Map of id values across all secret_lookup, keyed the same as var.secret_lookup except keys with no id are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secret_lookup_binary_data" {
  description = "Map of binary_data values across all secret_lookup, keyed the same as var.secret_lookup except keys with no binary_data are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => v.binary_data if v.binary_data != null && length(v.binary_data) > 0 }
  sensitive   = true
}
output "secret_lookup_data" {
  description = "Map of data values across all secret_lookup, keyed the same as var.secret_lookup except keys with no data are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "secret_lookup_immutable" {
  description = "Map of immutable values across all secret_lookup, keyed the same as var.secret_lookup except keys with no immutable are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => v.immutable if v.immutable != null }
}
output "secret_lookup_metadata" {
  description = "Map of metadata values across all secret_lookup, keyed the same as var.secret_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => one(v.metadata) if v.metadata != null && length(v.metadata) > 0 }
}
output "secret_lookup_type" {
  description = "Map of type values across all secret_lookup, keyed the same as var.secret_lookup except keys with no type are omitted"
  value       = { for k, v in data.kubernetes_secret.secret_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

