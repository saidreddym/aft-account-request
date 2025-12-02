module "account_dev_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "saidireddy157+account11@gmail.com"
    AccountName               = "dev-test"
    ManagedOrganizationalUnit = "dev" 
    SSOUserEmail              = "saidireddy157@gmail.com"
    SSOUserFirstName          = "saidireddy"
    SSOUserLastName           = "test"
  }

  account_tags = {
    "ABC:Owner"       = "saidireddy157+account1@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "dev-team"
    change_reason       = "For POC Purpose"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  # account_customizations_name = "DEV-Environment"

  
}