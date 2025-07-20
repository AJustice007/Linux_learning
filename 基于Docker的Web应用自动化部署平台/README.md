# Docker 自动化部署平台

## 项目简介
本项目基于 Docker 和 Docker Compose，实现了 Web 应用的容器化部署，并使用 Nginx 作为反向代理，实现统一访问入口。支持环境变量管理，方便配置和扩展。


## 环境准备（阶段一）
- 安装 Docker 与 Docker Compose
- 启用并设置 Docker 服务开机自启
- 拉取测试镜像，确认环境正常

## Web 应用部署（阶段二）
- 通过 `docker-compose.yml` 启动 Web 应用容器
- 映射端口及数据卷保证数据持久化
- Web 应用连接数据库（如有）

## Nginx 反向代理（阶段三）
- Nginx 容器运行，配置反向代理规则（`nginxconf.dweb.conf`）
- 统一监听 80 端口，转发请求到 Web 应用容器
- 配合本地 `hosts` 文件实现域名访问（如 `web.local`）

## 环境变量配置
- `.env` 文件管理端口、密码等配置，方便修改和维护

## 快速启动
```bash
docker compose up -d

