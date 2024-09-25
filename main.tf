# resource "google_storage_bucket" "my-bucket" {
#   name          = "tt-github-nit-9099"
#   location      = "US"
#   force_destroy = true
#   project = "eco-hangar-381618"
#   public_access_prevention = "enforced"
# }

resource "random_id" "default" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name     = "${random_id.default.hex}-terraform-remote-backend"
  location = "US"
 project = "eco-hangar-381618"
  force_destroy               = false
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }
}

# from flask import Flask

# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return 'Hello, Cloud Run!'

# if __name__ == '__main__':
#     app.run(host='0.0.0.0', port=8080)
