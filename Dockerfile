FROM tiredofit/nginx-php-fpm:7.2
LABEL maintainer="Scienap (support at scienap dot com)"

### Environment Variables
ENV SSP_VERSION=1.3

### Download and setup files
RUN mkdir -p /assets/install && \
    echo '** Downloading Self Service Password version '${SSP_VERSION} && \
    curl -sSL -o /assets/install/v${SSP_VERSION}.tar.gz https://github.com/ltb-project/self-service-password/archive/v1.3.tar.gz

### Files Addition
ADD install /
