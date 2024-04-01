From openjdk:8
COPY . /SRC/JAVA
WORKDIR /SRC/JAVA
RUN ["javac", "JavaCiCd.java"]
ENTRYPOINT ['java', 'JavaCiCd']
