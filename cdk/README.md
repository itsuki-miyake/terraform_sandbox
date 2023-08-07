# cdk for terraform
https://github.com/cdktf/cdktf-provider-google

```bash
npm install --global cdktf-cli@latest
cdktf --version
# 0.17.3

mkdir test-cdktf && cd test-cdktf
cdktf init --template=typescript --local
# Note: By supplying '--local' option you have chosen local storage mode for storing the state of your stack.
# This means that your Terraform state file will be stored locally on disk in a file 'terraform.<STACK NAME>.tfstate' in the root of your project.
# ? Project Name test-cdktf
# ? Project Description A simple getting started project for cdktf.
# ? Do you want to start from an existing Terraform project? no
# ? Do you want to send crash reports to the CDKTF team? Refer to https://developer.hashicorp.com/terraform/cdktf/create-and-deploy/configuration-file#enable-crash-reporting-for-the-cli for more information no
# ? What providers do you want to use? google
# Note: You can always add providers using 'cdktf provider add' later on
# added 2 packages, and audited 57 packages in 1s

# 7 packages are looking for funding
#   run `npm fund` for details

# found 0 vulnerabilities

# added 303 packages, and audited 360 packages in 16s

# 37 packages are looking for funding
#   run `npm fund` for details

# found 0 vulnerabilities
# ========================================================================================================

#   Your cdktf typescript project is ready!

#   cat help                Print this message

#   Compile:
#     npm run get           Import/update Terraform providers and modules (you should check-in this directory)
#     npm run compile       Compile typescript code to javascript (or "npm run watch")
#     npm run watch         Watch for changes and compile typescript in the background
#     npm run build         Compile typescript

#   Synthesize:
#     cdktf synth [stack]   Synthesize Terraform resources from stacks to cdktf.out/ (ready for 'terraform apply')

#   Diff:
#     cdktf diff [stack]    Perform a diff (terraform plan) for the given stack

#   Deploy:
#     cdktf deploy [stack]  Deploy the given stack

#   Destroy:
#     cdktf destroy [stack] Destroy the stack

#   Test:
#     npm run test        Runs unit tests (edit __tests__/main-test.ts to add your own tests)
#     npm run test:watch  Watches the tests and reruns them on change

#   Upgrades:
#     npm run upgrade        Upgrade cdktf modules to latest version
#     npm run upgrade:next   Upgrade cdktf modules to latest "@next" version (last commit)

#  Use Providers:

#   You can add prebuilt providers (if available) or locally generated ones using the add command:

#   cdktf provider add "aws@~>3.0" null kreuzwerker/docker

#   You can find all prebuilt providers on npm: https://www.npmjs.com/search?q=keywords:cdktf
#   You can also install these providers directly through npm:

#   npm install @cdktf/provider-aws
#   npm install @cdktf/provider-google
#   npm install @cdktf/provider-azurerm
#   npm install @cdktf/provider-docker
#   npm install @cdktf/provider-github
#   npm install @cdktf/provider-null

#   You can also build any module or provider locally. Learn more https://cdk.tf/modules-and-providers

# ========================================================================================================

tree | tail -n 1
# 932 directories, 5199 files

npm install @cdktf/provider-google

cat package.json | grep google
# "@cdktf/provider-google": "^8.0.8",

vi main.ts

cdktf plan
# test-cdktf  Initializing the backend...
# test-cdktf  Initializing provider plugins...
#             - Reusing previous version of hashicorp/google from the dependency lock file
# test-cdktf  - Using previously-installed hashicorp/google v4.76.0

#             Terraform has been successfully initialized!

#             You may now begin working with Terraform. Try running "terraform plan" to see
#             any changes that are required for your infrastructure. All Terraform commands
#             should now work.

#             If you ever set or change modules or backend configuration for Terraform,
#             rerun this command to reinitialize your working directory. If you forget, other
#             commands will detect it and remind you to do so if necessary.
# test-cdktf  Terraform used the selected providers to generate the following execution
#             plan. Resource actions are indicated with the following symbols:
#               + create

#             Terraform will perform the following actions:

#               # google_project_iam_binding.cdktf-iambindig (cdktf-iambindig) will be created
#               + resource "google_project_iam_binding" "cdktf-iambindig" {
#                   + etag    = (known after apply)
#                   + id      = (known after apply)
#                   + members = [
#                       + "user:xxx@xxx.co.jp",
#                     ]
#                   + project = "xxx"
#                   + role    = "roles/editor"
#                 }

#             Plan: 1 to add, 0 to change, 0 to destroy.

#             ─────────────────────────────────────────────────────────────────────────────

#             Saved the plan to: plan

#             To perform exactly these actions, run the following command to apply:
#                 terraform apply "plan"
```



# cdktf plan
```bash
tree cdktf.out -a
# .
# ├── manifest.json
# └── stacks
#     └── test-cdktf
#         ├── .terraform
#         │   ├── providers
#         │   │   └── registry.terraform.io
#         │   │       └── hashicorp
#         │   │           └── google
#         │   │               └── 4.76.0
#         │   │                   └── linux_amd64 -> /home/miyakei/.terraform.d/plugin-cache/registry.terraform.io/hashicorp/google/4.76.0/linux_amd64
#         │   └── terraform.tfstate
#         ├── .terraform.lock.hcl
#         ├── cdk.tf.json
#         └── plan
```
