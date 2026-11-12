# Labs

This section documents the practical networking labs I've completed during my CoderCo DevOps Bootcamp.

## Completed Labs

# Lab 1: Deploying an NGINX Web Server on AWS EC2

## Objective

The goal of this lab was to deploy a web server in the cloud using AWS EC2 and Ubuntu Linux.

I wanted to understand how to connect to a remote server, configure network access, install NGINX and access the web server through a browser.

## Commands Used

**Connecting to my EC2 instance using SSH:**

```bash
ssh -i my-key.pem ubuntu@PUBLIC_IP
```

**Updating Ubuntu packages:**

```bash
sudo apt update
```

**Installing NGINX:**

```bash
sudo apt install nginx -y
```

**Checking the NGINX service:**

```bash
sudo systemctl status nginx
```

## Output

I successfully deployed an Ubuntu EC2 instance on AWS.

After configuring the security group to allow HTTP traffic on port 80, I installed NGINX and accessed the default welcome page using my server's public IP address.

This confirmed that my web server was working.

## Challenges

One problem I encountered was connecting to my EC2 instance through the AWS browser console.

I tried several times but couldn't establish a connection.

Instead, I decided to use SSH through my terminal. After locating my private key, I successfully connected to my server.

This taught me the importance of trying different troubleshooting methods when something doesn't work.

## What I Learned

- How to deploy a virtual server using AWS EC2.
- How to connect to a remote Linux server using SSH.
- How security groups control incoming network traffic.
- How to install and check NGINX.
- How HTTP allows browsers to communicate with web servers.
- How to troubleshoot server connection issues.

This lab helped me understand how cloud infrastructure and networking work together.

