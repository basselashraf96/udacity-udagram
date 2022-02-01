## Pipeline Process

### Continuous Integration

#### GitHub

GitHub Repository is used to store code and to be trigger CircleCI automated process.

#### CircleCI

CircleCI uses the configuartion file to know the scripts to be ran. We have to scripts here, one for building and deploying the frontend,
and the other for building and deploying the backend.

## Front End Scripts

- Build the code.
- Upload built folder to S3 Bucket

## Back End Scripts

- Build the code.
- Upload built folder to EBS Enviroment.
