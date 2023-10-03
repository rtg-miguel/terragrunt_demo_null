locals{
  decoded_configuration = yamldecode(file(var.configuration_file))
  configuration = {for index, entry in local.decoded_configuration:
    index => {
      name: index
      description: "this description can be referenced from the outputs"
    }
  }
}
