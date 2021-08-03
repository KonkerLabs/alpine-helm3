FROM docker:latest

RUN apk add --no-cache curl py-pip jq
RUN apk update
RUN apk add openssl
RUN apk add bash
RUN apk add git
RUN apk add make
RUN apk add go
RUN pip install awscli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.21.3/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
RUN curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
RUN chmod 700 get_helm.sh
RUN ./get_helm.sh