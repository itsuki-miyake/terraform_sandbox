import { Construct } from "constructs";
import { App, TerraformStack } from "cdktf";
import { GoogleProvider } from "@cdktf/provider-google/lib/provider";
import { ProjectIamBinding } from "@cdktf/provider-google/lib/project-iam-binding";

class MyStack extends TerraformStack {
  constructor(scope: Construct, id: string) {
    super(scope, id);

    const PROJECT_NAME = "xxx";

    new GoogleProvider(this, "google", {
      project: PROJECT_NAME,
    })

    new ProjectIamBinding(this, "cdktf-iambindig", {
      project: PROJECT_NAME,
      role: "roles/editor",
      members: [
        "user:xxx@xxx.co.jp",
      ]
    });
  }
}

const app = new App();
new MyStack(app, "test-cdktf");
app.synth();
