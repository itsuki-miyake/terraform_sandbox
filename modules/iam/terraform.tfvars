project_id = ""
gcp_region = "asia-northeast1"

# 通常 Binding
simple_bindings = {
  "roles/admin" = [
    "user:user01@sample.com",
  ]
  "roles/editor" = [
    "user:user02@sample.com",
    "group:group02@sample.com",
    "serviceAccount:sv-account02@sample.iam.gserviceaccount.com",
  ]
  "roles/reader" = [
    "user:user03@sample.com",
    "group:group03@sample.com",
    "serviceAccount:sv-account03@sample.iam.gserviceaccount.com",
  ]
}

# 条件付き Binding
conditional_bindings = [
  {
    role = "roles/admin"
    members = [
      "user:user04@sample.com",
      "group:group04@sample.com",
    ]
    title       = ""
    description = ""
    expression  = "request.time < timestamp(\"2023-01-01T00:00:00Z\")"
  },
  {
    role = "roles/editor"
    members = [
      "user:user05@sample.com",
      "group:group05@sample.com",
    ]
    title       = ""
    description = ""
    expression  = "request.time < timestamp(\"2023-01-01T00:00:00Z\")"
  },
]
