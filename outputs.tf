output "emr_instance_fleets_id" {
  description = "Map of id values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emr_instance_fleets_cluster_id" {
  description = "Map of cluster_id values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "emr_instance_fleets_instance_type_configs" {
  description = "Map of instance_type_configs values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.instance_type_configs if v.instance_type_configs != null && length(v.instance_type_configs) > 0 }
}
output "emr_instance_fleets_launch_specifications" {
  description = "Map of launch_specifications values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.launch_specifications if v.launch_specifications != null && length(v.launch_specifications) > 0 }
}
output "emr_instance_fleets_name" {
  description = "Map of name values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "emr_instance_fleets_provisioned_on_demand_capacity" {
  description = "Map of provisioned_on_demand_capacity values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.provisioned_on_demand_capacity if v.provisioned_on_demand_capacity != null }
}
output "emr_instance_fleets_provisioned_spot_capacity" {
  description = "Map of provisioned_spot_capacity values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.provisioned_spot_capacity if v.provisioned_spot_capacity != null }
}
output "emr_instance_fleets_region" {
  description = "Map of region values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "emr_instance_fleets_target_on_demand_capacity" {
  description = "Map of target_on_demand_capacity values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.target_on_demand_capacity if v.target_on_demand_capacity != null }
}
output "emr_instance_fleets_target_spot_capacity" {
  description = "Map of target_spot_capacity values across all emr_instance_fleets, keyed the same as var.emr_instance_fleets"
  value       = { for k, v in aws_emr_instance_fleet.emr_instance_fleets : k => v.target_spot_capacity if v.target_spot_capacity != null }
}

