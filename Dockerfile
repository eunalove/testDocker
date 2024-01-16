# Docker 이미지의 기본 그림을 지정합니다. 이 경우 OpenJDK 17 기본 이미지를 사용하고 있습니다.
FROM openjdk:17
VOLUME /tmp
#이 인수는 Docker 이미지에 복사될 JAR 보고서의 방향을 지정하는 데 사용됩니다. *.Jar는 특정 목록의 모든 JAR 파일을 고려할 수 있음을 제안합니다.
ARG JAR_FILE=build/libs/*.jar
# 이 줄은 구성 컨텍스트의 JAR_FILE 인수를 사용하여 고유한 JAR 파일을 Docker 이미지로 복사합니다.
COPY ${JAR_FILE} app.jar
#이 줄은 Docker 필드가 진화를 시작하는 동안 수행될 기본 명령을 설정합니다. JVM(Java Virtual Machine)이 -jar 옵션을 사용하여 JAR 보고서(app.Jar)를 실행해야 함을 지정합니다.
ENTRYPOINT ["java","-jar","/app.jar"]