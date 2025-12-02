module "account_qa_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "saidireddy157+qa@gmail.com"
    AccountName               = "qa-test"
    ManagedOrganizationalUnit = "dev" 
    SSOUserEmail              = "saidireddy157@gmail.com"
    SSOUserFirstName          = "saidireddy"
    SSOUserLastName           = "qa"
  }

  account_tags = {
    "ABC:Owner"       = "saidireddy157+qa@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "qa"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "qa-team"
    change_reason       = "For POC Purpose"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "qa-server"

  
}