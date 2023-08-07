project_id = ""
region     = ""

# 通常 Binding
simple_bindings = {
  "roles/editor" = [
    "user:xx@xx.com",
  ]
  "roles/xxx"    = [
    "user:xx@xx.com",
    "group:xx@xx.com",
    "serviceAccount:xx@xx.iam.gserviceaccount.com",
  ]
  "roles/xxx"    = [
    "user:xx@xx.com",
    "group:xx@xx.com",
    "serviceAccount:xx@xx.iam.gserviceaccount.com",
  ]
  "roles/xxx"    = [
    "user:xx@xx.com",
    "group:xx@xx.com",
    "serviceAccount:xx@xx.iam.gserviceaccount.com",
  ]
}

# 条件付き Binding
conditional_bindings = [
  {
    role = "roles/edior"
    member = [
      "",
      "",
    ]
    title       = ""
    description = ""
    expression  = "request.time < timestamp(\"2023-01-01T00:00:00Z\")"
  },
  {
    role = "roles/xxx"
    member = [
      "",
      "",
    ]
    title       = ""
    description = ""
    expression  = "request.time < timestamp(\"2023-01-01T00:00:00Z\")"
  },
  {
    role = "roles/xxx"
    member = [
      "",
      "",
    ]
    title       = ""
    description = ""
    expression  = "request.time < timestamp(\"2023-01-01T00:00:00Z\")"
  },
]
