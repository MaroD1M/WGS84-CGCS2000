# 使用官方Python镜像作为基础
FROM python:3.12-slim

# 设置工作目录
WORKDIR /app

# 复制依赖文件并安装
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件
COPY . .

# 暴露端口（Flask默认5000）
EXPOSE 5000

# 启动命令
# 替换原 CMD 命令
# 假设入口文件为 mian.py（若实际是 main.py 需同步修改）
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:5000", "main:app"]