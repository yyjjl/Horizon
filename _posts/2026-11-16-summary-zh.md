---
layout: default
title: "Horizon Summary: 2026-11-16 (ZH)"
date: 2026-11-16
lang: zh
---

> 从 42 条内容中筛选出 7 条重要资讯。

---

**科技新闻**
1. [美团开源 1.6 万亿参数智能体模型 LongCat-2.5](#item-tech-news-1) ⭐️ 8.0/10
2. [Protomaps：自托管地图瓦片变得便宜且简单](#item-tech-news-2) ⭐️ 7.0/10
3. [MacBook Pro OLED 屏幕的 PWM 闪烁问题](#item-tech-news-3) ⭐️ 7.0/10
4. [理解现代大语言模型的位置嵌入](#item-tech-news-4) ⭐️ 7.0/10
5. [免训练免梯度的离散扩散引导用于 DNA/蛋白质设计](#item-tech-news-5) ⭐️ 7.0/10
6. [Claude Fable 5.2 通过代码逐笔作画](#item-tech-news-6) ⭐️ 7.0/10
7. [涉黄仁勋前伴侣公司被指牵线近 120 亿美元对华英伟达芯片订单](#item-tech-news-7) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [美团开源 1.6 万亿参数智能体模型 LongCat-2.5](https://the-decoder.com/meituan-releases-a-1-6-trillion-parameter-agent-model-that-never-touched-an-nvidia-gpu/) ⭐️ 8.0/10

美团 LongCat 团队在模型正式亮相一周后发布了 LongCat-2.5 的开放权重；这是一个面向长流程自主任务、尤其是编程的 1.6 万亿参数混合专家模型，每个 token 约激活 480 亿参数。美团称该模型完全在中国硬件上训练，并以 MIT 许可开放商用、修改和再分发。模型支持最多 100 万 token 上下文和 12.8 万 token 输出，可理解文本、图像和视频并以文本回复，还允许开关推理；图像被转换为 token 与文本一起处理，API 兼容 OpenAI 和 Anthropic 格式，可接入 Claude Code、Codex、Hermes 等代理框架。自托管指南描述由 194 颗华为升腾 Atlas A2 加速器组成的集群，其中 2 颗处理图像、64 颗处理提示输入、128 颗负责响应生成，未给出英伟达 GPU 的部署说明；团队将专家权重和激活量化为 4 位，称吞吐较 8 位版本提升约 43% 且精度不降。美团公布的基准显示，LongCat-2.5 在 Terminal Bench v2.1 得 88.4 分，低于 DeepSeek-V4.1-Flash 的 90.6、Claude Opus 5 的 89.1 和 GPT-5.6 Sol 的 88.8；在更难的 Terminal Bench v4.0 得 38.5 分，高于 GPT-5.6 Sol 的 37.3 但远低于 Opus 5 的 53.9，DeepSWE 则从 9.7 升到 64.6。这些成绩由美团自行运行，其中 BrowseComp 的 91.9 分也是在自家环境测得，独立复现前应谨慎看待。

rss · The Decoder · 11月15日 10:06

**「背景」** 美团是中国本地生活服务平台，以外卖、到店服务和旅行预订等业务闻名，近年来也投入大模型研发。LongCat-2.5 是美团 LongCat 团队在此前 LongCat-2.0 基础上推出的开放权重模型，采用混合专家（MoE）架构，即处理每个 token 时只激活部分参数。该系列模型强调面向智能体的长任务能力，并因据称完全使用中国芯片训练和部署而受到关注。

**「影响」** 对智能体开发者和希望减少 Nvidia 依赖的机构而言，LongCat-2.5 以 MIT 许可开放权重、兼容 OpenAI/Anthropic API，并给出基于 194 块华为升腾 Atlas A2 的自托管方案，使华为升腾成为可实际部署的替代路径。其性能结论主要来自美团自报基准，独立验证仍有限。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/Meituan">Meituan - Wikipedia</a></li>
<li><a href="https://promptyze.com/meituans-longcat-2-0-breaks-nvidia/">Meituan’s LongCat - 2 .0 Breaks the Nvidia Barrier... - Promptyze</a></li>
<li><a href="https://explainx.ai/blog/longcat-2-5-1-6-trillion-agent-model-2026">LongCat 2 . 5 : Meituan 1.6T Model Targets AI Agents | explainx. ai</a></li>

</ul>
</details>

**标签**: `#large language models`, `#mixture-of-experts`, `#AI agents`, `#open weights`, `#Chinese AI hardware`

---

<a id="item-tech-news-2"></a>
### [Protomaps：自托管地图瓦片变得便宜且简单](https://bruceroettgers.eu/blog/protomaps/) ⭐️ 7.0/10

一篇 Protomaps 博客文章指出，自托管地图瓦片已经变得便宜且容易，从而降低了开发者搭建自有地图基础设施的门槛。文章围绕 Protomaps 和 PMTiles 展开，讨论如何在不依赖大型商业地图服务的情况下提供地图瓦片，并兼顾成本、隐私与基础设施控制。由于现有材料没有提供更多原文细节，具体部署方式、价格数据和性能指标无法确认。该话题引发了开发者对 PMTiles、OpenFreeMap 以及实际地图托管经验的讨论。

hackernews · bcye · 11月15日 19:26 · [社区讨论](https://news.ycombinator.com/item?id=50509837)

**「背景」** 在线地图通过把地图数据切成 256 或 512 像素见方的瓦片（tile）来支持平移和缩放，瓦片既可以是栅格图片，也可以是矢量数据，常见归档格式包括 MBTiles 和 PMTiles。传统上自建地图服务需要搭设瓦片服务器，并承担较高的运维与带宽成本；PMTiles 则把整套地图打包成单个静态文件，可直接放在云存储上按需读取，无需专用后端。Protomaps 正是基于这一思路提供的免费、可定制世界地图方案。

**「实际影响」** 对个人开发者和小团队来说，Protomaps 与 PMTiles 把自建矢量底图的成本降到可以放进副业项目的程度，也让出于隐私和访问控制目的而自持地图基础设施变得可行。不过社区反馈也指出，这一低成本路线主要适用于体积较小的底图；高缩放级别的卫星影像存储会迅速增长到数百 TB，无法照搬同样的托管方式。

**「社区讨论」** 评论区普遍认为自托管对底图很实用：有人推荐完全免费、无需注册、API key 或 Cookie 的 OpenFreeMap；有人表示 Protomaps 让独立游戏实时渲染地图在成本上可行；还有人用 Cloudflare R2 自建地图基础设施，以控制隐私和访问权限，并减轻公共基础设施的负载。讨论也指出，高分辨率卫星影像会迅速变贵，全球高分辨率覆盖可能达到数百 TB，因此有人在 z17 停止；此外，现有 PMTiles 查看工具对大瓦片和部分栅格格式仍存在兼容问题。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://protomaps.com/">Protomaps - The open source map in a file</a></li>
<li><a href="https://medium.com/@erica.scaduto/building-a-mapping-application-with-open-source-tools-and-cost-effective-hosting-15b1a8f06100">Building a Mapping Application with Open-Source Tools and... | Medium</a></li>
<li><a href="https://chrisamico.com/blog/2024-02-13/self-hosted-maps/">How to make self - hosted maps that work everywhere and cost next...</a></li>

</ul>
</details>

**标签**: `#protomaps`, `#map-tiles`, `#self-hosting`, `#pmtiles`, `#openstreetmap`

---

<a id="item-tech-news-3"></a>
### [MacBook Pro OLED 屏幕的 PWM 闪烁问题](https://macanorak.com/the-macbook-pros-oled-pwm-problem-when-a-better-display-becomes-worse-to-use/) ⭐️ 7.0/10

一篇分析文章审视 MacBook Pro 的 OLED 显示屏 PWM 闪烁及其可用性影响，指出更好的显示效果也可能让对闪烁敏感的用户更难使用。文章引出的关键争议是 PWM 频率的测量与解读：有评论者查阅 240Hz 说法后提出不同结论，认为双栈串联 OLED 可能以 480Hz、180 度反相工作，在大部分可用亮度下形成约 960Hz 的有效频率。讨论还涉及闪烁敏感、显色指数和运动模糊等更广泛的显示舒适度因素，并强调这类问题对部分用户的实际影响。

hackernews · MacAnorak · 11月15日 13:15 · [社区讨论](https://news.ycombinator.com/item?id=50506719)

**「背景：PWM 调光与串联 OLED」** PWM（脉冲宽度调制）调光通过快速开关像素或背光来调节平均亮度；当开关频率不够高时，部分对闪烁敏感的人可能会感到眼睛疲劳、头痛或其他不适，且个体差异很大。苹果将串联 OLED（tandem OLED）技术引入 MacBook Pro，并将其命名为“PROLED XDR Display”，同时继续销售自 2021 年起采用 mini-LED 的机型。第三方评测测得该 OLED 面板的 PWM 频率约为 240 Hz，并指出即使存在 DC 调光，敏感用户仍可能受到影响。

**「对敏感用户的影响」** 对闪烁敏感的用户而言，MacBook Pro 的 OLED PWM 调光可能使长时间使用更易引发不适，因此评估该机型时应把实际 PWM 频率和自身敏感度纳入考量；社区对 240Hz 测量结论仍有争议，说明相关频率数据尚待更可靠验证。

**「社区讨论」** 评论者对 240Hz PWM 说法展开质疑：有人依据示波器观察和双栈 OLED 反相工作的可能性，推测实际可能是 480Hz 或有效 960Hz；也有人震惊 Apple 会采用如此低的频率，并引用研究称人可感知超过显示屏速率两倍的闪烁。另有用户补充 CRI、LCD 运动模糊等敏感因素，分享脑震荡后对屏幕更敏感的经历，同时有人表示自己基本不受影响，并希望有更多研究摸清受影响人群比例。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://macanorak.com/the-macbook-pros-oled-pwm-problem-when-a-better-display-becomes-worse-to-use/">The MacBook Pro ’s OLED PWM Problem: When a ‘Better’ Display ...</a></li>
<li><a href="https://www.notebookcheck.net/Amazing-OLED-panel-Apple-MacBook-Pro-14-PROLED-XDR-Review.1438048.0.html">Amazing OLED panel - Apple MacBook Pro ... - Notebookcheck Review</a></li>

</ul>
</details>

**标签**: `#OLED`, `#PWM flicker`, `#MacBook Pro`, `#display technology`, `#hardware usability`

---

<a id="item-tech-news-4"></a>
### [理解现代大语言模型的位置嵌入](https://magazine.sebastianraschka.com/p/understanding-positional-embeddings) ⭐️ 7.0/10

Sebastian Raschka 的文章《Understanding Positional Embeddings in Modern LLMs》介绍了现代大语言模型中的位置嵌入，并被概括为一篇面向 AI 从业者的技术深入解读，重点放在实现层面。Hacker News 上的讨论为这一主题补充了理论背景。评论者 programjames 认为，真正理解位置嵌入需要掌握群表示论，并称旋转位置嵌入是平移群的表示，而 n 维平移群 ℝⁿ 是阿贝尔群。由于提供的评论仅为节选，相关理论论证没有完整展开。

hackernews · vismit2000 · 11月15日 12:14 · [社区讨论](https://news.ycombinator.com/item?id=50506376)

**「背景」** 位置编码用于让 Transformer 在处理 token 时获得顺序信息，因为自注意力本身不区分位置。早期常见做法是学习式绝对位置向量并加到 token 表示上；现代 LLM 更常用旋转位置编码（RoPE），其优势是与注意力计算自然结合，并且扩展性优于旧式学习式绝对位置方案。Sebastian Raschka 的文章正是梳理这些不同位置编码方法及其实现，尤其是 RoPE 的工作方式。

**「影响」** 对希望弄清 Transformer 和现代 LLM 中位置编码实现方式的 AI 从业者而言，这篇文章提供了面向实现的技术梳理；讨论则提示，仅理解代码实现不足以覆盖其数学理论基础。

**「社区讨论」** 评论区的核心补充是把位置嵌入放到群表示论框架下理解，并以旋转位置嵌入与平移群的关系作为例子。由于评论节选不完整，关于如何参数化位置嵌入并使其可微、可学习的论证未能完整呈现。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://magazine.sebastianraschka.com/p/understanding-positional-embeddings">Understanding Positional Embeddings in Modern LLMs</a></li>
<li><a href="https://sebastianraschka.com/llms-from-scratch/ch04/10_rope/">Rotary Positional Embeddings (RoPE) | Sebastian Raschka , PhD</a></li>

</ul>
</details>

**标签**: `#LLMs`, `#positional embeddings`, `#transformers`, `#machine learning`, `#technical deep-dive`

---

<a id="item-tech-news-5"></a>
### [免训练免梯度的离散扩散引导用于 DNA/蛋白质设计](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA==&amp;mid=2652743221&amp;idx=3&amp;sn=7705b49c8bacec95cf19df0b474ee36d) ⭐️ 7.0/10

据新智元报道，一篇标注为 NeurIPS 2026 的论文提出一种面向离散扩散模型的免训练、免梯度引导方法，用于 DNA 和蛋白质设计。该方法的核心主张是：无需为新的设计目标重新训练模型，也不依赖梯度信息施加引导，从而区别于常见的微调或基于梯度的条件生成流程。若该主张得到实验验证，它可能为离散序列空间的生物分子生成提供更轻量的控制手段。不过目前仅能获取文章标题和来源信息，论文的具体算法、实验设置、性能数据及适用限制尚无法核实。

rss · 新智元 · 11月15日 05:52

**「背景」** 离散扩散模型把文本词元、DNA 碱基或氨基酸序列当作离散符号处理，先逐步加噪、再由神经网络反向去噪生成序列，这与在连续空间运作的图像扩散模型在状态空间上有本质差别。所谓引导（guidance）是在采样过程中注入目标性质信号（如结合亲和力或功能标签），让生成结果朝期望方向偏移；常见实现要么依赖外部分类器的梯度，要么需要额外训练一个引导网络，代价是额外的计算与训练成本。标题中的“无需训练+梯度”正是指试图同时绕开这两项依赖的引导路线，该研究以 NeurIPS 2026 为发表场合。

**「影响」** 对 DNA/蛋白质设计研究者而言，该思路若可复现，最直接的价值是省去针对每个新目标重新训练模型和计算梯度的步骤，使条件生成流程更轻量。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.alphaxiv.org/conferences/neurips/2026">NeurIPS 2026 papers | alphaXiv</a></li>

</ul>
</details>

**标签**: `#discrete diffusion models`, `#DNA/protein design`, `#training-free guidance`, `#AI for science`, `#NeurIPS`

---

<a id="item-tech-news-6"></a>
### [Claude Fable 5.2 通过代码逐笔作画](https://the-decoder.com/anthropics-claude-fable-5-2-doesnt-generate-images-it-paints-them/) ⭐️ 7.0/10

据 The Decoder 报道，Anthropic 的 Claude Fable 5.2 不依赖外部图像模型或预渲染、描摹的源图，而是生成约 1000 至 2000 行 Python 程序，驱动模拟颜料引擎在虚拟画布上逐笔作画，并模拟刷毛纹理、湿颜料附着和画布质感。Anthropic 开发者 Jake Eaton 展示了一幅停车库场景，约由 70 万笔构成；工程师 Michael Graczyk 则用 21 秒视频记录了模型从空白画布以 111 个坐标序列画出一只鸟的过程，模型无法撤销笔画，只能观察画布并覆盖修正失误。报道还称，模型会为人物设定虚构背景和一致风格，在 280 笔的黄昏场景中事后重绘被光效涂抹的颜料管和杯子。Anthropic 内部 RoboDojo Sim 基准显示，Fable 5.2 得分 64.9%，高于 OpenAI GPT-6 Astra 的 29.8%；但在真实机械臂测试中，Astra 绘画更快，且目前只有 Astra 成功把多米诺骨牌立起来，表明 Fable 5.2 在精细运动控制上仍有局限。

rss · The Decoder · 11月15日 15:42

**「背景」** 当前主流图像生成模型多采用扩散方法，从噪声逐步细化出图像；Claude Fable 5.2 的不同之处在于让语言模型编写 Python 代码，在虚拟画布上逐笔模拟刷毛、湿颜料和画布纹理，因此每一笔都要明确坐标且无法撤销。Anthropic 还用内部 RoboDojo Sim 基准测试双臂机器人控制，称 Fable 5.2 在最高努力档位得分 64.9%，高于 GPT-6 Astra 的 29.8% 和 Fable 5.1 的 27.6%。这些数字来自厂商内部运行，适合作为理解其展示方式的背景，而不宜直接视为独立验证的普遍性能结论。

**「影响」** 对图像生成开发者而言，这种以 Python 程序逐笔绘制、事后自行覆盖修改的方式，让输出比扩散模型更可检查、可干预；但 Anthropic 内部 RoboDojo Sim 上 64.9% 对 29.8% 的分数优势，并未在真实机械臂测试中转化为速度与精细动作控制上的领先。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/claude-fable-and-mythos-5-2">Introducing Claude Fable 5 . 2 and Claude Mythos 5 . 2 \ Anthropic</a></li>

</ul>
</details>

**标签**: `#Anthropic`, `#Claude`, `#image generation`, `#multimodal AI`, `#benchmarks`

---

<a id="item-tech-news-7"></a>
### [涉黄仁勋前伴侣公司被指牵线近 120 亿美元对华英伟达芯片订单](https://the-decoder.com/firm-linked-to-jensen-huangs-ex-lover-reportedly-brokered-nearly-12-billion-in-nvidia-chip-orders-for-china/) ⭐️ 7.0/10

据《华尔街日报》查阅的文件，与黄仁勋前伴侣爱丽丝·黄（Alice Huang）有关联的 Megaspeed 在 2024 年 3 月至 2025 年 6 月间，为中国公司安排了价值近 120 亿美元的英伟达高性能芯片订单，涉及数十万颗受美国出口管制影响的芯片。报道称，Megaspeed 作为英伟达云合作伙伴获得了稀缺 AI 芯片的优先渠道，部分原因可能是阿里巴巴是其大客户；这些芯片被运往与中国科技巨头有长期业务往来的中国买家。此事凸显美国出口管制下受限 AI 芯片可能经第三方渠道流入中国的审查风险。Megaspeed 向路透社表示，爱丽丝·黄已于 2025 年 8 月 30 日正式离开公司、目前无任何职务，公司开展的是“合法合规业务”，并已聘请外部律师进行内部调查；《纽约时报》2025 年 10 月曾报道，该公司因是否帮助中国客户获取受出口管制芯片而接受调查。英伟达官方披露六个月中国营收为 124 亿美元、占总营收 7%，但做空机构 Culper Research 估计上一财年超过 20%的营收来自中国客户，其中相当一部分可能通过间接渠道完成。

rss · The Decoder · 11月15日 14:45

**「背景」** 美国对华出口管制旨在阻止先进 AI 芯片流入中国，使英伟达高性能 GPU 成为受许可限制的稀缺资源。Megaspeed 是英伟达云合作伙伴，Alice Huang 于 2023 年 3 月成为其控股股东，并曾担任董事总经理约八个月；公司称她已于 2025 年 8 月 30 日正式离开。2025 年 10 月，《纽约时报》报道 Megaspeed 因是否帮助中国客户获取受出口管制的英伟达芯片而接受调查，公司则称其业务合法并聘请外部律师进行内部调查。

**「影响」** 这一报道加大了 Nvidia 云合作伙伴及中介渠道的合规审查压力，依赖此类渠道获取受限 AI 芯片的中国企业可能面临更严格的尽职调查和交付不确定性。相关指控尚未得到证实，Megaspeed 已否认违规，且此前的现场检查据报道未发现违规证据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.bbc.com/news/articles/cmdx1vpprk9vo">Suspected China spy linked to Nvidia &#x27;s ex-boss left in 2025...</a></li>
<li><a href="https://www.cnbc.com/2026/11/12/nvidia-megaspeed-alice-huang-jensen-.html">What we know so far about Nvidia partner Megaspeed ’s Asia footprint</a></li>
<li><a href="https://www.breitbart.com/tech/2026/11/10/the-china-problem-stock-researchers-identified-nvidia-ceo-jensen-huangs-troubling-relationship-6-months-ago/">&#x27;The China Problem&#x27;: Stock Researchers Identified Nvidia CEO...</a></li>

</ul>
</details>

**标签**: `#Nvidia`, `#AI chips`, `#export controls`, `#China`, `#tech regulation`

---