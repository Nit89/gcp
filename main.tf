resource "google_storage_bucket" "my-bucket" {
  name          = "tt-github-nit-9099"
  location      = "US"
  force_destroy = true
  project = "eco-hangar-381618"
  public_access_prevention = "enforced"
}



# from flask import Flask

# app = Flask(__name__)

# @app.route('/')
# def hello_world():
#     return 'Hello, Cloud Run!'

# if __name__ == '__main__':
#     app.run(host='0.0.0.0', port=8080)
