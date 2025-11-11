# 后端代码规范

> 基于 Spring Boot 官方规范和 Google Java 风格指南

来源：
- Spring Boot 官方文档: https://spring.io/projects/spring-boot
- Google Java 风格指南: https://google.github.io/styleguide/javaguide.html

## 包结构规范
- 包名使用小写，按功能分层
- controller: 控制器层
- entity: 实体类
- repository: 数据访问层
- service: 业务逻辑层

## 命名规范
- 类名使用 PascalCase
- 方法名使用 camelCase
- 常量使用 UPPER_SNAKE_CASE
- 包名使用全小写

## 代码风格
- 使用 4 空格缩进
- 大括号与语句同一行
- 每行不超过 120 字符
- 使用 Javadoc 注释

## REST API 规范
- 使用复数名词作为资源路径
- 遵循 RESTful 设计原则
- 统一返回格式
- 适当的 HTTP 状态码