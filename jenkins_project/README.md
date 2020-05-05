# HOW TO INSTALL JENKINS 
![jenkins logo on linux](https://user-images.githubusercontent.com/63379120/81092043-a79ce400-8ec5-11ea-9e3e-b2b9b80b3c55.jpg)

#### PREREQUISITES:
 
   - **1 VPC**
   - **6 Subnets**
     - 3 Private Subents
     - 3 Public Subnets
   - **Public subnets should have IGW attached to it** 
   - **Private subnets should have NG attached to it**
   - **Configure route tables**
   
   **To check if everything is configured properly, create ec2 instance, manually, on public subnet and ping www.google.com.**
  
 If everything is successful, you should have proper response  :+1:

<img width="909" alt="ec2 pings google" src="https://user-images.githubusercontent.com/63379120/81093957-7376f280-8ec8-11ea-8f8c-83c056387234.png">

**TO INSTALL JENKINS ON EC2 INSTANCE, FOLLOW THE STEPS BELOW &#8595;** **OR**


**Please refer null_resource.tf for more details**

```HCL
provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }

    inline = [
    ]
```

 
 **1. Jenkins is a Java application, so the first step is to install Java.**
 
 ```HCL
 "sudo yum install java-1.8.0-openjdk-devel -y",
```

**2. The next step is to enable the Jenkins repository.**
 ```HCL
 "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
```

**3. Add the repository to your system.**
 ```HCL
 "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
```

**4. Once the repository is enabled, install the latest stable version of Jenkins.**
  ```HCL
"sudo yum install jenkins -y",
```

**5. After the installation process is completed, start the Jenkins service.**
  ```HCL
 "sudo systemctl start jenkins",
```

**6. Enable the Jenkins service to start on system boot.**
 ```HCL
"sudo systemctl enable jenkins",
```
**7. This inline command string prints the output for Jenkins Initial Administrator Password.**
 ```HCL
"echo -e $(tput setaf 1 )'Jenkins initialAdminPassword: '$(tput sgr0) $(tput setaf 2)`
sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
```



&nbsp;



****<font size="+1">terraform apply -var-file jenkins.tfvars</font>****

<img width="1236" alt="Screen Shot 2020-05-04 at 9 09 21 PM" src="https://user-images.githubusercontent.com/63379120/81095609-dff2f100-8eca-11ea-9108-137354b6481f.png">

**http://your_ip_or_domain:8080**

![Screen Shot 2020-05-04 at 1 22 40 PM](https://user-images.githubusercontent.com/63379120/81095319-77a40f80-8eca-11ea-8c8f-ef0072f2ca14.png)





&nbsp;

**- To Set Up Jenkins, please follow the prompts**

![Screen Shot 2020-05-04 at 1 23 06 PM](https://user-images.githubusercontent.com/63379120/81095473-a8844480-8eca-11ea-9aa1-9c43bc44c5d9.png)


**Jenkins Dashboard**

![Screen Shot 2020-05-04 at 1 29 38 PM](https://user-images.githubusercontent.com/63379120/81095384-8db1d000-8eca-11ea-9d01-5aada3006538.png)

