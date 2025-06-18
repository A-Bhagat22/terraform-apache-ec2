# terraform-apache-ec2

# 🚀 Apache Web Server Deployment using Terraform on AWS

This project uses **Terraform** to provision an **EC2 instance** on AWS and install the **Apache HTTP Server** using a **user data script**. A simple HTML page is served through Apache, demonstrating Infrastructure as Code (IaC) and automation.

---

## 📂 Project Structure

terraform-apache-ec2/
├── main.tf # Terraform config to launch EC2 and install Apache
├── variables.tf # (Optional) Variables used in the Terraform code
├── outputs.tf # Output values like Public IP
├── README.md # Project documentation
└── screenshots/ # EC2 instance and browser output screenshots
├── ec2-instance.png
└── apache-page.png


---

## 🛠️ Technologies Used

- Terraform
- AWS EC2
- Apache HTTP Server
- Amazon Linux 2
- Shell scripting (User Data)

---

## ✅ Features

- EC2 instance created using Terraform
- Apache HTTP Server auto-installed using user data
- HTML content served from `/var/www/html`
- Public IP exposed as output

---

## ⚙️ How to Run

### 🔸 1. Prerequisites

- AWS CLI configured (`aws configure`)
- Terraform installed (`terraform -v`)
- Valid EC2 Key Pair created in AWS console
- Internet-facing security group allowing port 80 (HTTP)

---

### 🔸 2. Steps to Deploy

```bash
git clone https://github.com/A-Bhagat22/terraform-apache-ec2.git
cd terraform-apache-ec2

terraform init
terraform plan
terraform apply
