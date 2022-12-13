/**
 * Copyright 2022 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "global_network_association" {
  description = "Global association name"
  value       = try(google_compute_network_firewall_policy_association.default[0].id, null)
}

output "global_rules" {
  description = "Global rules."
  value       = try([for k in google_compute_network_firewall_policy_rule.default : k.id], null)
}

output "global_policy_name" {
  description = "Global network firewall policy name"
  value       = try(google_compute_network_firewall_policy.default[0].id, null)
}

output "regional_network_association" {
  description = "Global association name"
  value       = try(google_compute_region_network_firewall_policy_association.default[0].id, null)
}

output "regional_rules" {
  description = "Regional rules."
  value       = try([for k in google_compute_region_network_firewall_policy_rule.default : k.id], null)
}

output "regional_policy_name" {
  description = "Regional network firewall policy name"
  value       = try(google_compute_network_firewall_policy_rule.default[0].id, null)
}