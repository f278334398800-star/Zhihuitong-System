# 校园智慧通 (Zhihuitong)

校园智慧通是一个综合性的校园管理系统，基于 RuoYi v3.9.2 框架构建，集成了 AI 智能助手功能，为师生提供便捷的校园服务。

## 项目概述

本系统采用前后端分离架构，包含以下三个核心服务：

| 服务 | 技术栈 | 端口 | 说明 |
|------|--------|------|------|
| Java 后端 | Spring Boot 3.5 + MyBatis + MySQL + Redis | 8080 | 核心业务服务 |
| Vue 前端 | Vue 3 + TypeScript + Element Plus + Vite | 9527 | 管理后台界面 |
| Python AI 服务 | LangChain + LangGraph + FastAPI | 8000 | AI 智能助手 |

## 功能模块

### 系统管理
- 用户管理、角色管理、菜单管理
- 部门管理、岗位管理、字典管理
- 参数配置、日志管理

### 业务功能
- **课程管理**：课程信息维护与查询
- **笔记管理**：学生笔记的创建与管理
- **模板管理**：文档模板的维护
- **知识库管理**：校园知识的发布与管理
- **学生管理**：学生信息管理

### AI 智能助手
- 智能对话：基于大模型的问答服务
- RAG 检索：基于知识库的精准问答
- 联网搜索：实时网络信息检索
- 多轮对话：支持上下文记忆

## 环境要求

### 基础环境
- **JDK**: 17+
- **Maven**: 3.8+
- **Node.js**: 18+
- **Python**: 3.14+
- **MySQL**: 8.0+
- **Redis**: 6.0+

### 推荐配置
- 操作系统：Windows 10/11、Linux、macOS
- 内存：8GB+
- 磁盘空间：10GB+

## 快速启动

### 1. 数据库准备

```bash
# 登录 MySQL
mysql -u root -p

# 创建数据库
CREATE DATABASE zhihuitong DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

# 导入数据
mysql -u root -p zhihuitong < zhihuitong.sql
```

### 2. 启动 Java 后端

```bash
# 进入后端目录
cd zhihuitong

# 方式一：使用批处理脚本（Windows）
bin\package.bat
bin\run.bat

# 方式二：使用 Maven 命令
mvn clean package -Dmaven.test.skip=true
java -jar zhihuitong-admin/target/zhihuitong-admin.jar
```

后端启动成功后访问：http://localhost:8080

### 3. 启动 Vue 前端

```bash
# 进入前端目录
cd frontend

# 安装依赖（使用国内镜像加速）
yarn --registry=https://registry.npmmirror.com

# 启动开发服务器
yarn dev
```

前端启动成功后访问：http://localhost:9527

### 4. 启动 Python AI 服务（可选）

```bash
# 进入 AI 服务目录
cd agent

# 安装依赖
uv sync

# 配置环境变量
cp .env.example .env
# 编辑 .env 文件，填写 LLM_API_KEY 等配置

# 启动服务
uv run zhihuitong-agent
```

AI 服务启动成功后访问：http://localhost:8000

## 配置说明

### Java 后端配置

主要配置文件位置：`zhihuitong/zhihuitong-admin/src/main/resources/`

| 配置文件 | 说明 |
|----------|------|
| `application.yml` | 主配置文件 |
| `application-dev.yml` | 开发环境配置 |
| `application-prod.yml` | 生产环境配置 |
| `application-druid.yml` | 数据库连接配置 |

需要修改的配置项：
```yaml
# 数据库配置
spring.datasource.druid.master.url: jdbc:mysql://localhost:3306/zhihuitong
spring.datasource.druid.master.username: root
spring.datasource.druid.master.password: your_password

# Redis 配置
spring.data.redis.host: localhost
spring.data.redis.port: 6379
spring.data.redis.password: your_redis_password

# 文件上传路径
ruoyi.profile: D:/ruoyi/uploadPath
```

### Python AI 服务配置

配置文件位置：`agent/.env`

```bash
# LLM 配置（支持 OpenAI / Anthropic / Ollama）
LLM_PROVIDER=openai
LLM_API_KEY=your_api_key_here
LLM_BASE_URL=https://api.openai.com/v1
LLM_MODEL=gpt-4o

# 联网搜索配置（可选）
TAVILY_API_KEY=your_tavily_api_key

# Java 后端地址
JAVA_BACKEND_URL=http://localhost:8080
```

