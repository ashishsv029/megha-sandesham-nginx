openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout private.key -out certificate.crt
The above command creates a key (private) value (public) pair and store it in private.key and certificate.cert file



# Generate a private key
openssl genrsa -out private.key 2048

# Generate a CSR
openssl req -new -x509 -key private.key -out certificate.crt -days 365 -subj "/CN=localhost"

# steps to re build image, create tag and push to docker hub
1. Build the docker image using Dockerfile :-   sudo docker build -t ashishsv029/nginx .
2. Tag the newly created docker image:- docker -t ashishsv029/nginx ashishsv029/nginx:8.0.0
3. Push the image tag to Docker Hub Registry:- docker push ashishsv029/nginx:8.0.0