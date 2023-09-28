resource "null_resource" "example" {
  for_each = local.configuration
}
