# Docker Deployment instructions

1. First run `source create_image.sh`
2. Next run `source deploy_container.sh`. <br/>. You will be asked for your local vivado install and an open port.
3. To view containers `docker container ls`
4. Next run `source setup_license.sh`. <br />. This sets up the license on the container.
5. To attach to the container `docker attach <container name>`

