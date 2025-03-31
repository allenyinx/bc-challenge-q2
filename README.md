# Block chain challenge Q2

## Please set up the relevant PKI and describe how we should distribute these client certificates.
- Use Last Pass to store the client certificates
- Use Venafi to manage the client certificates lifecycle, renew/downloads
- Use Hashicorp Vault to store the client certificates
- Use secure emails

# Deliverables location
- access log: stored in the `docker/logs` folder
- PKI setup: steps in the `docker.sh` file, and server certs in the `docker/certs` folder
- docker solution: in the `docker` folder
- kubernetes solution: in the `deploy` folder, which will wrap up the certs as configmap and mount into the pod