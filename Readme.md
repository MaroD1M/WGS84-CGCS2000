# WGS84-CGCS2000 坐标转换工具 🗺️

## 项目概述 🌟
这是一个专业的坐标转换工具，用于在WGS84和CGCS2000坐标系之间进行精确转换。适用于地理信息系统(GIS)、测绘、导航等领域的专业人员和开发者。

## 功能特性 ✨
- 🔄 **双向坐标转换**：支持WGS84转CGCS2000和CGCS2000转WGS84
- 📐 **灵活的坐标系统配置**：支持多种投影类型和分带方式
- 📊 **批量处理**：支持通过文件批量导入导出坐标数据
- 🌐 **友好的Web界面**：基于Bootstrap构建的响应式设计，提供单点转换和批量转换两种模式

## 技术栈 🛠️
- **后端**：Python 3.12, Flask
- **地理坐标处理**：pyproj, numpy, pandas
- **前端**：HTML5, Bootstrap, JavaScript
- **容器化**：Docker, Docker Compose
- **CI/CD**：GitHub Actions

## 快速开始 🚀

### 使用Docker（推荐）🐳
```bash
docker-compose up -d
```

访问 http://localhost:5000 即可使用

### 本地开发 💻
1. 安装依赖
```bash
pip install -r requirements.txt
```

2. 启动应用
```bash
python main.py
```

## 使用说明 📖

### 单点转换
1. 选择分带类型（3度带/6度带）
2. 选择转换方向（WGS84→CGCS2000或CGCS2000→WGS84）
3. 输入源坐标（X/Y或经度/纬度）
4. 点击「转换」按钮获取结果

### 批量转换
1. 选择分带类型
2. 选择转换方向
3. 上传CSV格式的坐标文件（支持X/Y或经度/纬度格式）
4. 点击「批量转换」按钮
5. 查看转换结果并可导出为CSV文件

## 项目结构 📁
```
WGS84-CGCS2000/
├── .github/
│   └── workflows/
│       └── docker-build.yml    # GitHub Actions 配置
├── templates/
│   └── index.html              # 前端界面模板
├── Dockerfile                  # Docker 构建配置
├── Readme.md                   # 项目说明文档
├── docker-compose.yml          # Docker Compose 配置
├── main.py                     # 主应用代码
└── requirements.txt            # Python 依赖列表
```

## 坐标系统说明 🌍
- **WGS84**：全球定位系统(GPS)使用的坐标系
- **CGCS2000**：中国国家大地坐标系
- 本工具使用高精度转换参数，确保坐标转换的准确性

## 精度与限制 🎯
- 转换精度：±0.0001米
- 支持的坐标范围：全球范围
- 批量处理文件大小限制：10MB

## 许可证 📜
本项目采用 MIT 许可证

## 致谢 💖
本工具基于以下开源库开发：
pyproj 🏗️
Flask 🌶️
pandas 🐼
        