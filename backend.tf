terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "phillhocking"

    workspaces {
      name = "tf-eks-learning-cluster"
    }
  }
}
