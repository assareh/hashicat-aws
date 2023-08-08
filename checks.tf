check "http_200_health_check" {
  data "http" "catapp" {
    url = "http://${aws_eip.hashicat.public_dns}"
  }

  assert {
    condition     = data.http.catapp.status_code == 200
    error_message = "${data.http.catapp.url} returned an unhealthy status code"
  }
}
