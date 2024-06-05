# Step 1: Add the JFrog Helm Repository
helm repo add jfrog https://charts.jfrog.io
helm repo update

# Step 2: Create a Namespace for JFrog
kubectl create namespace jfrog


# Step 3: Install JFrog Artifactory
helm install artifactory jfrog/artifactory -n jfrog

# Genete kyes:  openssl rand -hex 32
fb7203c8abf9f31bd2c57abec6fa3e769e59046ab41a75334b4f5877853cdf1b
echo -n 'fb7203c8abf9f31bd2c57abec6fa3e769e59046ab41a75334b4f5877853cdf1b' | base64
ZmI3MjAzYzhhYmY5ZjMxYmQyYzU3YWJlYzZmYTNlNzY5ZTU5MDQ2YWI0MWE3NTMzNGI0ZjU4Nzc4NTNjZGYxYg==
# add this 
vim artifactory-master-key.yaml
