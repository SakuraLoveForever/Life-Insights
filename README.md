# 卷里山河，心头月色 — 阅读与长夜随记

> 人生如卷，山河万里；心有所感，月色长明。

🔗 **在线访问：**[sakuraloveforever.github.io/Life-Insights](https://sakuraloveforever.github.io/Life-Insights/)

一个简洁优雅的个人随记页面，记录阅读、观影、游戏与生活中的点滴感悟。

## ✨ 特性

- **纯静态渲染** — 单页 HTML，使用 `marked.js` 将 Markdown 实时渲染为精美卡片
- **雷姆主题** — 《Re:Zero》雷姆配色（夜色蓝底 + 冰蓝发色），顶栏头像与右侧立绘；点击左下角头像切换台词，对话框闲置 5 秒后渐隐
- **可折叠目录** — 自动从 Markdown 结构生成目录，支持展开/收起
- **文学标签** — 根据内容自动识别主题标签（雨落红井、风起云岚、大圣余烬……）
- **响应式布局** — 适配桌面与移动端
- **双击读取最新内容** — Windows 双击 `打开网页.cmd`，使用 Python 3 自带的本地服务器，自动读取当前 `生活感悟.md`
- **GitHub Pages** — 每次打开重新请求已部署的 Markdown，加载失败会提示错误，不回退到旧快照
- **热更新** — 用本地服务器打开时，定时检测 `生活感悟.md` 变化并自动刷新

## 📁 文件结构

```
├── index.html          # 主页面（包含全部 CSS 与 JS）
├── 打开网页.cmd         # Windows 本地启动入口（需要 Python 3）
├── 生活感悟.md          # 内容源文件
├── assets/             # 雷姆主题素材
│   ├── rem-avatar.png  # 动画风头像（顶栏 + 小助手）
│   ├── rem-portrait.png # 动画风透明全身立绘（正文上方）
│   ├── favicon.svg     # 站点图标
│   └── marked.min.js   # Markdown 渲染器本地副本（v15.0.12 · MIT）
└── README.md           # 本文件
```

## 🚀 本地预览

**方式一（Windows 推荐）：双击 `打开网页.cmd`。** 需要已安装 Python 3。脚本会自动打开浏览器，从本地目录读取最新 `生活感悟.md`；保存 MD 后，页面约 2 秒内自动更新。预览期间保留启动窗口，关闭窗口即停止本地服务。端口自动选择，不影响其他本地服务。

直接双击 `index.html` 仍可离线查看内嵌快照，但浏览器禁止它自动读取旁边的 MD；此时可手动点「读取最新 md」选择文件。修改网页后缀无法绕过这个浏览器限制。

**方式二：起个本地服务器（改 md 自动热更新）。**

```bash
# VS Code：右键 index.html → Open with Live Server

# 或 Python
python -m http.server 8080

# 或 Node.js
npx serve .
```

## GitHub Pages 更新

保持入口文件名为 `index.html`。将修改后的 `生活感悟.md` 提交并推送到 GitHub Pages 使用的分支，等待 Pages 部署完成，再打开网站即可看到该次部署的内容。只修改本地 MD 不会更新线上网站。

页面请求 MD 时使用时间戳参数及 `no-store`，避免复用旧缓存；打开期间也会每 2 秒检查变化。线上加载失败会明确报错，不会显示内嵌旧快照。

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
