variable "secret_lookup" {
  description = <<EOT
Map of secret_lookup, attributes below
Required:
    - metadata (block):
        - annotations (optional)
        - generate_name (optional)
        - labels (optional)
        - name (optional)
        - namespace (optional)
Optional:
    - binary_data
EOT

  type = map(object({
    binary_data = optional(map(string))
    metadata = object({
      annotations   = optional(map(string))
      generate_name = optional(string)
      labels        = optional(map(string))
      name          = optional(string)
      namespace     = optional(string)
    })
  }))
}

