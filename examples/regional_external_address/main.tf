/**
 * Copyright 2019 Google LLC
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

# [START compute_external_ip_create]
module "address" {
  source       = "terraform-google-modules/address/google"
  version      = "3.0.0"
  project_id   = var.project_id # Replace this with your service project ID in quotes
  region       = "europe-west1"
  address_type = "EXTERNAL"
  names = [
    "regional-external-ip-address-1",
    "regional-external-ip-address-2",
    "regional-external-ip-address-3"
  ]
}
# [END compute_external_ip_create]

