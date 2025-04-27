FROM python:3.10-slim

WORKDIR /app

# 安装系统依赖（对于pyautogui）
RUN apt-get update && apt-get install -y \
    python3-tk \
    python3-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 复制项目文件
COPY pyproject.toml server.py ./

# 安装Python依赖
RUN pip install --no-cache-dir -e .

# 设置MCP服务器
EXPOSE 8080
ENV MCP_TRANSPORT=http
ENV PORT=8080
ENV HOST=0.0.0.0

# 启动服务器
CMD ["python", "server.py"] 