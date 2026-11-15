---
layout: default
title: "Horizon Summary: 2026-11-15 (ZH)"
date: 2026-11-15
lang: zh
---

> 从 42 条内容中筛选出 4 条重要资讯。

---

**科技新闻**
1. [Lovable 应用因 RLS 不足泄露护照信息与逾 20 万条私信](#item-tech-news-1) ⭐️ 8.0/10
2. [PyPI 项目页改版上线，突出安全与来源信号](#item-tech-news-2) ⭐️ 7.0/10
3. [Show HN：约 200 行纯 JAX 实现的 DeepSeek V3](#item-tech-news-3) ⭐️ 7.0/10
4. [Runway 开源 Praxis-1：视频 AI 转为机器人控制器](#item-tech-news-4) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Lovable 应用因 RLS 不足泄露护照信息与逾 20 万条私信](https://www.crissyfield.de/research/lovable-en/) ⭐️ 8.0/10

Crissy Field 的安全研究发现，一些由 Lovable 生成的应用暴露了护照信息和超过 20 万条私人消息，根因是这些应用未充分配置 Supabase 的 Row-Level Security（行级安全）。Lovable 安全负责人 Igor 回应称，RLS 配置不足正是发布前自动扫描和可选深度 SAST 扫描要发现的问题；用户可点击“Fix”修复、启用后台自动修复，或阻止发布。社区讨论则把焦点扩展到 Supabase 的默认配置：有评论称相关默认设置据称已于 10 月 30 日修复，但现有项目可能仍沿用旧默认值；也有人认为 AI 生成应用数量多、攻击门槛低，使此类暴露更值得警惕。

hackernews · armcat · 11月14日 17:43 · [社区讨论](https://news.ycombinator.com/item?id=50499017)

**「背景」** Supabase 是许多 AI 建站平台（包括 Lovable）常用的后端，提供 PostgreSQL 数据库、认证与自动生成 API；行级安全（Row-Level Security，RLS）是 PostgreSQL 的访问控制机制，用来按用户或角色限制哪些数据行可读可写。若数据表未启用或未正确配置 RLS，应用前端携带的公开匿名密钥就可能让任何人不登录直接查询数据库；一项扫描在 Common Crawl 中识别出 34,545 个使用 Supabase 的 Lovable 应用，其中 24,664 个可在未认证情况下返回记录。此次事件因此不只是单个应用的配置失误，也把 AI 生成代码所依赖的后端默认安全策略推到了讨论中心。

**「影响」** 对已上线的 Lovable/Supabase 应用，运营者和开发者需要立即审计并补上逐表的 RLS 策略，否则任何已认证用户都可能读取全表数据，护照详情和私信等敏感信息会持续暴露。

**「社区讨论」** 评论区对责任归属存在分歧：Lovable 方面强调 RLS 配置不足并提供扫描与修复工具；有评论者则认为 Supabase 长期以易用性为导向的默认设置才是关键，且旧项目可能未获修复，另有人指出 AI 生成应用数量庞大、攻击门槛低，使普通用户更难判断风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://the420.in/lovable-ai-data-exposure-supabase-apps/">7,403 Lovable AI Apps Exposed Readable User Data ... - The 420.in</a></li>
<li><a href="https://www.rocket.new/blog/how-to-enable-supabase-row-level-security-in-your-ai-built-app">How to Enable Supabase Row - Level Security in Your AI - Built App</a></li>
<li><a href="https://supabase.com/docs/guides/database/postgres/row-level-security">Row Level Security | Supabase Docs</a></li>

</ul>
</details>

**标签**: `#security`, `#row-level-security`, `#supabase`, `#ai-generated-code`, `#privacy`

---

<a id="item-tech-news-2"></a>
### [PyPI 项目页改版上线，突出安全与来源信号](https://blog.pypi.org/posts/2026-11-06-ui-updates-complete/) ⭐️ 7.0/10

PyPI 已上线重新设计的项目页面，在页面上更清晰地展示安全与来源（provenance）信息，让开发者在选择包时能直接看到相关信号。这项改动把供应链安全信息放到项目页的显眼位置，对 Python 生态的依赖审查和发布透明度具有实际意义。社区讨论集中在信任机制是否过度依赖大型云服务和 CI/CD 平台、可信发布（trusted publishing）对可复用工作流的支持仍待完善，以及这些信号能否区分“被入侵的既有项目”和“本身恶意的项目”。有评论者以 dlt（无 provenance）和 datasette（有 provenance）说明页面呈现差异，也有人希望 sigstore 式无密钥短时签名更普及。现有信息未披露改版的具体字段、覆盖范围和限制，实际效果仍需观察。

hackernews · rbanffy · 11月14日 15:40 · [社区讨论](https://news.ycombinator.com/item?id=50497892)

**「背景」** PyPI 的 Trusted Publishing 会把项目与可加密验证的机器身份（例如某个 GitHub Actions 发布工作流）关联起来，由该身份完成发布。在此基础上生成的 provenance/attestation 记录会说明包由哪个身份、经由怎样的构建与发布链路产生，使 PyPI 能在项目页面上展示来源信号。此次界面更新正是把这些安全与来源信息更集中地呈现给用户。

**「影响」** 对 Python 开发者和包维护者来说，项目页上的 provenance 与安全标记会成为评估依赖来源的可见线索，但其价值取决于可信发布、签名工作流和平台支持的完善程度。

**「社区讨论」** 多位评论者认可 PyPI 突出 provenance 的方向，但有人担心信任链被集中到大型云厂商和 CI/CD 平台，造成锁定；也有人指出 trusted publishing 尚不支持可复用工作流，并强调这些信号主要能发现既有项目被入侵，而非识别本身恶意的项目。还有评论者以 dlt 和 datasette 为例说明页面差异，并希望 sigstore 式无密钥短时签名更普及。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://discuss.python.org/t/pre-pep-exposing-trusted-publisher-provenance-on-pypi/42337">Pre-PEP: Exposing Trusted Publisher provenance on PyPI</a></li>
<li><a href="https://blog.trailofbits.com/2024/11/14/attestations-a-new-generation-of-signatures-on-pypi/">Attestations: A new generation of signatures on PyPI - The Trail of Bits...</a></li>

</ul>
</details>

**标签**: `#PyPI`, `#supply chain security`, `#provenance`, `#open source`, `#trusted publishing`

---

<a id="item-tech-news-3"></a>
### [Show HN：约 200 行纯 JAX 实现的 DeepSeek V3](https://github.com/Vaibhaav-Tiwari/deepseek-v3-jax) ⭐️ 7.0/10

开发者 VaibhaavTiwari 在 GitHub 发布了 deepseek-v3-jax 项目，并在 Hacker News 的 Show HN 板块分享：该项目用约 200 行纯 JAX 代码从零重新实现了 DeepSeek V3。发布者将其定位为从第一性原理复现模型的实践，评论者普遍认为这是一个很好的学习资源。一位评论者 joebarbere 报告称，这是首个在他 16GB 显存的 RX 7600 XT 上端到端跑通的项目；在无 CUDA 的情况下，ROCm 与 JAX 配合“出乎意料地直接可用”。他提到该卡需要设置 HSA\_OVERRIDE\_GFX\_VERSION=11.0.0 等环境变量，但评论在此处被截断，具体插件相关细节不完整。由于原始项目页面内容未随条目前提供，代码规模、支持的精度与具体性能数据无法进一步核实。

hackernews · VaibhaavTiwari · 11月14日 15:04 · [社区讨论](https://news.ycombinator.com/item?id=50497589)

**「背景」** DeepSeek 是一家研发并开源前沿大语言模型的人工智能研究公司，题目中的 DeepSeek V3 即其大模型之一；JAX 则是面向高性能数值计算与自动微分的 Python 框架，常用于机器学习研究和模型实现。用 JAX 从较底层组件重新实现 DeepSeek V3，主要价值在于帮助读者理解模型结构、张量运算和推理流程，而非提供生产级替代实现。ROCm 是 AMD GPU 的计算平台，与 NVIDIA 的 CUDA 生态相对，因此在非 CUDA 硬件上运行这类实现还会涉及环境变量和框架插件等兼容性细节。

**「影响」** 对想理解 DeepSeek V3 推理内部机制、或在 AMD ROCm 环境上尝试无 CUDA 深度学习的研究者与开发者而言，这个项目提供了一个可直接上手的起点；不过 ROCm 端到端跑通目前仅有一例基于 RX 7600 XT 的用户报告，尚不能视为普遍兼容性保证。

**「社区讨论」** 评论区整体持正面态度，多位读者称赞“从第一性原理重建模型”的价值，并有人表示要照着复刻用于学习；也有初学者询问是否存在系统性的路线图，以建立对推理流程的直觉。除 ROCm 实践报告外，讨论中还出现了关于可视化模型架构和数据集选择的一般性建议，但未形成明显分歧。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.deepseek.com/">DeepSeek | Into the Unknown</a></li>

</ul>
</details>

**标签**: `#JAX`, `#DeepSeek V3`, `#model implementation`, `#ROCm`, `#deep learning`

---

<a id="item-tech-news-4"></a>
### [Runway 开源 Praxis-1：视频 AI 转为机器人控制器](https://the-decoder.com/runways-open-source-praxis-1-turns-video-ai-into-a-robot-controller/) ⭐️ 7.0/10

Runway 已以 Apache 2.0 许可证开放 Praxis-1 的模型权重和源代码，允许商业使用；该模型最早于 9 月底向少数合作伙伴提供，此次随详细研究报告一并公开发布。Praxis-1 接收相机图像、文本指令和机器人位置信息，预测环境变化并计算相应动作，并随新画面持续调整控制；它属于 Runway 所称的 World Action Model，先基于普通视频学习物体运动，再用人类动作视频和机器人数据微调。Runway 自测显示，Praxis-1 在 Nvidia RoboLab-120 基准的 120 项仿真任务中成功率为 46.2%，高于同类的 FLUX 3 Action（42.9%），在 World Action Model 类别居首、总榜第五，但这些结果尚未经独立验证。适配 Franka 机械臂时使用约 277 小时 DROID 数据，真实机器人十项任务各试十次成功 88 次，FLUX 3 Action 为 80 次；在约 95 小时数据微调后，对新机器人平台的仿真平均成功率为 80%，高于 RT-1 的 52.4%。其局限包括混淆相似物体、难以处理模糊指令，且尚不能可靠自主规划复杂动作序列；标准版需 80 GB 显存 GPU，压缩版按 Runway 估算可放入 32 GB 显存的 RTX 5090，但实际峰值显存尚未测量，用户需在 Hugging Face 注册并同意条款后下载。

rss · The Decoder · 11月14日 09:45

**「背景」** Runway 是一家以生成式 AI 视频模型著称的公司，其基础模型技术主要应用于影视制作、后期、广告和视觉特效，而非机器人领域。Praxis-1 属于所谓“世界动作模型”（World Action Model）：先在大规模普通视频上学习物体如何运动、如何相互作用，再用人类动作视频和机器人数据微调，使模型能根据相机画面、文本指令和机器人位姿直接输出动作，从而有望减少对昂贵机器人专用数据集的依赖。这种“视频预训练加机器人微调”的路线近年成为机器人基础模型的主流思路之一，但跨机器人本体的迁移效果以及是否真能减少所需机器人数据，仍是待验证的问题。

**「影响」** 对希望商用或二次开发的机器人团队而言，Apache 2.0 许可和预适配版本降低了采用门槛，但基础模型仍需专门训练，标准版需要 80GB 显存，压缩版在 32GB 显存上的实际峰值占用也尚未实测。其领先成绩目前来自 Runway 自测，尚未经过独立验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Runway_%28company%29">Runway (company) - Wikipedia</a></li>

</ul>
</details>

**标签**: `#robotics`, `#open source`, `#AI models`, `#video models`, `#Runway`

---