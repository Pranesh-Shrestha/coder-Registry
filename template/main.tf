terraform {
  required_providers {
    coder = {
      source = "coder/coder"
    }
  }
}

# This is the registry component download you want to observe.
# During `terraform init`, Terraform hits registry.coder.com to
# resolve and fetch this module's source archive.
module "code-server" {
  source   = "registry.coder.com/coder/code-server/coder"
  version  = "~> 1.0"
  agent_id = "dummy-agent-id" # placeholder; fine for init/validate
}
