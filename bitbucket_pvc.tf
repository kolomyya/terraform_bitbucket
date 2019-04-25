resource "kubernetes_persistent_volume_claim" "bitbucketb-pvc" {

  metadata {
    name      = "bitbucket-pvc"
    namespace = "test"

    labels {
      app = "bitbucket-deployment"
    }
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests {
        storage = "5Gi"
      }
    }
  }
}