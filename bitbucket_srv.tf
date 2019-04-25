resource "kubernetes_service" "bitbucket-service" {
  metadata {
    name      = "bitbucket-service"
    namespace = "${var.namespace}"
  }

  spec {
    port {
      port        = 80
      target_port = 7990
    }

    selector {
      app = "bitbucket-deployment"
    }

    type = "LoadBalancer"
  }
}