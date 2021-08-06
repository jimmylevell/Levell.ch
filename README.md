# About Levell.ch
Personal website of James    

## Frameworks used
- Bootstrap  
- HTML / CSS  

# Docker image details 
Base image: nginx  
Exposed ports: 80  
Additional installed resources:  
- Troubleshooting: vim, net-tools, dos2unix  

# Deployment
## General
Service: levellch  
Data Path: /home/docker/levell/levellch/  
Access URL: levell.ch  

## Attached Networks
- traefik-public - access to reverse proxy

## Attached volumes
None  

## Environment variables 
None  
