FROM alpine:edge

RUN apk update --no-cache && \
    apk add --no-cache openjdk8 maven && \
    mkdir /app
    
WORKDIR /app

COPY *.jar /app

ENTRYPOINT ["java", "-jar", "*.jar"]
