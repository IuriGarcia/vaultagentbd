vault {
  address = "http://127.0.0.1:8200"
}

auto_auth {
  method "approle" {
    config {
      role_id_file_path = "/home/devops/Documents/vaultstudy/agent/my-role-id"
      secret_id_file_path = "/home/devops/Documents/vaultstudy/agent/my-secret-id"
    }
  }
  sink "file" {
      config = {
          path = "/home/devops/Documents/vaultstudy/vault-token"
      }
  }
}

template {
  source      = "/home/devops/Documents/vaultstudy/template/template.ctmpl"
  destination = "/home/devops/Documents/vaultstudy/agent/output.txt"
}
### git