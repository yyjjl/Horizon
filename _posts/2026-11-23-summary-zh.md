---
layout: default
title: "Horizon Summary: 2026-11-23 (ZH)"
date: 2026-11-23
lang: zh
---

> 从 39 条内容中筛选出 4 条重要资讯。

---

**科技新闻**
1. [OpenAI 文章讨论困惑度与模型智能](#item-tech-news-1) ⭐️ 8.0/10
2. [安全研究揭露廉价 AI 推理商的密钥窃取与数据窥探](#item-tech-news-2) ⭐️ 8.0/10
3. [Jeff Geerling 加入 NTP Pool，却不用树莓派做 Stratum 1](#item-tech-news-3) ⭐️ 7.0/10
4. [METR 警告：AI 安全评估可能跟不上模型进步](#item-tech-news-4) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [OpenAI 文章讨论困惑度与模型智能](https://openai.com/index/perplexity-and-intelligence/) ⭐️ 8.0/10

OpenAI 发表《Perplexity and Intelligence》一文，讨论困惑度（perplexity）作为与模型智能相关联的指标，并把它与交叉熵趋势及推理模型的影响联系起来。该文在 Hacker News 引发技术讨论，焦点包括交叉熵随模型进步而变化的清晰趋势、简单评测指标相对复杂基准的价值，以及这种关系对推理模型意味着什么。由于提供的材料没有文章正文，文中的具体数据、论证细节和适用范围无法独立核实；可确认的是，这是一篇分析性文章，而非产品发布或新基准公告。

hackernews · acossta · 11月22日 17:06 · [社区讨论](https://news.ycombinator.com/item?id=50601525)

**「背景：困惑度与交叉熵」** 困惑度衡量语言模型对下一个 token 的预测不确定性，数值越低表示模型对文本的预测越准确；它与交叉熵损失在数学上等价，因此常被用作语言建模和预训练的评估指标。OpenAI 首席科学家 Jakub Pachocki 在文章中主张，将困惑度作为模型开发者之间可比较的指标，并用于制定共享的安全标准。社区讨论还指出，如果评估集与训练数据分布不同（即 OOD），更低的困惑度可能反映模型跨领域的泛化能力。

**「影响」** 微软 AI 负责人 Mustafa Suleyman 公开支持 OpenAI 共享预训练进展的做法，并披露 MAI-2 Base 在 OpenAI 评估集上的对数困惑度为 0.819，与 GPT-5.6 Sol 基础模型处于同一区间，推动跨实验室采用统一的预训练评估。该数据依赖 OpenAI 的评估集与许可，尚不能直接等同于通用能力排名。

**「社区讨论」** 评论者补充说，困惑度衡量模型预测下一个 token 时的“惊讶”程度：最差等于词表大小，最好为 1；有人惊讶于在强化学习使用日益增多后交叉熵趋势仍如此清晰，并肯定这种简单指标比日趋复杂的评测更有价值。讨论还援引 2008 年关于预测、压缩与智能的论文，并有评论称微软已将 MAI 模型加入同一图表、其 log-perplexity 为 0.819，但这些说法仍需以原始来源核实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/index/perplexity-and-intelligence/">Perplexity and Intelligence | OpenAI</a></li>
<li><a href="https://news.ycombinator.com/item?id=50601525">Perplexity and Intelligence | Hacker News</a></li>
<li><a href="https://x.com/mustafasuleyman/status/2124663594449318173">Mustafa Suleyman on X: &quot;We fully support OpenAI&#x27;s ...</a></li>

</ul>
</details>

**标签**: `#language models`, `#perplexity`, `#cross-entropy`, `#AI evaluation`, `#OpenAI`

---

<a id="item-tech-news-2"></a>
### [安全研究揭露廉价 AI 推理商的密钥窃取与数据窥探](https://the-decoder.com/security-researchers-show-how-cheap-ai-inference-providers-steal-keys-and-snoop-on-users/) ⭐️ 8.0/10

Dragos 安全研究人员向多家 AI 服务发送约 200 万条含虚假凭据的测试请求，发现至少三家供应商已遭入侵、攻击者正在窃取用户数据，而这些供应商在收到通知前均不知情，相关活动已持续数月。最大一起事件中，攻击者收集了数百个 AWS 密钥，甚至包括供应商在处理前已拒绝的请求中的密钥，并在数小时内测试这些密钥、搜索 S3 存储并尝试建立持久访问；一名攻击者还使用了 AI 攻击工具 ARTEX。研究还发现，模型市场转售商无需利用漏洞，只要以最低价上架并开启日志就能读取客户请求；ZDR 等隐私设置常被忽略，某中国 AI 实验室在超过一半的请求中访问了秘密测试 URL，即便这些请求经由美国供应商转发。有美国大型供应商在单次请求两个多月后仍在抓取测试 URL，另有一个秘密测试链接在请求 24 天后出现在飞书内部聊天中，并在两分钟内于北京和上海的六台设备上被打开。OpenRouter 已移除三家供应商并撤销 125 个端点的 ZDR 批准，还电邮提醒受影响用户第三方可能读取了发往 MiniMax 模型的请求；Novita、Phala 和 Together 等受影响方已发布初步安全报告，但并非所有供应商都已发布。

rss · The Decoder · 11月22日 12:07

**「背景」** AI 推理路由或网关（例如 OpenRouter）为用户提供统一 API，把请求分发给多家第三方模型供应商组成的资源池，并依据实时数据挑选模型与供应商，因此一次请求可能经过多个中间环节，而每一跳都能读取完整的请求与响应内容。“零数据保留”（ZDR）是供应商作出的一项隐私承诺，表示不存储用户请求；一旦该承诺在转售或路由链条中被无视，用户便无从察觉。Dragos 建议企业自行植入 canary token，也就是假凭证，一旦有人使用就会立刻暴露泄露。

**「影响」** 对通过 OpenRouter 等中间商调用模型的组织而言，供应商路由和“零数据保留”承诺已成为必须审计的供应链风险，尤其是涉及云凭据的请求。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thehackernews.com/2026/11/openrouter-drops-3-providers-after.html">OpenRouter Drops 3 Providers After Researchers Catch Months of...</a></li>
<li><a href="https://openrouter.ai/">OpenRouter</a></li>

</ul>
</details>

**标签**: `#AI security`, `#inference providers`, `#credential theft`, `#cloud security`, `#supply chain risk`

---

<a id="item-tech-news-3"></a>
### [Jeff Geerling 加入 NTP Pool，却不用树莓派做 Stratum 1](https://www.jeffgeerling.com/blog/2026/i-joined-the-ntp-pool/) ⭐️ 7.0/10

Jeff Geerling 发表文章，记录自己加入 NTP Pool 的经历，并解释为何没有用 Raspberry Pi 搭建 Stratum 1 时间服务器。文章聚焦实际运营 NTP Pool 服务器，以及 Raspberry Pi 在 Stratum 1 授时场景中的局限，而非产品发布或标准变更。现有材料没有披露其具体硬件配置、测量数据和部署细节，因此相关结论仍需以原文为准。整体看，这是一篇面向自建时间服务器爱好者的技术经验记录。

hackernews · fortran77 · 11月22日 15:35 · [社区讨论](https://news.ycombinator.com/item?id=50600622)

**「背景」** 网络时间协议（NTP）按层级（Stratum）组织时间源：Stratum 0 指 GPS、原子钟等参考时钟，Stratum 1 服务器直接与这类参考时钟同步，Stratum 2 服务器则从 Stratum 1 服务器获取时间。NTP Pool 是由志愿者公共时间服务器组成的分布式服务池，客户端通过 DNS 从池中获得时间源。在本例中，Jeff Geerling 加入 NTP Pool 时提供的是一台 Stratum 2 服务器（ntp-01.jeffgeerling.com），其时间来自他工作室中的 Stratum 1 服务器，而没有直接用 Raspberry Pi 搭建 Stratum 1。

**「影响」** 对计划自建 Stratum 1 的爱好者和中小运维者而言，这类经验有助于在树莓派、x86/PCIe、FPGA 与 ESP32 方案之间评估授时质量和成本。

**「社区讨论」** 讨论中有人直言树莓派不适合高质量授时，并推荐 FPGA 或 x86 的 PCIe PTM/TGPIO 方案；也有人用不到 50 美元的 ESP32-P4 加 m8T 模块自建服务器。另有长期 Pool 用户主张用多台廉价 Stratum 1 做冗余并讨论 NTPSec 与 Chrony，同时有人回忆曾遇到无响应或时间严重错误的 Pool 服务器而转向大型公共时间源。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.jeffgeerling.com/blog/2026/i-joined-the-ntp-pool/">I joined the NTP Pool, but not with my Stratum 1 Pi - Jeff ...</a></li>

</ul>
</details>

**标签**: `#NTP`, `#timekeeping`, `#Raspberry Pi`, `#Stratum 1`, `#hardware`

---

<a id="item-tech-news-4"></a>
### [METR 警告：AI 安全评估可能跟不上模型进步](https://the-decoder.com/ai-is-getting-better-faster-than-experts-can-reliably-test-whether-new-systems-are-safe-metr-warns/) ⭐️ 7.0/10

AI 研究机构 METR 警告，AI 系统在 AI 研究任务上的进步可能快于专家可靠评估其安全性的能力，现有公开数据不足以排除未来几年 AI 研究出现急剧加速的可能性；该机构称这可能让人“无法有意义地理解、评估并应对新 AI 系统带来的灾难性风险”。METR 发现，在反馈直接、定义清晰的编程与计算任务上，模型多数时候已胜过经验丰富的人类专业人士，但尚未超过由顶尖专家组成的大型团队；模型能处理的任务时长每 3.6 个月翻一番，按数据的朴素外推，到 2027 年 7 月模型在最长 200 小时任务上的成功率可达 50%。这些系统仍在缺乏即时反馈、需要真实判断的开放式问题以及难以复现用于训练的情境中表现吃力。METR 还警告，常见且易运行的测试可能高估模型在现实使用中的表现，因为开发者是在非常相似的测试环境中训练模型的。

rss · The Decoder · 11月22日 13:00

**「背景」** METR 是一家研究 AI 评估的非营利组织，其“时间地平线”指标以模型能够完成的任务时长来衡量能力。METR 在 2025 年 3 月的分析中测得该指标约每 7 个月翻倍，而最新更新称，在扩展的 TH1.1 与 TH2 任务集上，前沿模型的 50% 时间地平线约每 3.6 个月翻倍，朴素外推将在 2027 年 7 月达到 200 小时任务。正因能力提升可能快于评估方法的改进，METR 才警告公开数据不足以排除 AI 研究能力加速，并可能让安全评估滞后。

**「影响」** 对 AI 开发者和安全评估者而言，这意味着仅依赖当前公开基准和常见测试，可能不足以判断前沿模型在真实部署中的风险，尤其是在超长任务和开放式研究任务上。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://aicoder.com/news/news-20261120-metr-q4-2026-capability-update-time-horizons-doubling-3-6-months-200h-tasks-july-2027-harder-to-measure">METR Q4 2026 Capability Update: Frontier Time Horizons Double ...</a></li>
<li><a href="https://metr.org/blog/2025-03-19-measuring-ai-ability-to-complete-long-tasks/">Measuring AI Ability to Complete Long Software Tasks - METR</a></li>
<li><a href="https://x.com/i/trending/2123917203900920314">AI Agents Double Task Times Every 3.6 Months, METR Reports</a></li>

</ul>
</details>

**标签**: `#AI safety`, `#model evaluation`, `#METR`, `#AI research automation`, `#benchmarks`

---