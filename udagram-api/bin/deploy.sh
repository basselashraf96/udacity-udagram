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
eb deploy &&
eb setenv
AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_DEFAULT_REGION SECRET_ACCESS_KEY_ID=$AWS_SECRET_ACCESS_KEY JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME DB_PORT=$DB_PORT PORT=$PORT URL=$URL --profile default

