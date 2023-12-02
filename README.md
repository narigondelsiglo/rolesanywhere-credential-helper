# rolesanywhere-credential-helper
Docker image for AWS IAM Roles Anywhere Credential Helper

Setup [IAM Roles Anywhere](https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html) and populate the following environment values:
* TRUST_ANCHOR_ARN
* PROFILE_ARN
* ROLE_ARN
* CERTIFICATE_PATH
* PRIVATE_KEY_PATH

Make sure to mount one certificate files signed with the trusted CA and indicate the path in the env vars.
