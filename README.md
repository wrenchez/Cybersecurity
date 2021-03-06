# ELK Project
 ## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ELK Project drawio](https://user-images.githubusercontent.com/96381889/147139303-c3422642-8c06-46c8-9f28-bd0def956206.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - filebeat-playbook.yml
  - install-elk.yml
  - metricbeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- Load balancers defend an organization from a distributed denial-of-service(DDoS), it decides which server can handle traffic removing unhealthy servers until it is restored.  A jump box or jump server protects your virtual machines from public exposure.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system performance.
- Filebeat monitors log files, collects log events and forwards them to Elasticsearch for indexing.
-Metricbeat records metrics and statistics from the operating system and services running on the servers.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4  | Linux  Ubuntu 18.04          |
| Web-1 (DVWA)   |   VM       |    10.0.0.5    |      Linux Ubuntu 18.04            |
| Web-2  (DVWA)  |    VM      |    10.0.0.6        |       Linux Ubuntu 18.04           |
| Web-3 (DVWA)   |VM        | 10.0.0.8   | Linux Ubuntu 18.04
| Elk-VM   |        ELK-Stack    |   10.1.0.4   |Linux Ubuntu 18.04

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- My home IP address

Machines within the network can only be accessed by Port 22.
- Jump Box VM 10.0.0.4
- Web1 VM 10.0.0.5
- Web2 VM 10.0.0.6
- Web3 VM 10.0.0.8
- ELK VM 10.1.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No            | My home IP address |
|     DVWA VMs    |       No              |         10.0.0.4            |
|       ELK VM   |  No                   |     10.0.0.4                 |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
Ansible playbooks are portable meaning they can be used anywhere and are repeatable, saving you time and effort.

The playbook implements the following tasks:
- Install docker.io
- Install python3-pip
- Install docker module
- Increase virtual memory
- Download and launch docker elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![elk docker ps](https://user-images.githubusercontent.com/96381889/147140588-635401f9-1174-43c2-bf1a-8edf09d20167.png)


### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.0.5
- Web-2 10.0.0.6
- Web-3 10.0.0.8


We have installed the following Beats on these machines:
- filebeat
- metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing. Metricbeat collects metrics from the operating system and from services running on the server. Metricbeat takes the metrics and statistics that it collects and ships them to the output that you specify, such as Elasticsearch or Logstash. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-playbook.yml and metricbeat-playbook.yml file to /etc/ansible/roles
- Update the /etc/ansible/hosts file to include the webserver and elk IPs..10.0.0.5,10.0.0.6,10.0.0.8, 10.1.0.4
- Update the metricbeat-config.yml and filebeat-config.yml files to include which hosts to run the playbook on ansible.
- Run the playbook, and navigate to Kibana to check that the installation worked as expected.

- _Which file is the playbook? Where do you copy it?_
- install-elk.yml is copied to /etc/ansible
- filebeat-playbook.yml is copied to /etc/ansible/roles
- metricbeat-playbook.yml is copied to /etc/ansible/roles
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- Update /etc/ansible/hosts, you configure the IPs for each service. DVWA is under webservers and ELK stack is under elk. In the playbook files, you can designate which host to run the playbook on ansible
- _Which URL do you navigate to in order to check that the ELK server is running?
http://[ELK VM IP]:5601/app/kibana
_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the 
- ssh azureuser@jumpbox public IP
- sudo docker container list -a
- sudo docker start "container ID"
- sudo docker attach "container ID"
- cd /etc/ansible
- ansible-playbook install-elk.yml
- cd /etc/ansible/roles
- ansible-playbook filebeat-playbook.yml
- ansible-playbook metricbeat-playbook.yml
-navigate to http://[elk vm public ip]:5601/app/kibana to verify that the playbooks worked
