variable "project_id" {
  description = "STACKIT project ID to which the instance is associated."
  type        = string
}

variable "create_instance" {
  description = "Whether to create the Valkey instance."
  type        = bool
  default     = true
}

variable "name" {
  description = "Instance name."
  type        = string
}

variable "valkey_version" {
  description = "The Valkey service version, e.g. \"7\"."
  type        = string
}

variable "plan_name" {
  description = "The selected plan name."
  type        = string
}

variable "region" {
  description = "The resource region. If not defined, the provider region is used."
  type        = string
  default     = null
}

variable "parameters" {
  description = <<-EOT
    Optional configuration parameters. Common fields (all optional):
      - `sgw_acl`                : comma-separated CIDR list allowed to access the instance.
      - `enable_monitoring`      : enable monitoring.
      - `monitoring_instance_id` : STACKIT monitoring instance ID.
      - `graphite`               : Graphite server URL (host:port).
      - `metrics_frequency`      : metrics emission frequency in seconds.
      - `metrics_prefix`         : prefix for emitted metrics.
      - `max_disk_threshold`     : max disk threshold in MB.
      - `maxclients`             : maximum number of clients.
      - `maxmemory_policy`       : eviction policy (e.g. volatile-lru, noeviction).
      - `syslog`                 : list of syslog servers.
  EOT
  type = object({
    sgw_acl                = optional(string)
    enable_monitoring      = optional(bool)
    monitoring_instance_id = optional(string)
    graphite               = optional(string)
    metrics_frequency      = optional(number)
    metrics_prefix         = optional(string)
    max_disk_threshold     = optional(number)
    maxclients             = optional(number)
    maxmemory_policy       = optional(string)
    syslog                 = optional(list(string))
  })
  default = null
}
