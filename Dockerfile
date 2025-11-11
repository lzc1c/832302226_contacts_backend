# Build stage: 使用真实的 Maven 镜像
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Production stage: 使用轻量级 JRE
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# 从构建阶段复制 JAR 文件
COPY --from=build /app/target/*.jar app.jar

# 声明端口（静态）
EXPOSE 8080

# 使用环境变量 PORT
CMD ["sh", "-c", "java -jar app.jar --server.port=${PORT}"]