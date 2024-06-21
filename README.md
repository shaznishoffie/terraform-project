# Terraform Project
In this project, we will be using terraform to implement Infrastructure-as-Code (IaC)
on a Google Cloud Platform project.

This project would potentially be used as the infrastructure repository for other
projects in my Github.

## Setup
We are using a bash script `setup.sh` to run the following
1. Creation of a virtual environment for local development
2. Update `brew` and install packages in `brew_requirements.txt`
3. Update `pip` and install packages in `pip_requirements.txt`

Other requirements in this project
1. (Google Cloud SDK)[https://cloud.google.com/sdk]
2. A GCP project
3. GCP Service Account for terraform to run
