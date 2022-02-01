mkdir .elasticbeanstalk &&
echo "branch-defaults:
  default:
    environment: Basseludagram-env
environment-defaults:
  Basseludagram-env:
    branch: null
    repository: null
deploy:
  artifact: www/Archive.zip
global:
  application_name: bassel-udagram
  default_ec2_keyname: null
  default_platform: Node.js 14 running on 64bit Amazon Linux 2
  default_region: us-east-1
  include_git_submodules: true
  instance_profile: null
  platform_name: null
  platform_version: null
  profile: null
  sc: null
  workspace_type: Application
  " >> .elasticbeanstalk/config.yml &&
eb deploy

