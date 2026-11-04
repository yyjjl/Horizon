---
layout: default
title: "Horizon Summary: 2026-11-04 (ZH)"
date: 2026-11-04
lang: zh
---

> 从 41 条内容中筛选出 10 条重要资讯。

---

**科技新闻**
1. [Postman 被指静默安装 AI 插件并共享 API 数据](#item-tech-news-1) ⭐️ 8.0/10
2. [PostgreSQL 内部机制指南与 HOT 更新调优讨论](#item-tech-news-2) ⭐️ 7.0/10
3. [Stringman：800 美元的开源房间级抓取机器人](#item-tech-news-3) ⭐️ 7.0/10
4. [本地 Qwen 3.8 27B 复现权重解读示例](#item-tech-news-4) ⭐️ 7.0/10
5. [飞机背景噪声可用于精确定位视频拍摄地点](#item-tech-news-5) ⭐️ 7.0/10
6. [DeepMind 展示 Antigravity 智能体化学信息学工作流](#item-tech-news-6) ⭐️ 7.0/10
7. [OpenAI 称 GPT-6 Astra 不到一周设计 Codex 兼容硬件](#item-tech-news-7) ⭐️ 7.0/10
8. [斯坦福研究：大模型能力结论快速过期](#item-tech-news-8) ⭐️ 7.0/10
9. [英伟达据报要求云客户减少中国业务](#item-tech-news-9) ⭐️ 7.0/10
10. [华为据报要求客户自行采购 AI 芯片内存，黑市升温](#item-tech-news-10) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Postman 被指静默安装 AI 插件并共享 API 数据](https://github.com/postmanlabs/postman-app-support/issues/14370) ⭐️ 8.0/10

一则被广泛讨论的 GitHub 支持议题指控 Postman 静默自动安装 AI 插件，并试图共享全部 API 数据，引发开发者对这款常用 API 工具隐私与遥测行为的担忧。该议题在 Hacker News 上获得 1063 分和 351 条评论，但相关核心指控目前仅来自该议题及社区报告，尚未见到独立验证。评论者称，Postman 会记录每次 API 请求的详细信息，包括查询参数；若使用 \`\{\{some\_secret\}\}\` 模板填充参数，实际密钥内容也会被发送到 Postman 服务器，而阻断该日志端点会导致应用无法正常工作。还有从事医疗行业的开发者表示，其网络安全团队因此撤销了 Postman 的认证并转向 Bruno。上述说法涉及具体隐私与合规风险，但在获得进一步证据前应视为未经证实的社区指控。

hackernews · sidgarimella · 11月3日 17:22 · [社区讨论](https://news.ycombinator.com/item?id=50354960)

**「背景」** Postman 是广泛使用的 API 调试与测试客户端，开发者用它保存请求、集合和环境变量，并在运行时把 \`\{\{some\_secret\}\}\` 这类模板变量解析为真实值。Postman 也提供面向 AI 编码代理的集成，例如 Postman CLI 可让代理在编辑器中运行集合和 API 工作流；此次 GitHub issue 指向的争议还包括桌面端自动安装 Codex/Claude 插件，以及安装器尝试自行批准钩子。关键背景在于，API 客户端若记录请求元数据或遥测，解析后的密钥是否会被一并上报，直接关系到开发者数据的隐私与合规风险。

**「影响」** 处理敏感 API 数据的团队，尤其是医疗等受监管行业的用户，可能需要重新评估 Postman 的合规性与遥测设置；社区报告称模板化密钥会被记录，已有医疗团队因此将该工具移出工具链，而 Postman 官方则宣称已实现 HIPAA 合规。

**「社区讨论」** 社区讨论几乎一边倒地批评 Postman 变得臃肿缓慢，并把强制登录、数据收集、订阅和 AI 功能视为其高估值商业化带来的负担；多名开发者表示已转向 Bruno，看重其可将请求定义存入 Git。在提供的评论中，也有人质疑还有谁在使用 Postman，并分享已不再需要这类工具的经验，未出现为其数据做法辩护的观点。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/postmanlabs/postman-app-support/issues/14370">[SEVERE] Desktop auto - installs Codex/Claude plugins ; installer...</a></li>
<li><a href="https://www.postman.com/">API engineering for your agents</a></li>
<li><a href="https://blog.postman.com/postman-is-hipaa-compliant/">Postman is HIPAA-Compliant | Postman Blog</a></li>
<li><a href="https://www.postman.com/security/">Postman Security - Compliance, Privacy, &amp; Reliability</a></li>

</ul>
</details>

**标签**: `#postman`, `#privacy`, `#telemetry`, `#developer-tools`, `#api-testing`

---

<a id="item-tech-news-2"></a>
### [PostgreSQL 内部机制指南与 HOT 更新调优讨论](https://www.interdb.jp/pg/index.html) ⭐️ 7.0/10

一篇系统讲解 PostgreSQL 内部机制的技术指南在 Hacker News 上受到关注，内容覆盖 SSI、HOT 更新、zHeap 与 TOAST 等主题。该指南本身是已有参考资料，而非新版本或新功能发布，但其技术深度使讨论集中在可落地的调优经验上。评论指出，HOT 更新只有在没有索引列发生变化且新元组能放入同一数据页时才会触发，因此在频繁更新的列上建索引会抑制 HOT。更新频繁的表可将 fillfactor 调低到约 80–90 以保留页内空间，并通过比较 pg\_stat\_user\_tables 中的 n\_tup\_hot\_upd 与 n\_tup\_upd 观察效果；相关评论在该处被截断。

hackernews · ibobev · 11月3日 21:51 · [社区讨论](https://news.ycombinator.com/item?id=50358702)

**「背景」** 《The Internals of PostgreSQL》是 Hironobu SUZUKI 在 InterDB 上发布的在线技术文档，旨在解释 PostgreSQL 各子系统如何工作，并呈现整体架构图景。PostgreSQL 的内部机制庞大且复杂，理解这些机制对数据库管理和系统集成都很关键，但学习门槛较高，这正是该文档试图解决的问题。

**「影响」** 对 PostgreSQL 开发者而言，在频繁更新列上建索引会抑制 HOT，而将 fillfactor 设为约 80–90 可为 HOT 保留页内空间。

**「社区讨论」** 评论者普遍认为 HOT 章节最具直接实践价值，并补充了触发条件、fillfactor 调优和用 n\_tup\_hot\_upd/n\_tup\_upd 观察 HOT 比例的经验。另有评论提到，Jepsen 关于 particledb 的最新报告重新引发了对 PostgreSQL SSI 实现的兴趣，并建议结合 zHeap 与 TOAST 的说明建立整体心智模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.interdb.jp/pg/">Hironobu SUZUKI @ InterDB</a></li>
<li><a href="https://www.interdb.jp/">Hironobu SUZUKI @ InterDB</a></li>

</ul>
</details>

**标签**: `#PostgreSQL`, `#database internals`, `#HOT updates`, `#SSI`, `#technical documentation`

---

<a id="item-tech-news-3"></a>
### [Stringman：800 美元的开源房间级抓取机器人](https://neufangled.com/) ⭐️ 7.0/10

Stringman 是一款售价 800 美元、开源的房间级抓取机器人，在 Hacker News 上引发讨论，创作者 Nathaniel（用户名 nhnifong）在评论区直接回答提问。该项目采用缆索驱动方案，使抓取装置能够在房间尺度内移动并执行抓取任务。创作者表示，设备的张力限制会在拉力过大时放线，因此大概率不会造成致命伤害；在有吊扇的房间中通常也能使用，因为可以降低工作区域的上限来避开吊扇。现有讨论还集中在园艺场景，例如用旋转刀片和计算机视觉识别并清除杂草，但这些仍是社区设想而非已验证功能。

hackernews · nharada · 11月3日 16:47 · [社区讨论](https://news.ycombinator.com/item?id=50354358)

**「背景」** Stringman 属于缆索驱动并联机器人（CDPR）：四个电机固定在天花板，通过收放缆索共同牵引夹爪，从而在不占用桌面、也不依赖轮式或腿式移动平台的情况下覆盖整个房间。该项目的设计目标是以较低成本实现房间尺度操作，给出的工作空间为 7×7×3 米，平均负载约 1.9 千克。它同时提供 CAD 文件、固件和控制算法，便于用户自行搭建与改装。

**「影响」** 对机器人爱好者和开源硬件开发者来说，Stringman 以 800 美元价位、缆索驱动和房间级工作范围提供了一个可探索的低成本平台，但其负载、精度与长期可靠性仍缺少公开数据。

**「社区讨论」** 创作者在评论中回应了安全性、吊扇环境和家庭使用等疑问；一位实践者分享了用两台高速绞盘搭建花园缆索平台的经历，称可把自己升降约 4 英尺。其他读者提出给机器人装旋转刀片并结合计算机视觉除草，同时担心避开较高植株和刀片反作用力，也有人以类人机器人和“Tension is all you need”的玩笑表达观望。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://neufangled.com/">Stringman from Neufangled Robotics</a></li>
<li><a href="https://neufangled.com/stringman">Stringman | Neufangled Robotics</a></li>
<li><a href="https://todayforai.com/en/items/art-1bc4ddd8-46f">Stringman: $800 Open-Source Room-Scale Cable-Driven Gripper Robot</a></li>

</ul>
</details>

**标签**: `#open-source hardware`, `#robotics`, `#room-scale robotics`, `#DIY robotics`, `#cable-driven robots`

---

<a id="item-tech-news-4"></a>
### [本地 Qwen 3.8 27B 复现权重解读示例](https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/) ⭐️ 7.0/10

Simon Willison 报告，他在笔记本上以 17GB 的 Q4\_K\_M 量化版 Qwen 3.8 27B（经 LM Studio 运行）复现了《Sparks of Weight-Space Programming》中的“从权重判断游戏”示例，模型在读取 Pac-Man 的原始浮点权重后给出了简化 Pac-Man 风格网格游戏的判断，置信度 72%，并识别出 Pong。该次运行耗时 46 分 12 秒、消耗 43,506 个推理 token，且需要调大默认 8192 的上下文窗口并提高超时；作为对照，Kimi K3.1 Pro 经 OpenRouter 在 9 分 41 秒、19,493 个推理 token 后猜中 Breakout。原论文由 Rikiya Takehi、Jayden Teoh、Alex Zhang 和 Omar Khattab 发布，称 GPT-6 Astra 能仅凭权重判断网络功能，并通过原生编辑 0.016% 的权重把 Qwen3.5-0.8B 的 MATH-500 从 7.9% 提升到 48.1%，但作者把它归类为博客文章，Matthew Honnibal 和 Sean Goedecke 也批评其混淆了无工具权重解读与借助代码修改权重。Willison 的测试聚焦无工具解读，属于单个轶事性复现，并非同行评审结果。

rss · Simon Willison · 11月3日 16:29 · [社区讨论](https://news.ycombinator.com/item?id=50355251)

**「背景」** 所谓“权重空间编程”（Weight-Space Programming）由 Rikiya Takehi、Jayden Teoh、Alex Zhang 和 Omar Khattab 在《Sparks of Weight-Space Programming: LLMs can natively read &amp; write neural network weights》中提出，指 LLM 直接阅读以浮点数文本形式给出的神经网络权重，并据此判断网络功能或修改权重，而不运行代码或训练循环。该文以 GPT-6 Astra 为例，称其仅凭原始权重就能识别网络训练目标，甚至无需梯度、仅编辑少量权重来改变模型行为；作者也把这篇“论文状”文章归类为博客文章。Simon Willison 测试的是其中无工具、单次回答的实验：把四个在 10×10 网格上玩 Breakout、Pong、Pac-Man、Freeway 的策略网络权重交给模型，让它只根据权重猜出对应游戏。

**「影响」** 对本地 LLM 用户和可解释性研究者来说，最直接的后果是：消费级硬件上的 27B 量化模型也能复现论文中的权重解读任务，从而降低该方向的门槛；但单个示例、72% 置信度及评论中的正确性质疑表明，这还不能作为模型真正理解权重的证据。

**「社区讨论」** 评论者意见分歧：variaga 借用莎士比亚台词质疑“能解释权重”是否等于解释正确，data-ottawa 追问 Qwen 3.8 能否修改自身权重、多少表现来自训练记忆，layer8 则担忧机器以不可理解的方式编辑自身权重。zkmon 则高度评价 Qwen 3.8 27B，认为在人类充当架构师或技术负责人时它能完成接近前沿模型的工作。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://rikiyat.github.io/blog/weight-space-programming/">Sparks of Weight - Space Programming : LLMs can natively read ...</a></li>
<li><a href="https://simonwillison.net/2026/Nov/3/qwen-can-interpret-model-weights/">Qwen 3.8 27B on my laptop can interpret model weights , too</a></li>
<li><a href="https://www.youtube.com/watch?v=r8sZgPx4jYA">LLMs Can Now Read and Write Neural Network Weights - YouTube</a></li>

</ul>
</details>

**标签**: `#weight-space programming`, `#LLM interpretability`, `#model weights`, `#Qwen`, `#local LLMs`

---

<a id="item-tech-news-5"></a>
### [飞机背景噪声可用于精确定位视频拍摄地点](https://simonwillison.net/2026/Nov/3/a-sound-that-leaks-your-exact-location/) ⭐️ 7.0/10

Simon Willison 在博客中介绍 Colsto 的一项 OSINT 演示：从视频音轨中提取几乎难以察觉的飞机背景噪声，并据此还原飞机的多普勒曲线。随后将曲线与 ADS-B 数据交叉比对，利用飞机速度、距离以及不同航班之间的间隔，推断视频的精确拍摄位置。该方法的特别之处在于，普通视频中常被忽略的环境声也可能成为地理定位线索，因而具有直接的隐私影响。

rss · Simon Willison · 11月3日 05:32

**「多普勒与 ADS-B 定位原理」** 多普勒效应是指声源与观察者相对运动时，接收到的声音频率会发生偏移；飞机飞越时，这种频移会在频谱图上形成可测量的多普勒曲线。ADS-B 是飞机公开广播位置、高度、速度等信息的系统，相关记录可用于重建航班轨迹。该演示把视频中微弱飞机噪声的频移测量与 ADS-B 航班数据对应起来，并利用飞越时间间隔等约束缩小候选地点。

**「影响」** 对上传公开视频的用户而言，这意味着即使画面未暴露地点，音轨中的飞机噪声也可能被用于精确定位，视频发布前应评估环境音带来的隐私风险。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=UytYrhYLOKI">I discovered a sound that leaks your exact location ... - YouTube</a></li>
<li><a href="https://github.com/1337isnot1337/DOPPLERGEIST">GitHub - 1337isnot1337/DOPPLERGEIST: A tool to geolocate audio...</a></li>

</ul>
</details>

**标签**: `#privacy`, `#OSINT`, `#geolocation`, `#signal-processing`, `#YouTube`

---

<a id="item-tech-news-6"></a>
### [DeepMind 展示 Antigravity 智能体化学信息学工作流](https://deepmind.google/blog/agentic-cheminformatics-with-google-antigravity/) ⭐️ 7.0/10

Google DeepMind 发布并展示了与 Google Antigravity 配合的新 Cheminformatics Skills，用于加速药物发现中的数据分析与候选分子设计。该工作流以真实肺癌治疗药物为例，让智能体检索数千种化合物、执行匹配分子对分析（MMPA），并在一小时内提出带有合成路线的新型刚性化大环化合物；同类单次迭代过去通常需要数天。这些技能基于 RDKit，并连接 ChEMBL 与 PubChem，采用语言模型负责流程编排、数据库导航和科学推理、确定性化学工具执行分子计算的协作分工。在 crizotinib 到 lorlatinib 的案例中，分析显示环化可减少可旋转键并总体提高效力；crizotinib 有五个主要可旋转键，而 lorlatinib 的有效可旋转键数降至零。DeepMind 同时强调，稀疏数据、实验室间检测噪声和窄动态范围会限制预测精度，计算设计只是可检验假设而非成品药物，仍需合成和实验验证；相关技能今天已可在 Antigravity 中通过 Science 插件使用，并提供企业账号路径及 1 万名科学家 6 个月最高使用层级免费名额。

rss · Google DeepMind Blog · 11月3日 17:01

**「背景」** Google Antigravity 是 Google 的智能体优先开发平台，用户可在其中构建并运行由 AI 智能体驱动的任务。此次涉及的 Cheminformatics Skills 属于其 Science Skills，目标是以更好的领域基础和更高的 token 效率加速科学工作流，并连接 AlphaGenome、AFDB、UniProt 等 30 多个数据库与工具。在化学信息学中，RDKit 是长期由全球社区维护的开源工具包，ChEMBL 和 PubChem 则提供化合物与生物活性数据，这些基础使智能体能够把语言模型的推理与确定性的分子计算结合起来。

**「影响」** 对药物发现科学家和计算化学团队而言，这套工作流把化合物数据整理、MMPA 和候选大环设计压缩到约一小时，能更快生成有依据的设计假设，但产出仍需实验验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/google-deepmind/science-skills">GitHub - google - deepmind / science - skills : GDM Science Skills to...</a></li>
<li><a href="https://antigravity.google/">Google Antigravity</a></li>

</ul>
</details>

**标签**: `#agentic AI`, `#cheminformatics`, `#drug discovery`, `#AI for science`, `#Google DeepMind`

---

<a id="item-tech-news-7"></a>
### [OpenAI 称 GPT-6 Astra 不到一周设计 Codex 兼容硬件](https://the-decoder.com/openai-says-gpt-6-astra-designed-a-hardware-device-from-scratch-in-under-a-week/) ⭐️ 7.0/10

OpenAI 称其硬件团队用 GPT-6 Astra 设计了一款让用户与 Codex 编程智能体对话的设备，作为副项目在不到一周内完成。据 OpenAI 说法，Astra 负责了从外壳设计、含元件选型和走线布线的 PCB 布局，到固件和用户界面的所有环节；代工厂在不到一个月内生产了小批量原型。但由于 Astra 并非总能考虑制造约束、公差和装配细节，原型经历了几轮修改。OpenAI 还称，一个未披露细节的新“内部模型”在 BenchCAD 2.0 上得分 0.875，而 GPT-6 Astra 在最高推理级别得 0.594；该基准测试模型重建 3D 零件和装配体并识别 PCB 连接的能力。OpenAI 表示其硬件团队在机器人和计算基础设施等领域使用 Codex 和 ChatGPT 处理 CAD 模型、制造图纸和仿真，自 2 月以来 token 使用量增长 23 倍，同时 OpenAI 正在自研一款据称介于 AI 音箱和智能手机之间的硬件设备。

rss · The Decoder · 11月3日 20:15

**「背景」** BenchCAD 是一项面向程序化 CAD 的基准，要求模型生成可执行的 CadQuery 代码来重建零件与装配体，并按实际执行后的几何结果评分；其 2.0 版本覆盖 106 个工业零件族、约 17,900 个经执行验证的程序，其中约一半锚定 ISO、DIN、EN、ASME、IEC 等规范表。硬件设计中的 PCB 布局还涉及元件选型、走线，以及制造公差和装配约束，这些通常需要多轮工程修订。Codex 是 OpenAI 的编程智能体，新闻中的设备被描述为可供用户通过它进行交互。

**「影响」** 对硬件团队和 AI 辅助设计工具开发者来说，若该案例得到独立复现，端到端 AI 设计可能压缩原型周期；但 OpenAI 未披露内部模型细节，且原型因制造公差与装配问题多次返工，短期仍需人工工程审核。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://benchcad.com/">BenchCAD — a benchmark for programmatic CAD</a></li>
<li><a href="https://github.com/BenchCAD-org/benchcad-2">GitHub - BenchCAD -org/ benchcad - 2 : BenchCAD ...</a></li>
<li><a href="https://alloevil.github.io/llm-benchmarks-tracker/b/benchcad/">BenchCAD — scores, sources, status | LLM Benchmarks Tracker</a></li>
<li><a href="https://interestingengineering.com/ai-robotics/openai-gpt-6-hardware-design-prototype">OpenAI designs working hardware device in under one week with...</a></li>
<li><a href="https://openai.com/index/accelerating-engineering-for-the-physical-world/">Accelerating engineering for the physical world | OpenAI</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#AI hardware design`, `#GPT-6 Astra`, `#PCB design`, `#BenchCAD`

---

<a id="item-tech-news-8"></a>
### [斯坦福研究：大模型能力结论快速过期](https://the-decoder.com/rapid-llm-development-is-outrunning-the-research-meant-to-explain-it-study-finds/) ⭐️ 7.0/10

斯坦福研究者 Owen Queen 和 James Zou 用 20 个模型检验了 50 条被广泛引用的大语言模型结论，发现 44% 已经“过期”。在 22 条有预计过期时间的结论中，平均寿命仅 15.7 个月；这些结论涉及的模型由 8 家开发商在 2024 年 7 月至 2026 年 9 月间发布，另有 34% 明显减弱，16% 仍成立，6% 反而增强，发布一年后 16% 过期、两年后升至 39%。关于模型“不能做什么”的结论过期最快：9 条推理相关发现中 5 条已过期，且无一保持或增强，涉及“strawberry”字母计数、陌生进制算术、长上下文中间信息丢失以及被用户反驳后放弃正确答案等；偏好和倾向类结论更持久，包括模型作为评估者偏爱自身答案、谄媚倾向、左倾政治偏见、开放式问题答案趋同和随机数分布不均。在科学引用伪造案例中，GPT-3.5 在原研究中有 55% 参考文献系编造，现测 GPT-6.1 Sol 为 0%、Claude Sonnet 5.5 为 1%，但 2026 年的 Qwen3.7-Flash 仍达 69%；在两跳问题中，Claude Sonnet 5.5 即使两个子问题都答对，仍有约 10% 的失败率，说明不能据此认为问题已消失。同一发布窗口内模型差异也很大：2026 年 7 月至 9 月发布的模型中，过期结论数从 DeepSeek V4 Pro 的 11 条到 GPT-6.1 Sol 的 30 条不等，发布者、日期和规模都不能可靠预测；作者因此主张把 LLM 实证结论表述为特定模型在特定时间的观察，并记录模型、版本和日期、公开提示词与分析代码以便复测。

rss · The Decoder · 11月3日 19:41

**「研究背景」** 这项研究考察的是大语言模型实证结论的可复现性：所谓“过期”，指原论文中的效应在后续模型上不再成立或显著减弱。James Zou 是斯坦福大学生物医学数据科学副教授，其研究包括让 AI 更可靠、更符合人类需求且更具统计严谨性，这为理解该研究的评测取向提供了背景。

**「影响」** 对 AI 研究者和依据评估结论做模型选型的团队而言，继续把旧结论当作通用事实会迅速失真，因此论文与内部评估都应记录模型、版本和日期并公开提示词与代码，以便在新模型上复测。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://biox.stanford.edu/people/james-zou">James Zou - Associate Professor of Biomedical Data Science and...</a></li>

</ul>
</details>

**标签**: `#large language models`, `#AI research`, `#model evaluation`, `#reproducibility`, `#research methodology`

---

<a id="item-tech-news-9"></a>
### [英伟达据报要求云客户减少中国业务](https://the-decoder.com/nvidia-pushes-cloud-customers-to-cut-back-on-china-business/) ⭐️ 7.0/10

据 The Information 援引三名知情人士报道，英伟达已要求部分云客户减少来自中国公司的业务，并披露使用相关芯片的最终用户身份，目的是推动包括英伟达支持的 neocloud 在内的云提供商形成更多元的客户结构。该指导并非强制，且适用于未来合同而非现有交易；《金融时报》称，这一要求是通过销售代表和区域团队口头传达的。此举针对美国芯片出口管制的缺口：现行规则限制芯片出货，但通常不涵盖通过云服务进行的远程访问，使中国 AI 开发者可在海外数据中心租用先进英伟达芯片而无需进口硬件。报道提到，美国当局此前在有关 Moonshot AI 的指控出现后，曾调查中国 AI 公司通过海外数据中心获取此类芯片的情况。

rss · The Decoder · 11月3日 12:22

**「背景」** 美国对华芯片出口管制主要针对先进 Nvidia 芯片的实物出口，而通过境外云服务远程租用算力长期不在规则覆盖范围内，中国 AI 公司因此可以在第三国数据中心使用这些芯片而无需进口硬件。2026 年围绕 Moonshot AI（Kimi 系列模型开发者）的指控让这一“云访问缺口”受到关注：有报道称白宫官员指其使用了受管制的 Nvidia 芯片，美国立法者也在讨论封堵该漏洞，并已有新规拟禁止中国企业租用第三国数据中心内的 Nvidia GPU。Nvidia 此次要求云客户减少来自中国公司的业务并披露最终用户，正是在这一监管背景下以非强制方式先行收紧。

**「影响」** 云服务商（尤其是英伟达支持的 neocloud）在未来合同中可能面临减少中国客户占比并披露最终用户身份的压力，依赖海外云算力的中国 AI 开发者也可能遭遇更多审查与摩擦。但该指导并非强制且不追溯既有合同，实际影响取决于执行力度。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/08/19/china-ai-nvidia-chips-us-export-controls.html">China AI firms tap Nvidia power overseas as U.S ... - CNBC</a></li>
<li><a href="https://www.forbes.com/sites/viviantoh/2026/08/31/the-ai-chip-wars-new-front-control-the-cloud-not-the-silicon/">The U.S. Tried To Keep AI Chips From China. The Cloud Created ...</a></li>
<li><a href="https://www.cnbc.com/2026/07/23/moonshot-kimi-nvidia-ai-chips-export-ban.html">China&#x27;s Moonshot AI accessed banned Nvidia chips, U.S ... - CNBC</a></li>

</ul>
</details>

**标签**: `#Nvidia`, `#AI chips`, `#export controls`, `#cloud computing`, `#China`

---

<a id="item-tech-news-10"></a>
### [华为据报要求客户自行采购 AI 芯片内存，黑市升温](https://the-decoder.com/huawei-tells-customers-to-find-their-own-ai-chip-memory-effectively-outsourcing-procurement-to-the-black-market/) ⭐️ 7.0/10

据 The Information 报道，在美国制裁和供应短缺的背景下，华为正要求部分客户自行为其 AI 芯片采购内存，实际上把采购压力推向黑市渠道。华为计划在明年初推出 Ascend 960DT，并声称其性能将比现有芯片翻倍，但其中国供应商无法生产足够的高带宽内存（HBM），而美国出口规则又阻止其直接向合计占全球市场八成以上的三星和 SK 海力士采购。走私者据称将 HBM 与性能低于出口门槛的廉价服务器处理器捆绑，经香港运入中国，再由作坊拆下内存；这一流程脆弱且错误率高，但利润足以维持。深圳一名经纪人称，走私 HBM3E 的单价在一年内从数百美元涨到约 4000 美元，每颗 AI 芯片需要六到八颗，仅内存成本最高可达 3.2 万美元。韩国海关截至 5 月查获的贸易违规金额已达 5.6 亿美元，超过此前全年纪录，其中三分之一涉及芯片等战略物资的无证出口或虚假申报。

rss · The Decoder · 11月3日 11:47

**「背景」** HBM（高带宽内存）通过堆叠 DRAM 芯片提供远超普通内存的带宽，是 AI 加速器训练和推理的关键配套器件。美国出口管制限制先进 AI 芯片及 HBM 对华出口，而三星和 SK 海力士合计占全球 HBM 市场八成以上，使中国厂商难以直接获得供应。华为的 Ascend 系列是其对标英伟达的 AI 芯片产品线，内存供应因此成为其扩产的关键瓶颈。

**「影响」** 对华为客户而言，自行采购意味着承担更高的成本和合规风险，因为单颗 AI 芯片所需 HBM 的黑市成本最高可达 3.2 万美元。

**标签**: `#Huawei`, `#AI chips`, `#HBM`, `#export controls`, `#semiconductor supply chain`

---