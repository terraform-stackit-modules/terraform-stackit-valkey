output "instance_id" {
  description = "The ID of the Valkey instance (null when create_instance is false)."
  value       = var.create_instance ? stackit_valkey_instance.this[0].instance_id : null
}

output "plan_id" {
  description = "The resolved plan ID (null when create_instance is false)."
  value       = var.create_instance ? stackit_valkey_instance.this[0].plan_id : null
}

output "dashboard_url" {
  description = "The dashboard URL (null when create_instance is false)."
  value       = var.create_instance ? stackit_valkey_instance.this[0].dashboard_url : null
}
