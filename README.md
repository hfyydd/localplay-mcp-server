# LocalPlay MCP Server

用于本地运行 MCP (Model Context Protocol) 服务器的项目，实现鼠标控制功能。

A project for running a local MCP (Model Context Protocol) server that implements mouse control functionality.

## 安装 | Installation

使用 `uv` 安装依赖：

Install dependencies using `uv`:

```bash
uv add "mcp[cli]" pyautogui
```

或者使用 pip：

Or using pip:

```bash
pip install "mcp[cli]" pyautogui
```

## 使用方法 | Usage

### 启动服务器 | Starting the Server

运行以下命令启动 MCP 开发服务器：

Run the following command to start the MCP development server:

```bash
    "localplay-mcp-server": {
      "command": "uv",
      "args": [
        "--directory",
        "/path/localplay-mcp-server",
        "run",
        "server.py"
      ]
    }
```

### 使用Docker | Using Docker

您也可以使用Docker来运行服务器：

You can also use Docker to run the server:

```bash
# 构建Docker镜像 | Build the Docker image
docker build -t localplay-mcp-server .

# 运行Docker容器 | Run the Docker container
docker run -p 8080:8080 localplay-mcp-server
```

### 服务器功能 | Server Features

当前服务器实现了以下鼠标控制功能：

The server currently implements the following mouse control features:

- **移动鼠标 | Move Mouse**: 将鼠标移动到指定坐标位置 | Move the mouse to a specified coordinate position
- **鼠标点击 | Mouse Click**: 在当前或指定位置执行鼠标点击操作 | Perform mouse click operations at the current or specified position
- **鼠标拖拽 | Mouse Drag**: 从一个位置拖拽到另一个位置 | Drag from one position to another
- **鼠标滚动 | Mouse Scroll**: 执行鼠标滚轮滚动操作 | Perform mouse wheel scrolling operations

### 使用示例 | Usage Examples

1. 移动鼠标 | Move Mouse: 将鼠标移动到指定坐标，例如 (100, 200) | Move the mouse to specified coordinates, e.g. (100, 200)
2. 鼠标点击 | Mouse Click: 在当前位置或指定位置进行点击操作 | Click at the current or specified position
3. 鼠标拖拽 | Mouse Drag: 从起始位置拖拽到目标位置 | Drag from a starting position to a target position
4. 鼠标滚动 | Mouse Scroll: 执行向上或向下的滚动操作 | Perform scrolling operations up or down

## 许可证 | License

本项目基于MIT许可证开源。详情请查看[LICENSE](LICENSE)文件。

This project is open-sourced under the MIT License. See the [LICENSE](LICENSE) file for details.

