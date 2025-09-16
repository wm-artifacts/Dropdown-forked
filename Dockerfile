# Define build arguments for WaveMaker version and profile
# For more info follow this link https://docs.wavemaker.com/learn/app-development/deployment/build-with-docker/#build-docker-image
ARG wavemaker_version=latest

# Stage 1: Build the web application artifact
FROM wavemakerapp/app-builder:${wavemaker_version} as webapp-artifact
ADD ./ /usr/local/content/app
ARG profile
ENV profile=${profile}
ENV MAVEN_CONFIG=/root/.m2
RUN --mount=type=cache,target=/root/.m2 \
    --mount=type=cache,target=/root/.npm \
    bash /usr/local/bin/wavemaker-build.sh full

# Stage 2: Prepare the runtime environment for the application
FROM wavemakerapp/app-runtime-tomcat:${wavemaker_version}
COPY --from=webapp-artifact /usr/local/content/app/target/*.war /usr/local/tomcat/webapps/
