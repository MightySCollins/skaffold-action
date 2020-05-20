FROM gcr.io/k8s-skaffold/skaffold:latest

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
