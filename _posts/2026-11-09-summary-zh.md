---
layout: default
title: "Horizon Summary: 2026-11-09 (ZH)"
date: 2026-11-09
lang: zh
---

> 从 36 条内容中筛选出 4 条重要资讯。

---

**科技新闻**
1. [KetchUp：基于 Rust 和 WebGPU 的开源 SketchUp 替代品](#item-tech-news-1) ⭐️ 7.0/10
2. [斯坦福 CS146S 将开源维护者引入 AI 原生工程课程](#item-tech-news-2) ⭐️ 7.0/10
3. [三位意识研究者称当前 AI 无意识且硅基难有意识](#item-tech-news-3) ⭐️ 7.0/10
4. [真实基准：最强 AI 编程代理仅完全完成 26.4% 任务](#item-tech-news-4) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [KetchUp：基于 Rust 和 WebGPU 的开源 SketchUp 替代品](https://ketchup3d.github.io/app/) ⭐️ 7.0/10

KetchUp 以开源 SketchUp 替代品的定位在 Hacker News 亮相，项目由 dcoulmbe 提交，采用 Rust 和 WebGPU 构建，可直接在浏览器中进行 3D 建模。它受到关注的原因在于，它把 3D 建模交互带到了 Web 端，同时展示了 Rust UI 与 WebGPU 在浏览器图形应用中的可行性。现有信息未披露版本、许可证、具体功能范围或性能指标，因此其成熟度仍需进一步验证。

hackernews · dcoulmbe · 11月8日 22:35 · [社区讨论](https://news.ycombinator.com/item?id=50418176)

**「背景」** SketchUp 是一款以易上手著称的 3D 建模软件，常用于木工、家具等需要精确尺寸的设计场景；KetchUp 旨在提供免费、开源的替代方案，支持在浏览器或桌面运行，并覆盖 Windows、macOS 和 Linux。它使用 Rust 配合 WebAssembly 和 WebGPU 构建：Rust 负责核心逻辑，WebAssembly 让程序能在浏览器中执行，WebGPU 则提供现代浏览器内的 GPU 图形渲染能力。这样的技术栈使完整建模体验可以进入网页，同时保留桌面分发选项。

**「影响」** 对需要浏览器内、无需本地安装的 SketchUp 类建模工具的用户而言，KetchUp 提供了一个值得试用的开源选项；对 Rust/WebGPU 开发者，它也是可参考的 Web 图形应用案例。

**「社区讨论」** 评论整体积极：有人称其为 SketchUp 的精神续作，也有人赞叹 Rust UI 和浏览器文本渲染效果，并讨论用 AI 按需生成工具的趋势。实际反馈中，有 3D 打印用户希望用它替代 SketchUp 8 做简单模型，也有人指出画矩形时强制命名对象是不合理的默认行为。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Ketchup3D/app">GitHub - Ketchup3D/app: Free, open-source 3D modeling ...</a></li>
<li><a href="https://ketchup3d.github.io/app/">KetchUp — Free 3D Woodworking &amp; Furniture Design App</a></li>

</ul>
</details>

**标签**: `#Rust`, `#WebGPU`, `#3D modeling`, `#open source`, `#browser graphics`

---

<a id="item-tech-news-2"></a>
### [斯坦福 CS146S 将开源维护者引入 AI 原生工程课程](https://latent.space/p/one_million_ai_engineer_special_how_stanford_teaches_ai-native_engineering_mihail_eric_monaco/) ⭐️ 7.0/10

斯坦福 CS146S 课程在第二轮运行中调整了教学方式，由 Mihail Eric 将开源项目维护者引入课堂。课程要求学生面对一个此前不熟悉的开源仓库，理解其代码并提出修改方案。这一设计的背景是：编码智能体已能用一个提示完成上一年的作业，传统作业形式因此难以检验学生的工程能力。课程由此把重点放在适应真实仓库和提出具体改动上，而不是只完成可被智能体代劳的题目。

rss · Latent Space · 11月8日 21:23

**「背景」** 斯坦福 CS146S《The Modern Software Developer》是一门为期 10 周的课程，重点讲开发者如何借助 AI 工具把生产力提升数倍，内容涵盖提示工程、生产环境监控与安全，并使用 Cursor、Claude Code 等工具，于 2025 年秋季开课。该课程第二轮由讲师、Monaco 人工智能负责人 Mihail Eric 主讲，他邀请开源项目维护者参与课程，让学生面对维护者提出的真实问题。这一调整的背景是：编程智能体已经能够用一个提示完成上一年的作业，因此课程考核必须转向考察学生理解陌生代码库并提出有效改动方案的能力。

**「影响」** 对选修 CS146S 的学生而言，考核重心已从完成编码代理能一次性解决的作业，转向在陌生开源仓库中提出改动并接受维护者评审，课程还覆盖 Claude Code 内部机制、子代理设计与上下文工程，使其练习的技能更贴近 AI 原生开发实践。由于该课程仅第二次开设，上述教学模式的实际效果尚缺乏长期数据支撑。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://themodernsoftware.dev/">CS 146 S : The Modern Software Developer - Stanford University</a></li>
<li><a href="https://www.youtube.com/watch?v=0_JtfuXVI10">How Stanford Teaches AI Coding Now - YouTube</a></li>
<li><a href="https://www.kucoin.com/news/flash/stanford-launches-cs146s-first-ai-driven-software-engineering-course">Stanford Launches CS 146 S : The First AI -Driven Software... | KuCoin</a></li>
<li><a href="https://bulletin.stanford.edu/courses/2274401">CS146S Course | Stanford University Bulletin</a></li>
<li><a href="https://agihunt.info/en/p/1a1bd20a9898a6a323e79f01ee4">Stanford&#x27;s AI-Native Engineering Course Uses… · AGI Hunt</a></li>

</ul>
</details>

**标签**: `#AI engineering education`, `#coding agents`, `#software engineering`, `#open source`, `#curriculum design`

---

<a id="item-tech-news-3"></a>
### [三位意识研究者称当前 AI 无意识且硅基难有意识](https://the-decoder.com/the-brain-as-computer-metaphor-shaped-modern-ai-but-may-be-misleading-the-consciousness-debate/) ⭐️ 7.0/10

实验神经科学家阿尼尔·塞斯、哲学家内德·布洛克和整合信息论（IIT）提出者朱利奥·托诺尼在《Nature》评论中认为，当前 AI 并不具有意识，而且仅靠硅硬件上的计算很可能无法产生意识；这与理查德·道金斯、杰弗里·辛顿等人认为 AI 可能已有意识或可能具有意识的观点相左。他们回应 Anthropic 今年报告的 Claude 内部处理模式：这些模式虽类似可意识访问的信息处理，但 Anthropic 并不视之为主观体验的证据。评论还对照 Patrick Butlin、Robert Long 等 19 位专家（包括 Yoshua Bengio）的报告：该报告用 14 项指标评估现有系统，结论是没有系统是意识的有力候选，对语言模型仅发现其满足某一主流意识理论指标的微弱迹象，同时出于实用目的假设计算功能主义，并保留未来系统满足更多指标的可能性。塞斯等人以无梦睡眠和麻醉说明意识不同于智能，并用小脑、AlphaFold 以及大脑活动与生物组织不可分离等论证，反对“运行正确计算即可产生意识”的计算功能主义；他们还援引 IIT 和生物自然主义，称按该理论当今深度学习计算机因物理连接方式永远无法满足 IIT 条件。他们由此警告，更大的危险不是漏判 AI 意识，而是错误地将拟人化行为归因为意识。

rss · The Decoder · 11月8日 13:49

**「背景」** 计算功能主义是这场争论的底层假设：它认为意识只取决于信息处理的类型，而与载体是神经元还是硅芯片无关。这一立场可追溯到图灵 1936 年关于计算等价性的论证，以及麦卡洛克和皮茨 1943 年提出的人工神经元模型，后者推动了“大脑即计算机”的隐喻。与之相对，Tononi 提出的整合信息论（IIT）要求意识对应一个在物理上高度整合的系统，因此数字计算机按其布线方式难以满足；Butlin 等人为评估 AI 意识列出 14 项指标，但明确出于实用目的采用计算功能主义，并承认若意识依赖生物体特性，这些指标就不可靠。

**「影响」** 对 AI 开发者和政策讨论而言，这篇评论把举证责任推向认为硅基系统可能具有意识的一方，并警告把语言模型拟人化可能导致错误的道德归因。

**标签**: `#AI consciousness`, `#neuroscience`, `#philosophy of mind`, `#Nature commentary`, `#Anthropic`

---

<a id="item-tech-news-4"></a>
### [真实基准：最强 AI 编程代理仅完全完成 26.4% 任务](https://the-decoder.com/ai-coding-agents-still-need-human-cleanup-on-nearly-three-out-of-four-tasks-in-a-real-world-test/) ⭐️ 7.0/10

阿里巴巴与多所亚洲高校的研究人员发布 Co-Design Bench，用真实用户改造请求评测 AI 编程代理，任务要求根据图像、音频、视频或文档等输入改写现有 Web 应用。作者指出旧基准因模型能自行运行、检查和修复代码而普遍超过 99%、难以区分模型，而新测试中最佳模型 GPT-6 Astra 平均满足约 70% 要求，却仅完全做对 26.4% 的任务，多数情况仍留下至少一个细节需人工清理。在十个被测模型中，Claude Opus 5 和 Qwen3.8-Max 紧随其后，Grok 4.6 垫底；较大规模改造中更小的 Qwen3.8-27B 升至第二，但作者未据此推断其具有普遍优势。任务同时包含布局、设计、交互和内容等多种变更时，所有模型表现都会下降；GLM-5.2 在较小改动上消耗的 token 接近 GPT-6 Astra 的六倍，得分仍显著更低。执行框架也会改变结果：Qwen3.8-27B 在较大改造中因环境不同得分在 75% 与 56% 之间，模型排名亦会变化，因此作者建议同时报告模型与工作环境；该基准每个任务只评估一个固定请求，不含后续追问或中途修正，AI 评审也可能出错。

rss · The Decoder · 11月8日 09:50

**「背景」** 编程智能体基准用于在可重复的任务上比较模型及其工具链，但随着模型能力提升，旧测试往往接近满分，模型之间的差距变小，难以反映真实开发中的复杂需求。为弥补这一点，新基准更常从真实用户请求或长周期任务中取材，并把模型、执行环境和评测方式一起纳入考量。Co-Design Bench 正是在这一背景下出现，重点测试智能体对现有 Web 应用的多类型改动，而不仅是一次性生成代码。

**「影响」** 对采用 AI 编程代理的团队和企业而言，选型不能只看模型排行榜，而应把模型与执行框架作为组合实测，并为近四分之三未完全通过的任务预留人工复核与收尾成本。该结论来自不含中途追问的固定请求基准，实际部署仍需自行验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://benchlm.ai/agentic">Best LLMs for Agentic — October 2026 Leaderboard | BenchLM. ai</a></li>
<li><a href="https://artificialanalysis.ai/agents/coding-agents">AI Coding Agent Benchmarks &amp; Leaderboard | Artificial Analysis</a></li>
<li><a href="https://livebench.ai/">A challenging, contamination-free long-horizon AI benchmark</a></li>

</ul>
</details>

**标签**: `#AI coding agents`, `#benchmarks`, `#LLM evaluation`, `#software engineering`, `#multimodal inputs`

---