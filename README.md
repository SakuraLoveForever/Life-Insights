# 卷里山河，心头月色 — 阅读与长夜随记

> 人生如卷，山河万里；心有所感，月色长明。

🔗 **在线访问：**[sakuraloveforever.github.io/Life-Insights](https://sakuraloveforever.github.io/Life-Insights/)

一个简洁优雅的个人随记页面，记录阅读、观影、游戏与生活中的点滴感悟。

## ✨ 特性

- **纯静态渲染** — 单页 HTML，使用 `marked.js` 将 Markdown 实时渲染为精美卡片
- **日夜主题切换** — 支持深色/浅色模式，自动记忆偏好
- **可折叠目录** — 自动从 Markdown 结构生成目录，支持展开/收起
- **文学标签** — 根据内容自动识别主题标签（雨落红井、风起云岚、大圣余烬……）
- **响应式布局** — 适配桌面与移动端
- **热更新** — 定时检测 `生活感悟.md` 变化并自动刷新

## 📁 文件结构

```
├── index.html          # 主页面（包含全部 CSS 与 JS）
├── 生活感悟.md          # 内容源文件
└── README.md           # 本文件
```

## 🚀 本地预览

由于使用了 `fetch` 加载本地 Markdown 文件，需要启动本地服务器：

```bash
# 方法一：VS Code Live Server
右键 index.html → Open with Live Server

# 方法二：Python
python -m http.server 8080

# 方法三：Node.js
npx serve .
```

> 不要直接双击 `index.html` 打开，否则会因跨域限制无法加载 Markdown 文件。

## 🎨 Markdown 写作格式

```markdown
## 大标题

1. 2025.1.1 - 某书 / 某事件
   - 第一条感悟段落。支持 **Markdown** 语法。
   - 第二条感悟段落。

2. 另一天的感悟
   - 内容在此……
```

每个 `数字. 标题` 形成一个**可折叠卡片**，`-` 列表项为卡片内的段落。

## 🔗 作者链接

- [小红书](https://www.xiaohongshu.com/user/profile/5e72db210000000001000d66)
- [哔哩哔哩](https://space.bilibili.com/481036572)
- [GitHub](https://github.com/SakuraLoveForever)

## 📄 许可

个人项目，随意取用。
