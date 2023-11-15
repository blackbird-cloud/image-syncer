# image-syncer

Small docker image syncer from public registry and private ECR registry.
Based on `skopeo` and used by Blackbird Cloud Privatize service

## Usage

```bash
# ./script.sh SOURCE_IMAGE TARGET_REGISTRY TARGET_IMAGE
docker run blackbirdcloud/image-syncer ./script.sh blackbirdcloud/terraform-toolkit:0.0.8 xxxx.dkr.ecr.us-west-2.amazonaws.com terraform-toolkit
```