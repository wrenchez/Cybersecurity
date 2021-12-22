# ELK Project
 ## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![ELK Project drawio](https://user-images.githubusercontent.com/96381889/147139303-c3422642-8c06-46c8-9f28-bd0def956206.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - filebeat-playbook.yml

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
| Web-1    |   VM       |    10.0.0.5    |      Linux Ubuntu 18.04            |
| Web-2    |    VM      |    10.0.0.6        |       Linux Ubuntu 18.04           |
| Web-3    |VM        | 10.0.0.8   | Linux Ubuntu 18.04
| Elk-VM   |        ELK-Stack    |   10.1.0.4   |Linux Ubuntu 18.04

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 52.165.192.63

Machines within the network can only be accessed by Port 22.
- Jump Box VM 10.0.0.4
- Web1 VM 10.0.0.5
- Web2 VM 10.0.0.6
- Web3 VM 10.0.0.8
- ELK VM 10.1.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | No            | 52.165.192.63  |
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
- 10.0.0.5
- 10.0.0.6
- 10.0.0.8
- 10.1.0.4

We have installed the following Beats on these machines:
- filebeat-7.4.0-amd64.deb
- metricbeat-7.4.0-amd64.deb

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to Kibana to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the 
