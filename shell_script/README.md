脚本简介 

1. user_batch_create.sh
 Batch create multiple users from a preset list with default password `123456`.
 从预设用户名列表中批量创建用户，默认密码为 `123456`。


2. file_batch_rename.sh
 Rename all files in a target folder to `prefix_1.ext`, `prefix_2.ext`, etc.
 将目标目录中的所有文件统一改名为 `前缀_编号.后缀` 格式。


 3. auto_backup.sh
 Backup a specified folder daily, with filenames based on the current date.
 将指定文件夹压缩归档，按日期命名保存，可结合 `crontab` 实现每日自动备份。


4. disk_monitor.sh
Check if disk usage exceeds threshold (default: 80%), simulate sending alert.
检查根目录磁盘使用率是否超过设定阈值，超出时模拟邮件告警。



