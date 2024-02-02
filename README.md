# Project: Juiceshop on AWS with Terraform

## Description:

🍹 Juiceshop on AWS using Terraform

This project automates the deployment of the OWASP Juice Shop, a deliberately insecure web application, on Amazon Web Services (AWS) using Terraform. Juiceshop is an excellent tool for practicing web application security testing and learning about common vulnerabilities in a safe environment.

## Key Features:

Infrastructure as Code (IaC): Deploy and manage the entire Juiceshop infrastructure on AWS using Terraform, ensuring consistency and repeatability.
Security by Design: Leverage AWS security features to create a secure environment for hosting Juiceshop. Explore and understand how to configure security groups, subnets, and more.
Scalability: Learn how to design the Juiceshop deployment for scalability, allowing for easy expansion to handle varying workloads.
Monitoring and Logging: Implement AWS monitoring and logging solutions to gain insights into the application's performance and security.
Getting Started:

Clone this repository to your local machine.
Update Terraform variables in main.tf with your AWS credentials and configuration.
Run terraform init, terraform plan, and terraform apply to deploy Juiceshop on AWS.
Access the deployed Juiceshop instance and start exploring security challenges!
Contributing:


## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

Make sure you have the following tools installed:

- [Terraform](https://www.terraform.io/)
- [AWS CLI](https://aws.amazon.com/cli/)

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/xotong/terraform-aws-juiceshop.git

2. Change into the project directory:
   ```bash
   cd terraform-aws-juiceshop

3. Initialize the Terraform configuration:
   ```bash
   terraform init

4. Update the Terraform variables in AWS_Keys_And_Region.tf with your AWS credentials and configuration.

5. Apply the Terraform configuration:
   ```bash
   terraform apply
   
## Usage

Once the Terraform apply process is complete, you can access the deployed Juice Shop instance and start exploring the security challenges. The public IP of the instance will be displayed in the Terraform output.

   ```bash
   Outputs:

   HostIP = "http://X.X.X.X"
   ```

Visit the Juice Shop at http://X.X.X.X in your web browser, replacing X.X.X.X with the actual public IP.

## Contributing

Contributions are welcome! If you find any issues or have improvements to suggest, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
