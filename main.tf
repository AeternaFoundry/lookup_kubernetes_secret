data "kubernetes_secret" "secret_lookup" {
  for_each = var.secret_lookup

  binary_data = each.value.binary_data

  metadata {
    annotations   = each.value.metadata.annotations
    generate_name = each.value.metadata.generate_name
    labels        = each.value.metadata.labels
    name          = each.value.metadata.name
    namespace     = each.value.metadata.namespace
  }
}

