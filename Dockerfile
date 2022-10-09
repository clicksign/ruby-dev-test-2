FROM ruby:2.4.1 as base

# Arguments
ARG APP_PATH=/home/app/web
ARG PORT=3005
ARG BUNDLE_PATH="/usr/local/bundle"
ARG BUILD_PACKAGES="sqlite3 nodejs"
ARG DEV_PACKAGES=""
ARG RUNTIME_PACKAGES="tzdata"

# Environment
ENV PORT=${PORT} \
    APP_PATH=${APP_PATH} \
    BUNDLE_PATH=${BUNDLE_PATH} \
    BUILD_PACKAGES=${BUILD_PACKAGES} \
    DEV_PACKAGES=${DEV_PACKAGES} \
    RUNTIME_PACKAGES=${RUNTIME_PACKAGES}

# Update dependencies and add runtime dependencies.
RUN apt-get update && \
    apt-get upgrade -y --fix-missing && \
    apt-get install -y ${RUNTIME_PACKAGES} && \
    mkdir -p ${APP_PATH}

# Change working directory (post ownership transfer to $APP_USER) to app directory
WORKDIR ${APP_PATH}

# Expose ports for running processes
EXPOSE $PORT

#-------------------------------------------------------------#
#------------------------Development--------------------------#
#-------------------------------------------------------------#
FROM base as development

# Add development and build packages
RUN apt-get install -y ${BUILD_PACKAGES} ${DEV_PACKAGES}

COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install --full-index

COPY . ./

CMD ["bundle", "exec", "rails", "server"]
