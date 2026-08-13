variable "emr_instance_fleets" {
  description = <<EOT
Map of emr_instance_fleets, attributes below
Required:
    - cluster_id
Optional:
    - name
    - region
    - target_on_demand_capacity
    - target_spot_capacity
    - instance_type_configs (block):
        - bid_price (optional)
        - bid_price_as_percentage_of_on_demand_price (optional)
        - configurations (optional, block):
            - classification (optional)
            - properties (optional)
        - ebs_config (optional, block):
            - iops (optional)
            - size (required)
            - type (required)
            - volumes_per_instance (optional)
        - instance_type (required)
        - weighted_capacity (optional)
    - launch_specifications (block):
        - on_demand_specification (optional, block):
            - allocation_strategy (required)
        - spot_specification (optional, block):
            - allocation_strategy (required)
            - block_duration_minutes (optional)
            - timeout_action (required)
            - timeout_duration_minutes (required)
EOT

  type = map(object({
    cluster_id                = string
    name                      = optional(string)
    region                    = optional(string)
    target_on_demand_capacity = optional(number)
    target_spot_capacity      = optional(number)
    instance_type_configs = optional(list(object({
      bid_price                                  = optional(string)
      bid_price_as_percentage_of_on_demand_price = optional(number)
      configurations = optional(list(object({
        classification = optional(string)
        properties     = optional(map(string))
      })))
      ebs_config = optional(list(object({
        iops                 = optional(number)
        size                 = number
        type                 = string
        volumes_per_instance = optional(number)
      })))
      instance_type     = string
      weighted_capacity = optional(number)
    })))
    launch_specifications = optional(object({
      on_demand_specification = optional(list(object({
        allocation_strategy = string
      })))
      spot_specification = optional(list(object({
        allocation_strategy      = string
        block_duration_minutes   = optional(number)
        timeout_action           = string
        timeout_duration_minutes = number
      })))
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

