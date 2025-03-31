FROM nginx:1.25-alpine@sha256:516475cc129da42866742567714ddc681e5eed7b9ee0b9e9c015e464b4221a00

LABEL com.bcchalledge.version="0.0.1"
LABEL author="Allen Yin"
LABEL com.bcchalledge.release-date="2025-03-31"

# Install tools for cert management
RUN apk add --no-cache openssl curl

# Configure directories
RUN mkdir -p /etc/nginx/certs /var/log/nginx/blockchain \
    && chown -R nginx:nginx /var/log/nginx \
    && chown -R nginx:nginx /var/cache/nginx \
    && chown nginx:nginx /var/run

# Copy configurations
COPY nginx.conf /etc/nginx/nginx.conf
COPY client-auth-rpc.conf /etc/nginx/conf.d/
COPY client-auth-cos.conf /etc/nginx/conf.d/
COPY certs/ /etc/nginx/certs/

EXPOSE 8000 8001

USER nginx
CMD ["nginx", "-g", "daemon off;"]