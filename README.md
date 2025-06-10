# Host a Static Website using Docker and Terraform

This project demonstrates how to host a static HTML website in a Docker container, with **Terraform** used as Infrastructure-as-Code (IaC) to automate container provisioning and deployment.

## Features

- Built with **Terraform** using the [Kreuzwerker Docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest)
- Custom **Nginx Docker image** built with static website content
- Static files bundled directly into the image for portability
- Easily deployable via `terraform apply`
- No need for external volumes — image contains everything

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- WSL2 (if you're using Windows)

## Project Structure

```bash
├── malock-site/                # Static website files
│   ├── css/                    # Stylesheets
│   ├── fonts/                  # Font files
│   ├── images/                 # Images used in the site
│   ├── js/                     # JavaScript files
│   ├── favicon.ico            # Site favicon
│   ├── index.html             # Homepage
│   └── page.html              # Additional static page
├── Dockerfile                 # Builds custom Nginx image
├── main.tf                    # Terraform configuration
├── .terraform.lock.hcl        # (Auto-generated)
└── README.md
```

##  Getting Started

### 1. Clone this repo

```bash
git clone https://github.com/rkwelle/static-site-terraform-docker.git
cd static-site-terraform-docker
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Deploy the container

```bash
terraform apply
```

### 4. Access the website
Open your browser and go to:  
👉 [http://localhost:8080](http://localhost:8080)


### 5. Shutdown!

```bash
terraform destroy