## 项目结构

```
Zhihuitong-System/
├── zhihuitong/                    # Java 后端
│   ├── zhihuitong-admin/          # 主应用模块
│   ├── zhihuitong-framework/      # 框架核心
│   ├── zhihuitong-system/         # 系统模块
│   ├── zhihuitong-platform/       # 业务模块
│   ├── zhihuitong-common/         # 公共模块
│   ├── zhihuitong-agent/          # AI 代理模块
│   ├── zhihuitong-knowledge/      # 知识库模块
│   ├── zhihuitong-student/        # 学生模块
│   ├── zhihuitong-oss/            # 对象存储
│   ├── zhihuitong-quartz/         # 定时任务
│   ├── zhihuitong-generator/      # 代码生成
│   └── zhihuitong-task/           # 任务模块
├── frontend/                      # Vue 前端
│   ├── src/
│   │   ├── api/                   # 接口定义
│   │   ├── views/                 # 页面组件
│   │   ├── components/            # 公共组件
│   │   ├── store/                 # 状态管理
│   │   └── router/                # 路由配置
│   └── public/                    # 静态资源
├── agent/                         # Python AI 服务
│   ├── src/zhihuitong_agent/
│   │   ├── agent/                 # Agent 实现
│   │   ├── rag/                   # RAG 模块
│   │   ├── api/                   # API 路由
│   │   └── tools/                 # 工具集
│   └── pyproject.toml
└── zhihuitong.sql                 # 数据库脚本
```

## API 文档

### Swagger UI
启动后端后访问：http://localhost:8080/swagger-ui.html

### AI 服务 API

| 端点 | 方法 | 说明 |
|------|------|------|
| `/chat/stream` | POST | SSE 流式对话 |
| `/chat/memory/{thread_id}` | DELETE | 清除会话记忆 |
| `/rag/index` | POST | 索引知识库文章 |
| `/rag/index/all` | POST | 批量重建索引 |
| `/config` | GET | 查看运行时配置 |
| `/config` | PUT | 更新运行时配置 |

## 常见问题

### 1. 端口被占用
修改对应配置文件中的端口号：
- 后端：`application.yml` 中的 `server.port`
- 前端：`vite.config.ts` 中的 `server.port`
- AI 服务：`.env` 中的 `PORT`

### 2. 数据库连接失败
检查 MySQL 服务是否启动，用户名密码是否正确，数据库是否已创建。

### 3. Redis 连接失败
检查 Redis 服务是否启动，密码是否正确。

### 4. AI 服务无法启动
确保 Python 版本 >= 3.14，已正确安装 uv 包管理器。

## 开发工具

### 后端开发
- IDE：IntelliJ IDEA
- 数据库工具：Navicat、DBeaver
- API 测试：Postman、Apifox

### 前端开发
- IDE：VS Code、WebStorm
- 包管理：Yarn
- 调试：Vue Devtools

## 部署说明

### 生产环境部署

```bash
# 后端打包
cd zhihuitong
mvn clean package -Dmaven.test.skip=true

# 前端打包
cd frontend
yarn build:prod

# 部署产物
# 后端：zhihuitong/zhihuitong-admin/target/zhihuitong-admin.jar
# 前端：frontend/dist/
```

### Docker 部署（待完善）
```bash
# 构建镜像
docker build -t zhihuitong-backend ./zhihuitong
docker build -t zhihuitong-frontend ./frontend

# 运行容器
docker-compose up -d
```

## 版本信息

- 当前版本：v1.0
- 基于框架：RuoYi v3.9.2
- Spring Boot：3.5.11
- Vue：3.5.26
- Element Plus：2.13.1

## 许可证

本项目基于 MIT 许可证开源。

## 联系方式

- 作者：Happy-boy-001
- 邮箱：3298755711@qq.com

## 致谢

- [RuoYi-Vue](https://gitee.com/y_project/RuoYi-Vue) - 基础框架
- [Element Plus](https://element-plus.org/) - UI 组件库
- [LangChain](https://langchain.com/) - AI 应用框架
- [FastAPI](https://fastapi.tiangolo.com/) - Web 框架
