#个人 Linux 服务器的搭建与自动化备份项目

本项目通过ubuntu系统实现了用户管理、ssh安全登录，到nginx服务部署和自动备份脚本



##项目目标

- 创建非root用户并配置ssh安全登录

- nginx服务安装部署，模拟网站根目录

- 编写Bash脚本自动打包 ’/var/www/html‘

- 使用crontab实现每日自动备份

- 自动清理超过30天的备份

- 用户相关的权限配置



##技术栈

- Ubuntu 22.04

- Bash 脚本

- tar、crontab、ssh、nginx

- Linux用户权限管理



##学习到技术：

- Linux文件、用户的创建和权限管理

- 实战shell脚本编写能力

- 服务调试和部署能力

- 定时任务运维思维



# 
