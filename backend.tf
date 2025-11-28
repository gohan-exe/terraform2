terraform {
  backend "s3" {
    bucket       = "meu-bucket-teste-luccas-perigoso"
    key          = "state.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
