# Introduction to Terraform

This repository contains my studies and practice exercises from the [Terraform: The Complete Guide from Beginner to Expert](https://www.udemy.com/course/mastering-terraform-beginner-to-expert) course. Terraform is an open-source infrastructure as code software tool that enables you to safely and predictably create, change, and improve infrastructure.

## 🚀 Getting Started

### Prerequisites

Terraform installed on your machine
An AWS account
Basic understanding of cloud infrastructure concepts

### Installation

1. Clone this repository:

   ```
   git clone https://github.com/msvalandro/introduction-to-terraform.git
   cd introduction-to-terraform
   ```

2. Install Terraform following the official installation guide
3. Verify installation:
   ```
   terraform --version
   ```

## 🏃‍♂️ Instructions to Run

1. Configure environment variables:

   ```bash
   # Copy the example environment file
   cp .env.example .env

   # Edit .env with your specific values (API keys, region, etc.)
   # Then load the environment variables
   source .env
   ```

2. Navigate to the desired example directory:

   ```
   cd 01-benefits-iac
   ```

3. Initialize Terraform (first time only):

   ```
   terraform init
   ```

4. Plan your infrastructure changes:

   ```
   terraform plan
   ```

5. Apply the configuration:

   ```
   terraform apply
   # Type 'yes' when prompted to confirm
   ```

6. Destroy resources when finished:
   ```
    terraform destroy
    # Type 'yes' when prompted to confirm
   ```
