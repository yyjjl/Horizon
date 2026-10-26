---
layout: default
title: "Horizon Summary: 2026-10-26 (ZH)"
date: 2026-10-26
lang: zh
---

> 从 29 条内容中筛选出 6 条重要资讯。

---

**科技新闻**
1. [OpenAI 与 Anthropic 为何大幅降价](#item-tech-news-1) ⭐️ 7.0/10
2. [Nvidia 开源机器人视频标注引擎 Flora](#item-tech-news-2) ⭐️ 7.0/10
3. [Jack Clark 将递归自我改进预测提前至 2027 年](#item-tech-news-3) ⭐️ 7.0/10
4. [Anthropic 建议以单代理取代多子代理并发布迁移工具包](#item-tech-news-4) ⭐️ 7.0/10
5. [OpenAI 据报以最高 90%折扣争夺 Anthropic 大客户](#item-tech-news-5) ⭐️ 7.0/10
6. [OpenMobile-2：应用多样性提升开源手机智能体表现](#item-tech-news-6) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [OpenAI 与 Anthropic 为何大幅降价](https://minimaxir.com/2026/10/cheap-llms/) ⭐️ 7.0/10

minimaxir 的文章讨论 OpenAI 和 Anthropic 为何在几个月内将大语言模型（LLM）价格最多下调 80%，并把竞争、推理成本、开放模型和 AI 商业经济学列为主要解释方向。这一降价幅度之所以重要，是因为它直接影响开发者调用模型的成本、厂商的推理利润空间，以及闭源模型面对更便宜替代品时的定价能力。不过，目前可见的信息只有降价幅度和讨论主题，文章正文未提供，因此具体涉及哪些模型、各次调价的时间表、推理成本数据和降价可持续性都无法核实。在缺少正文的情况下，只能确认这是一场围绕降价原因及其可持续性的讨论。

hackernews · minimaxir · 10月25日 21:11 · [社区讨论](https://news.ycombinator.com/item?id=50236102)

**「背景」** 大语言模型 API 通常按每百万输入或输出 token 计价，实际单位成本受推理硬件利用率、批处理、缓存命中率和规模效应影响，因此厂商可以在不公开底层成本的情况下调整价格。2026 年这轮降价中，OpenAI 的 GPT-5.6 Luna 在 7 月降价 80%，Anthropic 的 Opus 5.5 则大幅下调缓存读取费用，使其相对 Opus 5 的总成本下降 40%–60%；这些变化为讨论“为何大幅降价”提供了具体背景。

**「影响」** 对依赖 OpenAI 和 Anthropic API 的开发者与团队而言，数月内最高达 80% 的降价直接降低了推理调用成本，使高并发或大批量 LLM 应用更可行；但实际节省幅度取决于具体模型、调用量和各厂商价目表，不能按最高降幅一概而论。

**「社区讨论」** 评论区对降价原因看法不一：一派强调竞争和更便宜的开放模型替代，有用户称因“网络安全”拦截而转向 Kimi、GLM；另一派从推理优化和单位 GPU 收入角度认为降价仍有空间。也有评论质疑 LLM 是否真是可行业务、低价是否由用户输出补贴，以及厂商推动监管是否意在限制中国开放模型。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://emergent.sh/news/openai-anthropic-slash-llm-prices-up-80-2026">OpenAI and Anthropic Slash LLM Prices Up to 80% in 2026</a></li>
<li><a href="https://daily.dev/posts/openai-and-anthropic-cut-their-llm-prices-by-up-to-80-within-a-few-months-why--qwjt9m0rl">OpenAI and Anthropic cut their LLM prices by up to 80%...</a></li>

</ul>
</details>

**标签**: `#LLM pricing`, `#AI economics`, `#OpenAI`, `#Anthropic`, `#inference costs`

---

<a id="item-tech-news-2"></a>
### [Nvidia 开源机器人视频标注引擎 Flora](https://the-decoder.com/nvidia-open-sources-flora-to-make-robot-video-labeling-125x-cheaper-than-gpt-6-astra/) ⭐️ 7.0/10

Nvidia 开源了机器人视频标注引擎 Flora，为机器人学习数据管线提供低成本开源方案，称其能同时生成动作描述、逐步进度评分和任务成功判断三类标签。Flora 由三个微调 Qwen3.5 模型组成：9B 模型切分动作片段，27B 模型结合前后文生成描述，另一个 27B 的 Flora-Rewarder 负责成功度打分、半秒级步骤状态分类和按自定义量规评分。Nvidia 表示 Flora 已用于 GR00T 模型训练，每天可在 512 块 GB300 GPU 上标注最多 20 万小时视频，相关模型已在 Hugging Face 发布。按 Nvidia 自身估算，Flora 标注一小时视频约需 0.72 美元，而 GPT-6 Astra 约需 88.50 美元，最高便宜 125 倍；但这些成本是假设每块 GPU 每小时租金 10 美元得出的推算，并非生产实测。基准测试中，Flora 在动作边界检测和失败步骤捕捉上领先，但 WGO-Bench 总分不及 Astra、纯描述准确率落后 Gemini 3.8 Flash，机器人视频描述在 DenseCaptionBench 上排第二，且该测试由 Astra 参与评估带来方法学争议。

rss · The Decoder · 10月25日 10:08

**「背景：机器人视频标注」** 机器人策略要从人类和机器人的操作视频中学习，通常需要三类数据：动作起止时间与描述、过程奖励，以及整段任务是否成功的结局奖励。现有工具往往只覆盖其中一类，而通用大模型虽能生成多种标签，却难以承受海量视频的标注成本。Flora 是 Nvidia GEAR 实验室推出的开放模型套件，由分割、描述和奖励模型组成，作为数据引擎为 GR00T 模型生成带时间戳的描述、过程奖励和结局奖励。

**「对机器人数据管线的影响」** 机器人与具身智能研究团队可用开源的 Flora 为自建视频数据集生成动作分段、描述、进度评分和成功判断，从而降低对昂贵商业标注服务或通用大模型的依赖。不过，所谓 125 倍成本优势是 Nvidia 按每 GPU 每小时 10 美元租金推算的结果，并非生产环境实测。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.nvidia.com/labs/gear/flora/">Flora: An Open Model Suite for Scaling Robotics Data Engines</a></li>
<li><a href="https://research.nvidia.com/labs/gear/flora/assets/paper/flora.pdf?v=2026-10-19c">FLORA: An Open Model Suite for Scaling Robotics Data Engines</a></li>
<li><a href="https://www.teslanewswire.com/articles/nvidia-flora-open-source-robot-video-labeling-models-gr00t-200000-hours-oct-2026">Nvidia Flora: open-source robot video labeling for GR00T</a></li>
<li><a href="https://research.nvidia.com/labs/gear/flora/">Flora: An Open Model Suite for Scaling Robotics Data Engines</a></li>
<li><a href="https://robohorizon.com/en-us/news/2026/10/nvidia-open-sources-flora-to-automate-robotics-data-labeling/">NVIDIA Open-Sources Flora to Automate Robotics Data … | …</a></li>

</ul>
</details>

**标签**: `#robot learning`, `#video labeling`, `#Nvidia`, `#open source`, `#AI data pipelines`

---

<a id="item-tech-news-3"></a>
### [Jack Clark 将递归自我改进预测提前至 2027 年](https://the-decoder.com/anthropic-co-founder-jack-clark-moves-his-prediction-for-self-improving-ai-forward-to-2027/) ⭐️ 7.0/10

Anthropic 联合创始人 Jack Clark 将其对递归自我改进（RSI）的时间预测从 2028 年提前到 2027 年，理由是新基准 TasteVal 显示 AI 系统的“研究品味”进步异常陡峭。TasteVal 由 P-Zero Research 提出，用 8 个 AI 模型开发任务衡量模型自主设计实验和解读结果的能力，并以匹配 24 名来自 OpenAI、Google DeepMind、Nvidia 和 Microsoft Research 等机构的人类专家得分所需算力来量化“研究品味”；每个实验由固定编码代理在单张 Nvidia H100 上运行，上限为 40 GPU 小时或 120 小时实际时间。表现最好的 Anthropic Opus 5.5 取得 2.3 的 compute multiplier，统计区间为 1.15 至 4.37，单次成本约为专家尝试的三十分之一；自 2025 年 12 月以来，该指标约每三个月翻倍，但翻倍时间区间为 1.7 至 5.0 个月。文章指出，该基准只覆盖科研工作的一小部分，任务可快速廉价检查，人类对照组不含顶尖研究者，作者也承认结果可能高估研究品味的提升速度，而 Clark 作为 Anthropic 联合创始人的预测存在偏向。基准本身并不证明 AI 已在自我改进，只表明争论正从原始模型性能转向语言模型能承担多少独立研究工作。

rss · The Decoder · 10月25日 09:37

**「背景」** 递归自我改进（RSI）指 AI 系统能够自行设计实验、训练出能力更强的后继模型，从而形成能力不断加速的循环；这一能力长期被视为围绕通用人工智能讨论中的关键门槛，而 Jack Clark 本人此前在 5 月的长文中给出的估计是：到 2028 年底出现这类系统的概率约为 60%，到 2027 年约为 30%。所谓“研究品味”，是指判断哪些问题值得研究、设计实验并正确解读结果的综合能力，TasteVal 只测试后两项，且研究目标已由基准预先给定，因此它只是 RSI 所需能力的一个狭窄切片。围绕这一议题的分歧也在于此：批评者认为模型可以承担初级研究者的工作，但研究品味、创造力与长期研究规划仍不见踪影，而 Anthropic 自身的研究则称 RSI 尚未实现，但“可能比多数机构准备好的时间更早”到来。

**「影响」** 若这一趋势在其他测试中成立，AI 研发可能更快更便宜，但模型自行规划和评估实验会让更多研究结果更难被人类验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.youtube.com/watch?v=FHG1hIMo1Ag">Anthropic ’s Co-Founder Just Moved the Timeline… - YouTube</a></li>
<li><a href="https://eu.36kr.com/en/p/3797756582747395">AI Self - Creates with 60% Probability: Anthropic Co - founders...</a></li>
<li><a href="https://ap7i.com/posts/anthropic-recursive-self-improvement-slowdown/">AI Is Already Speeding Up AI. Anthropic Wants to Slow It Down.</a></li>

</ul>
</details>

**标签**: `#recursive self-improvement`, `#AI benchmarks`, `#Anthropic`, `#AI research automation`, `#Jack Clark`

---

<a id="item-tech-news-4"></a>
### [Anthropic 建议以单代理取代多子代理并发布迁移工具包](https://the-decoder.com/anthropic-says-one-ai-agent-beats-many-subagents-now-that-models-can-handle-complexity-alone/) ⭐️ 7.0/10

Anthropic 建议企业评估将多个专用子代理整合为单个主代理，并按需加载上下文；其 Applied AI 团队称，这种架构在质量、成本和延迟上往往优于多代理编队。该公司称，从 Opus 4.5 起，以及 Opus 5.5 和 Fable 5.1 等较新模型可在单一循环中直接管理复杂计划，在一次对比中单代理架构的运行速度约为多代理方案的两倍。Anthropic 还发布了一个 GitHub 迁移工具包，引导团队识别现有模式、评估替代方案并验证最佳做法；同时警告不要盲目合并：在一个支持代理测试中，合并子代理虽降低了延迟，却破坏了原本可用的流程。Anthropic 表示，当单代理的上下文窗口出现可测量的性能下降、多个任务需要独立上下文并行运行，或单代理难以选择工具时，子代理仍然合理；此外，工具定义超过 30 至 50 个后，模型选择工具的表现趋于下降。

rss · The Decoder · 10月25日 09:12

**「背景概念」** 在 AI 智能体（agent）系统设计中，常见做法是在主流程前放置一个路由器或编排器，把任务分派给多个各自持有独立提示词和上下文的专职子智能体（subagent），子智能体之间通过交接传递信息。另一种思路是只保留一个智能体循环，并让它按需加载“技能”（skills，即打包好的工作流或参考材料）和工具定义，而不是把所有规则和工具一次性塞进系统提示词。Anthropic 已在 GitHub 上发布名为 single-agent-loop-kit 的起始套件，用于把多智能体系统迁移到这种按需加载的单一智能体循环。

**「影响」** 对于正在设计企业级智能体系统的开发者与架构团队而言，这意味着在默认采用多子智能体架构之前，应先用 Anthropic 在 GitHub 上发布的迁移工具包，对单体智能体方案的质量、延迟和成本做一次对比评估。不过这些结论来自 Anthropic 自身的多个企业部署经验及个别对比测试，公司也警告盲目合并子智能体可能降低延迟却破坏原本正常的工作流程，因此迁移仍需逐项验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/anthropics/single-agent-loop-kit">GitHub - anthropics/ single - agent -loop- kit · GitHub</a></li>
<li><a href="https://claude.com/resources/articles/building-agents-when-to-fold-subagents-into-your-main-agent-loop">Building agents : When to fold subagents into... | Claude by Anthropic</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#agent architecture`, `#multi-agent systems`, `#Anthropic`, `#developer tooling`

---

<a id="item-tech-news-5"></a>
### [OpenAI 据报以最高 90%折扣争夺 Anthropic 大客户](https://the-decoder.com/openai-offers-discounts-up-to-90-percent-to-poach-anthropics-biggest-customers/) ⭐️ 7.0/10

据 The Information 报道，OpenAI 正以最高 90% 的折扣争取 Anthropic 的大型企业客户，并已促使部分公司把更多 AI 支出转向 OpenAI。Rippling 首席执行官 Parker Conrad 称，OpenAI 在其编程工作负载中的份额从 16% 升至 52%，Anthropic 的份额则从 57% 降至 18%。Replit 在获得一份年价值超过 1 亿美元合同的 30% 以上折扣后转向 OpenAI；DataCamp 首席执行官 Jonathan Cornelissen 表示，OpenAI 的定价使其成本降低 80% 至 90%。一家资产超过 70 亿美元的美国银行以每用户低于 7 美元的价格把 ChatGPT 席位免费扩至 500 名员工，而常规价格通常在 20 美元以上。报道还称，OpenAI 部分是以牺牲自身利润率为代价换取市场份额，但也通过更高效的模型和基础设施在 Sol 与 Luna 模型系列上实现了实际降价；Anthropic 的增速则据投资者备忘录从第二季度到第三季度放缓。

rss · The Decoder · 10月25日 07:30

**「背景」** OpenAI 与 Anthropic 是直接竞争的企业级 AI 模型供应商，客户通常按 API 调用量、席位或合同规模采购，并依据价格和模型表现分配工作负载。大额多年合同和批量席位采购让供应商能够以折扣换取支出份额，也使客户在迁移时更关注总成本而非单一模型能力。报道提到的中国 Deepseek、Kimi 等低价模型，进一步加剧了这一市场的价格压力。

**「影响」** 对大型企业客户而言，已披露案例显示其可通过比价或迁移获得显著更低的单价和更多席位；对 Anthropic 而言，这构成客户留存与定价能力的现实压力。这些折扣能否长期持续、是否适用于更广泛客户，报道尚未说明。

**标签**: `#OpenAI`, `#Anthropic`, `#AI industry`, `#enterprise AI`, `#pricing`

---

<a id="item-tech-news-6"></a>
### [OpenMobile-2：应用多样性提升开源手机智能体表现](https://the-decoder.com/openmobile-2-proves-open-source-smartphone-agents-can-rival-proprietary-models/) ⭐️ 7.0/10

南京大学、商汤及多所高校的研究者发布 OpenMobile-2，开源了基于 Qwen3.5（90 亿参数）和 Qwen3.6（270 亿参数）的两个手机智能体模型，并公布了训练环境、数据和复现说明。其训练环境覆盖 110 多个模拟应用，其中 35 个是淘宝、京东、滴滴、美团、Slack、Google Drive 等应用的重建版本；团队以 Gemini 3.1 Pro 作教师模型，生成了约 1.16 万个示例流程和 2000 多个带自动成功校验的练习任务。在训练数据量不变时，增加练习应用数量把未见应用上的成功率从 60.7% 提升到 67.5%，显示应用多样性比单纯增加数据更重要。较大模型在 AndroidWorld 上从 67.1 升到 79.9 分、MobileWorld 从 35.9 升到 50.4 分，并在真实 Android 设备的 SPA-Bench 上从 31.9 升到 59.6 分，为开源模型最高。后续强化学习收益有限，AndroidWorld 上甚至从 80.8 降到 79.9；报道标题称其可媲美专有模型，但文中列出的最强表述是开源模型最佳，未给出与专有模型的直接对比。

rss · The Decoder · 10月25日 06:55

**「背景」** 手机智能体通常只通过截图观察界面，再执行点击、滑动等操作，因此需要在大量应用工作流中练习。直接使用真实应用训练会受登录、真实购买和状态无法重置等问题制约，成本高且难以复现，模拟应用环境因此成为常见替代方案。AndroidWorld、MobileWorld 和 SPA-Bench 等基准用于衡量这类智能体在不同任务和真实设备上的完成能力。

**「影响」** 对手机智能体研究者和开发者来说，OpenMobile-2 同时开放模型、环境、数据和复现说明，提供了一套可重复的基线和“优先扩大应用多样性”的训练线索，但其真实设备成绩目前只能确认在开源模型中领先。

**标签**: `#AI agents`, `#Mobile automation`, `#Open source`, `#Benchmarking`, `#Android`

---