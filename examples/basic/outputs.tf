output "instance_id" {
  description = "The ID of the Valkey instance created by the example."
  value       = module.valkey.instance_id
}

output "credential_ids" {
  description = "The credential IDs created by the example."
  value       = module.valkey.credential_ids
}
