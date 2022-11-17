module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "amrutaca+sandbox@amazon.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "AFT OU"
    SSOUserEmail              = "amrutaca+sandbox@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}


module "second_sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "amrutaca+sandbox2@amazon.com"
    AccountName               = "sandbox-aft2"
    ManagedOrganizationalUnit = "AFT OU"
    SSOUserEmail              = "amrutaca+sandbox2@amazon.com"
    SSOUserFirstName          = "Sandbox2"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
    azs = "us-east-1a,us-east-1b,us-east-1c"
    vpc_cidr = "10.0.0.0/16"
    vpc_private_subnets = "10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
    vpc_public_subnets = "10.0.101.0/24,10.0.102.0/24,10.0.103.0/24"
  }

  account_customizations_name = "second_sandbox"
}
