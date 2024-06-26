

FROM openjdk:8

COPY . /SRC/JAVA
WORKDIR /SRC/JAVA

# Compile the Java source code
RUN javac JavaCiCd.java

# Set the entrypoint to run the Java application
ENTRYPOINT ["java", "JavaCiCd"]
