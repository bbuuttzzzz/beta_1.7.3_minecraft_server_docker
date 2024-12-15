FROM openjdk:17

# -----------------------------------------------------
# create user
# -----------------------------------------------------
    RUN useradd -ms /bin/bash app
    RUN mkdir -p /app && chown app:app /app
    

WORKDIR /app

COPY server.jar server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

USER app

RUN mkdir world ; chown app world

VOLUME /app/world
VOLUME /app/server.properties

ENTRYPOINT ["java", "-jar", "server.jar", "nogui" ,"-Xmx1024M", "-Xms1024M"]