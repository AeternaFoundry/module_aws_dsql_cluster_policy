output "dsql_cluster_policies_bypass_policy_lockout_safety_check" {
  description = "Map of bypass_policy_lockout_safety_check values across all dsql_cluster_policies, keyed the same as var.dsql_cluster_policies"
  value       = { for k, v in aws_dsql_cluster_policy.dsql_cluster_policies : k => v.bypass_policy_lockout_safety_check if v.bypass_policy_lockout_safety_check != null }
}
output "dsql_cluster_policies_identifier" {
  description = "Map of identifier values across all dsql_cluster_policies, keyed the same as var.dsql_cluster_policies"
  value       = { for k, v in aws_dsql_cluster_policy.dsql_cluster_policies : k => v.identifier if v.identifier != null && length(v.identifier) > 0 }
}
output "dsql_cluster_policies_policy" {
  description = "Map of policy values across all dsql_cluster_policies, keyed the same as var.dsql_cluster_policies"
  value       = { for k, v in aws_dsql_cluster_policy.dsql_cluster_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "dsql_cluster_policies_policy_version" {
  description = "Map of policy_version values across all dsql_cluster_policies, keyed the same as var.dsql_cluster_policies"
  value       = { for k, v in aws_dsql_cluster_policy.dsql_cluster_policies : k => v.policy_version if v.policy_version != null && length(v.policy_version) > 0 }
}
output "dsql_cluster_policies_region" {
  description = "Map of region values across all dsql_cluster_policies, keyed the same as var.dsql_cluster_policies"
  value       = { for k, v in aws_dsql_cluster_policy.dsql_cluster_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

