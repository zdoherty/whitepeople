provider "google" {
    project = "isaqt-1130"
    region = "us-central1"
}

resource "google_dns_managed_zone" "main" {
    name = "main-zone"
    dns_name = "whitepeoplesnitch.com."
    description = "lol k"
}

resource "google_dns_record_set" "redir" {
    name = "${google_dns_managed_zone.main.dns_name}"
    type = "A"
    ttl  = "43200"

    managed_zone = "${google_dns_managed_zone.main.name}"

    rrdatas = [ "104.197.175.21" ]
}

resource "google_dns_record_set" "www_redir" {
    name = "www.${google_dns_managed_zone.main.dns_name}"
    type = "A"
    ttl  = "43200"

    managed_zone = "${google_dns_managed_zone.main.name}"

    rrdatas = [ "104.197.175.21" ]
}
