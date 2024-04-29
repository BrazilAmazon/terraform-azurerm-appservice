resource "azurerm_windows_web_app" "example" {
  for_each = var.appservice_windows
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  service_plan_id     = each.value.service_plan_id

  site_config {}
}
