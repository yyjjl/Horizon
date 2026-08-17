---
layout: default
title: "Horizon Summary: 2026-08-17 (ZH)"
date: 2026-08-17
lang: zh
---

> 从 55 条内容中筛选出 21 条重要资讯。

---

**科技新闻**
1. [DuckDB v2.0 预览发布，社区期待 Quack 和数据处理能力提升](#item-tech-news-1) ⭐️ 8.0/10
2. [AI 生成的 Copilot Autofix 致 Snowflake Jira 被攻陷](#item-tech-news-2) ⭐️ 8.0/10
3. [Qwen3.8 27B 获 Artificial Analysis 52 分，社区称超越更大模型](#item-tech-news-3) ⭐️ 8.0/10
4. [AirTag 追踪亚马逊销毁珍本书训练 AI](#item-tech-news-4) ⭐️ 8.0/10
5. [Stripe 超 70 亿美元收购 OpenRouter](#item-tech-news-5) ⭐️ 8.0/10
6. [通过 QAD 与 Model Optimizer 开发 Nemotron 3.5 Lightning NVFP4](#item-tech-news-6) ⭐️ 8.0/10
7. [SocialRL：让小语言模型在谈判中达到前沿级社交推理](#item-tech-news-7) ⭐️ 8.0/10
8. [OpenAI 签下俄亥俄创纪录数据中心租约 英伟达最高 1050 亿美元支持](#item-tech-news-8) ⭐️ 8.0/10
9. [集群调度顺序改变带来 33 个百分点利用率提升](#item-tech-news-9) ⭐️ 7.0/10
10. [X-CODE：面向 6G 网络切片的可解释离线多智能体强化学习框架](#item-tech-news-10) ⭐️ 7.0/10
11. [开放多智能体系统的子模策略学习](#item-tech-news-11) ⭐️ 7.0/10
12. [Agentao：面向工具调用 LLM 代理的受治理本地优先运行时](#item-tech-news-12) ⭐️ 7.0/10
13. [MobileMem：面向移动端 AI 助手长时记忆的新基准](#item-tech-news-13) ⭐️ 7.0/10
14. [博弈论运动规划的嵌套搜索新方法](#item-tech-news-14) ⭐️ 7.0/10
15. [神经网络参数估计在劳动力市场 ABM 中的应用](#item-tech-news-15) ⭐️ 7.0/10
16. [CIMORL：面向多机器人多目标强化学习的协调感知框架](#item-tech-news-16) ⭐️ 7.0/10
17. [InterSAGE：智能体互联网的安全可验证互操作协议](#item-tech-news-17) ⭐️ 7.0/10
18. [Nvidia 推动自建模型，挑战闭源 API](#item-tech-news-18) ⭐️ 7.0/10
19. [阿里技术详解 Harness Skill 原理与最佳实践](#item-tech-news-19) ⭐️ 7.0/10
20. [小米零售 AI 问数：从模型能力到业务可用实践](#item-tech-news-20) ⭐️ 7.0/10

**科技博客**
1. [面向 200B+ DiT 模型的 vLLM-Omni 分布式分层卸载](#item-tech-blog-1) ⭐️ 9.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [DuckDB v2.0 预览发布，社区期待 Quack 和数据处理能力提升](https://duckdb.org/2026/08/17/duckdb-20-highlights) ⭐️ 8.0/10

DuckDB 团队发布了 v2.0 预览，介绍这一广受欢迎的嵌入式分析数据库即将推出的新功能和能力。该预览目前尚未构成正式版本，具体功能细节仍待后续公布，但社区讨论已经十分热烈。DuckDB 被广泛用于数据工程、运行时和端到端分析等场景，v2.0 被视为一次重要的版本升级。此次预览的意义在于，它为现有用户和依赖该数据库的团队提供了评估未来方向和新能力的早期窗口。

hackernews · ibotty · 8月17日 13:46 · [社区讨论](https://news.ycombinator.com/item?id=49330781)

**「背景」** DuckDB 是一款开源嵌入式分析型数据库，专为在应用程序进程内进行快速分析查询而设计，常用于数据工程和本地数据分析场景。根据官方预告，DuckDB v2.0 将包含多项新特性与少量破坏性变更，具体细节可能在今年秋季正式发布前继续调整。该项目开发活跃，例如 GitHub 上不断发布包含修复的版本，社区也有 duckdb-version-manager 等工具来管理不同版本的 DuckDB CLI。

**「影响」** 对于正在使用或评估 DuckDB 的团队，v2.0 预览提供了规划升级和调整技术栈的早期信号；正式发布前应依据最终版本说明验证新功能的兼容性和稳定性。

**「社区讨论」** 社区普遍感到兴奋：otter-in-a-suit 对 Quack 功能充满期待，并分享了在多 GiB DuckDB 文件上运行分析、将数据库作为运行时制品的实际经验；jtbaker 则自 2023 年以来在 3 家公司引入 DuckDB，称其显著降低了资源需求，并支持在低端消费级硬件上处理超出内存的数据。也有不同的声音：therealdrag0 对不到 6 个月 10,000 次提交的开发速度提出疑问，怀疑 AI 是否在其中起了主要作用；dangoodmanUT 则遗憾仍无增量物化视图，认为它是 ClickHouse 的核心优势之一。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://duckdb.org/2026/08/17/duckdb-20-highlights?ref=upstract.com">A Preview of DuckDB v 2 . 0 – DuckDB</a></li>
<li><a href="https://github.com/duckdb/duckdb/releases">Releases · duckdb / duckdb · GitHub</a></li>
<li><a href="https://www.ssp.sh/brain/duckdb/">DuckDB</a></li>

</ul>
</details>

**标签**: `#DuckDB`, `#database`, `#analytics`, `#open-source`, `#data-engineering`

---

<a id="item-tech-news-2"></a>
### [AI 生成的 Copilot Autofix 致 Snowflake Jira 被攻陷](https://www.wiz.io/blog/red-agent-snowflake-copilot-cicd-bug) ⭐️ 8.0/10

安全研究机构 Wiz 披露，Snowflake 的 Jira 环境因 GitHub Copilot “Autofix” 自动生成的代码而沦陷：AI 建议在 GitHub Actions 工作流（jira\_issue.yml）中通过 shell 扩展拼接待转义标题和正文，形成模板注入漏洞，最终导致 Jira 被入侵。该事件凸显 AI 辅助编程引入的代码同样需要经过 SAST、SCA 等静态分析与人工审查；社区也指出可用 zizmor 等工具在 CI 中检测此类 Actions 问题。评论还显示，涉事 PR \#1218 中唯一由 Copilot 共同署名的提交可能与漏洞无关，攻击面归因仍需谨慎。

hackernews · galnagli · 8月17日 14:18 · [社区讨论](https://news.ycombinator.com/item?id=49331423)

**「背景」** GitHub Copilot Autofix 是 GitHub 的 AI 辅助修复功能，会自动生成修复代码提交到开发者仓库。Wiz 的 AI Red Agent 在 Snowflake 的 snowflakedb/snowflake-connector-net 仓库中发现，jira\_issue.yml 工作流存在脚本注入漏洞；该漏洞由 Copilot Autofix 引入，使攻击者可通过未受信任的输入在 GitHub Actions 的 run 块中执行命令，并在五天内访问 Snowflake 的内部 Jira 环境。此事件说明 AI 生成的代码同样需要经过安全审查。

**「影响」** 对使用 AI 生成 GitHub Actions/CI/CD 代码的团队，这一案例的直接影响是：未经过静态分析与人工验证的 AI 建议可变成可利用的内部系统入口，Snowflake 的 Jira 即因此被入侵。

**「社区讨论」** 评论区普遍认为错误源于缺少对 Actions 的静态分析（如使用 zizmor），也有观点批评 YAML 规范本身的陷阱；同时有用户质疑漏洞与 Copilot 的关系，因为涉事 PR 中 Copilot 共同署名的提交与漏洞无关。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.wiz.io/blog/red-agent-snowflake-copilot-cicd-bug">Red Agent Exploits Snowflake Vuln Missed by Github Copilot | Wiz Blog</a></li>
<li><a href="https://www.cyberkendra.com/2026/08/copilot-autofix-snowflake-jira-github-actions.html">Copilot Autofix Bug Exposed Snowflake&#x27;s Internal Jira - Cyber Kendra</a></li>
<li><a href="https://www.forbes.com/sites/timkeary/2026/08/17/github-copilot-missed-a-vulnerability-that-wizs-ai-agent-found/">Wiz’s AI Agent Finds A Vulnerability In Snowflake’s Internal Systems</a></li>

</ul>
</details>

**标签**: `#security`, `#AI-generated code`, `#GitHub Copilot`, `#CI/CD`, `#vulnerability`

---

<a id="item-tech-news-3"></a>
### [Qwen3.8 27B 获 Artificial Analysis 52 分，社区称超越更大模型](https://artificialanalysis.ai/models/qwen3-8-27b) ⭐️ 8.0/10

Qwen3.8 27B 在 Artificial Analysis 上取得 52 分。据社区对比，这一成绩超过所有 400–1500 亿参数区间的中等模型，并与大型模型类别（&gt;1500 亿参数）中排名第 5 的 DeepSeek V4 Flash 0731 持平；相比上一代 Qwen3.6 27B 的 38 分，提升明显。该模型还据称能在 27B 规模上胜过约六个月前被视为 SOTA 的 Opus 4.6，并且可以在普通游戏 PC 上运行。若这些基准结果属实，意味着开源小模型的能力效率大幅跃升，也让大规模数据中心投入的必要性受到质疑。社区用户反映其推理级别越高越具“智能体”行为，会执着地解决问题并调用工具，但已有用户计划进行更长 token 的测试验证。

hackernews · anana\_ · 8月17日 17:25 · [社区讨论](https://news.ycombinator.com/item?id=49334544)

**「背景」** Artificial Analysis Intelligence Index 是一个用于比较大语言模型综合能力的独立基准，Qwen 3.8 27B 在该指数上获得 52 分，远高于同类模型的中位数（9 分）。该模型是阿里巴巴开源 Qwen 系列中参数规模约 270 亿的开放权重模型，此前 Qwen 3.6 27B 在同一类别中已领先，而新版本据称可媲美甚至超过许多更大规模的专有模型。社区因此认为，这是开源小型模型首次接近或达到前沿水平（frontier level）。

**「影响」** 对于希望本地运行开源模型的开发者，Qwen3.8 27B 提供了一个接近前沿大模型能力、却可在消费级硬件部署的选择；不过该结论主要来自 Artificial Analysis 基准分数和社区初步体验，仍需独立复测。

**「社区讨论」** 社区整体既惊讶又怀疑：多位用户认为 27B 模型能匹敌甚至超过 Opus 4.6 和 DeepSeek V4 Flash 令人难以置信，但也有人描述其在更高推理等级下表现出强烈的智能体行为、会执着调用工具，并计划用更多 token 做长测验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://artificialanalysis.ai/models/qwen3-8-27b">Qwen 3 . 8 27 B - Intelligence, Performance &amp; Price Analysis</a></li>
<li><a href="https://www.youtube.com/watch?v=SyrkC8Ks8QA">GPT Astra This Week? Opus 6 Is Right Behind It - YouTube</a></li>

</ul>
</details>

**标签**: `#qwen`, `#ai benchmarks`, `#open source`, `#language models`, `#artificial analysis`

---

<a id="item-tech-news-4"></a>
### [AirTag 追踪亚马逊销毁珍本书训练 AI](https://simonwillison.net/2026/Aug/17/we-tracked-a-shipment-of-rare-books-it-ended-at-an-amazon-ai-tra/) ⭐️ 8.0/10

404 Media 通过将苹果 AirTag 藏入一批约 1000 本珍本书的订单，追踪发现书籍最终送达拉斯维加斯东北部亚马逊 LAS8 设施内的 VGT3 团队。该团队以恐龙抱书为标志，工人证实他们会破坏性地裁切书脊、高速扫描整批书籍，扫描数据用于训练亚马逊的 Nova 模型。这场调查证实了书籍经销商长期以来的怀疑：匿名且对价格不敏感的批量购书者正是 AI 公司，目的是获取许多未出现在网上的印刷文本作为训练数据。报道同时提及 Anthropic 曾通过“Project Panama”购买书籍并裁切扫描，法院当时认定该行为属于合理使用，但被销毁的原件可能无法替代，引发对版权与稀有文献保护的争议。

rss · Simon Willison · 8月17日 15:21

**「背景」** 此前已有报道称，书商收到大量匿名、对价格不敏感的图书订单，怀疑是 AI 公司为了获取训练数据而批量购书；Anthropic 在 2025 年 6 月也被曝光进行大规模图书扫描。书籍作者提起的诉讼揭示了 Anthropic 的“Project Panama”计划：在市场上购书、裁掉书脊并数字化；法官以合理使用为由判定未侵权，部分理由正是原书已被销毁，不会被复制转售。Amazon 并非唯一这样做的公司，印刷书籍因其常不存于网络且多早于 2022 年、不含 AI 生成内容，被视为特有价值的训练语料。

**「影响」** 对古籍书商和收藏者而言，这项调查确认了原本零散的市场传闻：大批量购书的匿名客户可能就是 AI 公司，而他们购买的珍本书最后会被裁切销毁，导致不可替代的原件从公开市场上永久消失。

**标签**: `#AI training data`, `#Amazon`, `#book scanning`, `#investigative reporting`, `#data sourcing`

---

<a id="item-tech-news-5"></a>
### [Stripe 超 70 亿美元收购 OpenRouter](https://www.latent.space/p/ainews-stripe-buys-openrouter-for) ⭐️ 8.0/10

据彭博社报道，Stripe 正在以超过 70 亿美元的价格收购 AI 初创公司 OpenRouter。OpenRouter 提供统一接口，帮助用户根据需求和预算选择不同 AI 模型，刚在 5 月完成 1.13 亿美元 B 轮融资，估值 13 亿美元，投资方包括红杉资本、Andreessen Horowitz、Menlo Ventures 和 Alphabet 旗下 Capital G。OpenRouter CEO Alex Atallah 曾将公司描述为“AI 领域的 Stripe”，目前拥有 800 万用户，接入超过 400 个模型。此次收购标志着 AI 基础设施和分发领域的重要整合，Stripe 借此布局“代币经济”。不过，交易细节尚未完全公开，仍属“据报道”状态。

rss · Latent Space · 8月17日 23:13

**「背景」** OpenRouter 是一个 AI 模型聚合平台，提供单一 API 入口访问多家供应商的模型，从而避免开发者被单一模型提供商锁定。Stripe 则是在线支付基础设施巨头，擅长处理大规模、低延迟、高可用请求，其核心能力正适合未来 AI 代币化支付的场景。

**「影响」** 对于使用 OpenRouter 的 800 万用户和依赖 Stripe 支付的开发者，这笔收购可能带来更紧密的 AI 模型分发与计费集成，降低多模型使用的复杂度和成本。同时，这也可能加剧 AI 基础设施领域的整合，影响其他模型网关和支付服务商的竞争格局。

**标签**: `#OpenRouter`, `#Stripe`, `#AI infrastructure`, `#acquisitions`, `#AI APIs`

---

<a id="item-tech-news-6"></a>
### [通过 QAD 与 Model Optimizer 开发 Nemotron 3.5 Lightning NVFP4](https://developer.nvidia.com/blog/developing-nemotron-3-5-lightning-nvfp4-with-qad-using-nvidia-model-optimizer/) ⭐️ 8.0/10

NVIDIA 发布了使用 NVIDIA Model Optimizer 进行的量化感知蒸馏（QAD）工作流，用于开发 Nemotron 3.5 Lightning NVFP4 检查点：将 66GB 的全精度 BF16 检查点压缩到 22GB，并实现最高 4 倍吞吐提升，同时保持准确率。该流程先用后训练量化（PTQ）把基座模型 NVIDIA-Nemotron-3.5-Lightning-30B-A3B-BF16 的学生模型量化到 W4A16-NVFP4，再以冻结的 BF16 教师模型通过 KL 散度蒸馏损失训练量化学生，使其适应推理时的量化噪声。文章比较了五种 PTQ 配方，其中 four\_over\_six（对 Mamba 线性层采用 W4A16、32K 序列长度校准）在精度下降与推理性能之间取得最佳平衡，并称 QAD 能恢复激进量化带来的精度损失，在智能体基准上持续优于单独 PTQ。

rss · NVIDIA Developer Blog · 8月17日 18:12

**「背景」** 后训练量化（PTQ）是一种常见的模型压缩方法，通过校准数据把权重降到较低精度，但在需要更小内存和更高吞吐的激进量化下准确率会下降。量化感知蒸馏（QAD）让全精度教师模型和学生量化模型同时训练，用蒸馏损失使学生复现教师的完整行为，从而在低精度下恢复质量。Nemotron 3.5 Lightning 是 NVIDIA 的开放模型系列之一，本文使用的是 NVIDIA-Nemotron-3.5-Lightning-30B-A3B-BF16 基座模型。

**「影响」** 使用该工作流的开发者可以把相同 QAD 流程应用到自有模型，得到 NVFP4 检查点后可在推理阶段减少约三分之二内存占用（66GB 降至 22GB），并带来最高 4 倍吞吐提升，同时保持准确率；文中还报告 QAD 比单独 PTQ 在智能体基准上表现更稳定。

**标签**: `#quantization`, `#model compression`, `#NVIDIA`, `#LLM`, `#inference`

---

<a id="item-tech-news-7"></a>
### [SocialRL：让小语言模型在谈判中达到前沿级社交推理](https://arxiv.org/abs/2608.13787) ⭐️ 8.0/10

SocialRL 是一种直接训练社交推理能力的通用方法，研究者将其应用于参数量为 4B 的小语言模型，覆盖 Deal-or-No-Deal、CaSiNo、Craigslist、Job Interview、Calendar 和 Marketplace 六个谈判领域。在域内训练中，该 4B 模型在保留场景上每领域均匹配或超过 GPT-5 系列，在谈判游戏中缩小了基线到前沿差距的 73% 至 122%，且 78% 的买家开局报价低于目标价，而未训练模型仅为 3%。跨域迁移遵循游戏结构：结构配对的游戏互相提升，广泛的多议题来源模型几乎提升所有领域，而结构孤立的游戏没有迁移效果。基于迁移结构，研究者提出级联强化学习（cascade RL）和多教师在线策略蒸馏（OPD）策略，将各领域专家整合为统一的 4B 模型，在全部六个环境中达到 0.627 的平均效用，匹配或超过 GPT-4.1（0.625）、GPT-5.1（0.619）和 GPT-5.2（0.613）。此外，显式的心理理论（ToM）脚手架仅在训练阶段有益：蒸馏 ToM 轨迹而非仅动作，在每个环境中都提升了效用并带来更好的跨环境泛化；在两种 ToM 技能中，只有下一动作预测能预测谈判结果。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 大型语言模型（LLM）作为 AI 助手通常被训练得友善且乐于助人，但在代表用户谈判时，这种倾向可能导致模型过早让步或泄露委托人隐私。社交推理——理解他人目标、意图和信念并能据此策略性行动——是谈判场景中至关重要的能力，而传统训练方法并未直接优化这一能力。SocialRL 采用强化学习直接训练社交推理，使参数量较小的模型也能通过特定训练配方达到接近或超越大型前沿模型的水平。

**「影响」** 对于依赖小型模型构建 AI 代理的开发者，SocialRL 提供了一条可复制的训练路径，使 4B 级模型在谈判基准上能达到或超越 GPT-4.1 和 GPT-5 系列，从而大幅降低部署高性能社交代理的计算成本。统一模型在六个领域实现 0.627 的平均效用，这一结果意味着小模型在代理场景中的实用性显著提升，但仍需注意该训练仅在特定领域内验证，跨域迁移的结构依赖性可能限制其在结构差异较大任务上的泛化。

**标签**: `#social reasoning`, `#language models`, `#negotiation`, `#reinforcement learning`, `#AI agents`

---

<a id="item-tech-news-8"></a>
### [OpenAI 签下俄亥俄创纪录数据中心租约 英伟达最高 1050 亿美元支持](https://the-decoder.com/openai-signs-record-ohio-data-center-lease-with-nvidia-backing-up-to-105-billion/) ⭐️ 8.0/10

OpenAI 已与软银旗下 SB Energy 签署一份为期 20 年的租约，租用俄亥俄州“PORTS-Pike”园区约 8 吉瓦的 IT 容量；若计入冷却和基础设施，该园区总容量约为 10 吉瓦。英伟达将为项目提供最高 1050 亿美元的支持，但并非担保 OpenAI 的租金，而是担保第一阶段数据中心建成后的残值，同时成为园区前半部分的独家芯片供应商，并向 SB Energy 投资 15 亿美元。该园区位于美国能源部前铀浓缩设施旧址，电力来自一座 9.2 吉瓦天然气发电厂。英伟达 CEO 黄仁勋以“LPS”（土地、电力、建筑外壳）概括 AI 建设的新瓶颈，而《华尔街日报》分析显示，九家大型科技公司约 3 万亿美元的 AI 相关义务未体现在资产负债表中。首批 800 兆瓦容量预计于 2028 年投用。

rss · The Decoder · 8月17日 14:13

**「背景」** 大型 AI 实验室需要为训练和推理部署海量 GPU 算力，但长期基础设施合同规模庞大，往往超过其资产负债表能直接支持的范围，因此出现分阶段租约、残值担保等结构化安排。黄仁勋所称“LPS”（土地、电力、建筑外壳）意味着芯片已不再是唯一掣肘，选址、供电和厂房成为 AI 扩张的关键瓶颈。

**「影响」** 对投资者而言，这一交易加剧了本就难以评估的科技公司实际债务水平问题：包括 Alphabet、Meta、微软和英伟达在内的九家公司持有约 3 万亿美元大多与 AI 相关的表外义务，且这些合同几乎无法取消，Alphabet 和亚马逊近期还报告了负自由现金流。

**标签**: `#data centers`, `#AI infrastructure`, `#OpenAI`, `#Nvidia`, `#industry investment`

---

<a id="item-tech-news-9"></a>
### [集群调度顺序改变带来 33 个百分点利用率提升](https://huggingface.co/blog/Dharma-AI/gpu-management-pt2) ⭐️ 7.0/10

Hugging Face 博客发布的一篇文章称，在同一个 GPU 集群上，仅仅改变调度处理的顺序，就使集群利用率提升了 33 个百分点。该结果将调度顺序描述为 AI 基础设施中一种可能低成本、高回报的优化手段。不过，目前仅有文章摘要可用，完整内容未提供，因此该改进所涉及的具体调度变更、工作负载条件及实验细节尚无法核实。

rss · Hugging Face Blog · 8月17日 19:46

**「背景」** GPU 集群的利用率通常不高：Dharma AI 的分析显示，企业 AI 集群的利用率仅有 30%至 50%，大量 GPU 处于闲置状态。传统观点常把利用率不足归因于硬件总量短缺，但本篇技术文章指出，仅仅改变调度顺序就可以在同一集群上带来 33 个百分点的利用率提升。调度顺序之所以关键，是因为它决定了作业如何与 GPU 资源在时间上匹配，影响碎片化程度和排队等待时间。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/Dharma-AI/gpu-management">GPU Management: Why Idle GPUs Are the New Grounded Aircraft</a></li>
<li><a href="https://getaibook.com/news/half-of-global-gpu-capacity-sits-idle-dharma-ai-report-finds/">Half of Global GPU Capacity Sits Idle, Dharma AI Report Finds</a></li>

</ul>
</details>

**标签**: `#GPU scheduling`, `#cluster utilization`, `#performance optimization`, `#AI infrastructure`, `#Hugging Face`

---

<a id="item-tech-news-10"></a>
### [X-CODE：面向 6G 网络切片的可解释离线多智能体强化学习框架](https://arxiv.org/abs/2608.13982) ⭐️ 7.0/10

本文提出 X-CODE，一个可解释人工智能（XAI）引导的保守分散执行框架，用于离线多智能体强化学习（MARL）下的 6G 网络切片资源分配。X-CODE 在集中训练阶段利用可解释性感知的奖励塑造来调整联合离线转移的相对偏好，从而改进分散式资源分配行为，部署时智能体无需环境交互或智能体间通信。仿真结果显示，该框架在测试片段中实现了零资源冲突事件，同时最小化每切片延迟；与在线基线相比，在所考虑的通信延迟模型下，信令开销更低，有效推理延迟降低 88%。论文还提供了开源代码和数据集，地址为 https://github.com/Eslam211/xcode-ran-slicing。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 网络切片是 6G 网络中的关键机制，需要智能资源管理以在共享基础设施上支持异构服务，并协调多个切片之间对有限资源的竞争。传统在线 MARL 方法依赖环境交互和智能体间通信，导致成本高、安全性差且难以部署；离线 MARL 则从静态数据集学习，无需在线环境交互，但需要解决安全性和可解释性问题。X-CODE 正是针对这些实际部署挑战提出的解决方案。

**「影响」** 对于 6G 网络切片的研究者和运营商，X-CODE 提供了一种无需智能体间通信即可安全部署的离线 MARL 方案，在评估场景中实现零资源冲突，并将有效推理延迟降低 88%，同时大幅减少信令开销。

**标签**: `#multi-agent reinforcement learning`, `#network slicing`, `#offline RL`, `#explainable AI`, `#6G networks`

---

<a id="item-tech-news-11"></a>
### [开放多智能体系统的子模策略学习](https://arxiv.org/abs/2608.14390) ⭐️ 7.0/10

该论文提出一种面向开放多智能体系统的子模分布式任务分配策略学习方法，其中智能体可随时间加入或离开，阶段团队效用为子模函数。针对标准连续松弛基于独立伯努利采样、与分类策略不一致的问题，作者提出分区多线性扩展（PME），其连续支撑与分类策略下可行动作匹配。作者证明阶段效用的边际增益是 PME 梯度的无偏估计，且最大化 PME 等价于最大化阶段效用，并据此设计集中训练分散执行的 KL 镜像策略学习方法 SubMAPL。针对表格 softmax 策略，还引入了开放策略迁移和开放系统 KL 跟踪变体来处理智能体到达与离开。动态遗憾分析给出了累积效用的下界，多智能体覆盖仿真显示 SubMAPL 优于策略梯度和在线学习基线。

rss · arXiv cs.MA · 8月17日 04:00

**「背景知识」** 子模集合函数（submodular set function）具有边际收益递减的性质，常被用于任务分配和覆盖问题。为了在连续空间上优化这类离散函数，研究者提出了多线性扩展（multilinear extension）等连续松弛方法，将子模函数从离散集合推广到连续概率空间。本文提出的分区多线性扩展（PME）则是一种面向分区拟阵约束与类别策略的连续松弛，用于匹配开放多智能体系统中的策略学习。

**「影响」** 对多智能体系统与子模优化研究者而言，该工作提供了 PME 这一理论上严谨的连续松弛框架，并使 SubMAPL 在覆盖仿真中优于现有策略梯度与在线学习基线。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/1105.4593v3.pdf">Submodular Function Maximization via the Multilinear Relaxation</a></li>
<li><a href="https://theory.stanford.edu/~jvondrak/CS369P/lec17.pdf">1 Continuous extensions of submodular functions</a></li>

</ul>
</details>

**标签**: `#multi-agent systems`, `#submodular optimization`, `#task allocation`, `#policy learning`, `#distributed systems`

---

<a id="item-tech-news-12"></a>
### [Agentao：面向工具调用 LLM 代理的受治理本地优先运行时](https://arxiv.org/abs/2608.13574) ⭐️ 7.0/10

Agentao 是一个面向工具调用型 LLM 代理的受治理本地优先运行时，其核心设计是将模型生成的动作提案与主机授权的执行相分离。该系统采用分层架构，包括面向主机的接口、主机契约、运行时核心、权限中介工具系统，以及内存、重放、插件、技能、子代理和协议集成等支持性子系统。论文描述了系统的动机、威胁模型、设计目标、治理模型、执行流水线和结构化事件接口，并强调 Agentao 不提供形式化安全保证，而是将权限、状态、协议边界和执行轨迹显式化为运行时抽象，以帮助构建更可治理、可检查且适合主机控制本地环境的代理。相关代码已在 GitHub 上公开。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** LLM 代理正越来越多地被用作执行系统，能够调用工具、修改本地状态、使用持久内存并交互外部协议。这些能力带来了过度授权操作、审计性不足、提示注入、工具投毒和不受控制的副作用等风险，因此需要新的运行时抽象来约束代理行为。

**「影响」** 对于开发本地优先且需受控的代理构建者而言，Agentao 提供了一种可复用的运行时架构，把权限、状态、协议边界和执行轨迹显式化为可治理的抽象；但由于摘要中缺乏评估数据，其实际安全效果仍有待验证。

**标签**: `#LLM agents`, `#runtime security`, `#governance`, `#tool use`, `#AI safety`

---

<a id="item-tech-news-13"></a>
### [MobileMem：面向移动端 AI 助手长时记忆的新基准](https://arxiv.org/abs/2608.13606) ⭐️ 7.0/10

MobileMem 是一个面向移动端 AI 助手的设备端长时记忆基准与框架，基于一整年的移动体验数据构建。它采用知识增强的合成管线，将用户与应用会话整合为连贯且时间一致的长时间轨迹，并提供文本与多模态两种设置，覆盖多跳与时间推理、知识更新和隐式偏好推断。该工作把记忆从孤立事实的信息检索，转向对用户经历的持续学习，目标是让助手不仅能记住过去，还能理解当下并适应未来。该基准目前在 arXiv 上以编号 2608.13606 发布，作者包括 Xinle Deng、Ningyu Zhang 等多位研究者。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 移动端 AI 助手正从回答孤立问题转向理解、记忆并持续学习用户体验的持久个人助理，这要求模型具备长期记忆能力。已有基准难以覆盖真实移动场景中异构、多模态且随时间演变的体验。MobileMem 为此提供了一个以年度规模移动体验轨迹为基础的基准与框架，并包含检索准确率、时间一致性等可量化指标。

**「影响」** 该基准为移动 AI 助手的长时记忆研究提供了可复用的评测资源，使研究者能够测量并比较模型在多模态、长期上下文下的记忆、推理和偏好学习能力。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/pdf/2608.13606">MobileMem : Learning from a Year of Mobile Experiences</a></li>
<li><a href="https://huggingface.co/papers/2608.13606">Paper page - MobileMem : Learning from a Year of Mobile Experiences</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#long-term memory`, `#benchmark`, `#mobile computing`, `#knowledge synthesis`

---

<a id="item-tech-news-14"></a>
### [博弈论运动规划的嵌套搜索新方法](https://arxiv.org/abs/2511.08001) ⭐️ 7.0/10

本文提出博弈论嵌套搜索（GTNS），一种可扩展且可证明正确的算法，用于在一般动力学系统中计算纳什均衡，以解决多智能体运动规划问题。现有方法各有短板：基于优化的方法通常需要简化机器人动力学并因凸化陷入局部极小，基于收益矩阵的方法则需要显式枚举所有轨迹，扩展性差。GTNS 对所有智能体的动作空间进行高效搜索，并通过在低维空间中进行内部搜索来丢弃违反“无单边偏离”均衡约束的轨迹，同时允许用户指定全局目标以显式选择均衡。作者在多种自动驾驶和赛车场景中验证了该方法，能在普通硬件上仅用数秒得到解。这项工作对需在无通信环境中进行行为感知决策的机器人具有意义。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 在真实世界中，机器人之间往往没有显式通信，因此需要通过其他智能体的行为推断来规划。纳什均衡是一种博弈论解概念：在该均衡处，任何单个智能体单方面改变策略都无法获得更好结果；已被视为实现行为感知决策的关键工具。然而早期方法要么因简化动力学而受限，要么因枚举轨迹而扩展性差，GTNS 正是在这一背景下提出的。

**「影响」** 主要影响是：在一般动力学下，研究人员和开发者可以在普通硬件上数秒级求解纳什均衡，无需显式枚举轨迹也不会受凸化局部极小困扰。

**标签**: `#game theory`, `#motion planning`, `#multi-agent systems`, `#Nash equilibrium`, `#robotics`

---

<a id="item-tech-news-15"></a>
### [神经网络参数估计在劳动力市场 ABM 中的应用](https://arxiv.org/abs/2602.15572) ⭐️ 7.0/10

arXiv 预印本 2602.15572v3 报告了一项研究，评估了基于神经网络的仿真推断（SBI）框架在劳动力市场智能体建模（ABM）中进行参数估计的表现。该模型以工作转换网络为基础，并使用合成数据集与美国真实劳动力市场数据进行初始化。研究比较了由统计指标列表生成的摘要统计量与嵌入神经网络学习得到的摘要统计量。结果表明，神经网络方法能在不同数据集规模下从后验分布中有效恢复原始参数，并且相比传统贝叶斯方法提升了效率。该研究为 ABM 作为决策支持工具的实际应用提供了方法学证据。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 智能体建模（ABM）通过模拟个体行为再现复杂系统的涌现现象，但大规模 ABM 的参数空间探索常受计算资源限制，导致参数估计困难。传统贝叶斯估计方法通常计算成本高，而仿真推断（SBI）结合神经网络，可以从模拟数据中学习摘要统计量或后验分布，从而降低参数估计的计算负担。该研究正是将这类框架应用于劳动力市场 ABM。

**「影响」** 对于研究劳动力市场 ABM 的计算社会科学研究者，该框架提供了一种比传统贝叶斯方法更高效、可在不同数据规模下恢复原始参数的参数估计手段，增强了 ABM 用于决策支持的可行性。

**标签**: `#agent-based modelling`, `#simulation-based inference`, `#neural networks`, `#parameter estimation`, `#labour market`

---

<a id="item-tech-news-16"></a>
### [CIMORL：面向多机器人多目标强化学习的协调感知框架](https://arxiv.org/abs/2606.30893) ⭐️ 7.0/10

arXiv 论文提出 CIMORL（Coordination-Informed Multi-Objective Reinforcement Learning）框架，面向多机器人系统在分布式约束下同时优化相互竞争的目标。该方法引入分布式权重预测机制、特权专家训练策略，并提供 Pareto 最优解的理论保证；除基础版本外，还提出两个基于采样的变体 CIMORL-TS 和 CIMORL-MPPI，利用训练阶段的全局信息实现完全去中心化部署。实验在协作与对抗场景中显示，相比现有基线，超体积指标提升 21.2%，策略稳定性更优；Crazyflie 无人机实物实验在部分可观测条件下验证了资源分配与多攻击者-多防御者场景的鲁棒性。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** 多机器人系统常需同时优化多个相互竞争的目标，同时保持协调行为。传统多智能体强化学习方法往往依赖固定或集中式的协调机制，这限制了系统的适应性并违反分布式约束。多目标强化学习（MORL）在此背景下被提出，它通过权衡多个目标并寻找帕累托最优解，使智能体在不确定环境中进行序列决策。CIMORL 框架正是针对上述挑战，将分布式权重预测与特权专家训练结合，以在训练时利用全局信息、部署时实现完全分布式运行。

**「影响」** 该框架使多机器人强化学习系统无需集中式协调即可获得具有 Pareto 最优保证的分布式策略，并在无人机实物任务中展现可用性，对资源有限且需兼顾多目标的机器人应用开发者具有直接参考价值。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://arxiv.org/html/2606.30893v1">Sampling-Based Coordination - Informed Multi - Objective Multi-Robot...</a></li>
<li><a href="https://ieeexplore.ieee.org/document/6918520">Multiobjective Reinforcement Learning ... | IEEE Xplore</a></li>

</ul>
</details>

**标签**: `#multi-robot systems`, `#reinforcement learning`, `#multi-objective optimization`, `#distributed coordination`

---

<a id="item-tech-news-17"></a>
### [InterSAGE：智能体互联网的安全可验证互操作协议](https://arxiv.org/abs/2608.13030) ⭐️ 7.0/10

arXiv 预印本（编号 2608.13030v2）提出 InterSAGE，这是一套面向大语言模型（LLM）智能体互操作的安全协议套件。InterSAGE 包含持久身份、发现、信任协商与问责四层，并以四种核心原语实现：绑定开发者、代码包、运营方与部署上下文的智能体身份卡；基于 DID 绑定可验证凭证清单的能力感知发现；结合单调能力衰减与双层访问控制的信任协商；以及无需共识账本、由内核介导的加密审计轨迹。它被设计为与 MCP、A2A、ANP 和 AG-UI 等通信协议互补，而不是替代它们。作者将 InterSAGE 与 50 多个相关工作进行对比，认为此前没有任何架构将统一四层信任基底应用于安全智能体互操作。

rss · arXiv cs.MA · 8月17日 04:00

**「背景」** “智能体互联网”指 LLM 驱动的智能体跨组织边界发现对等体、调用工具并委派任务。现有协议多聚焦消息交换格式，未定义智能体如何证明身份、授权、宣称能力或委派后的责任，因此需要独立于通信协议的信任基底。

**标签**: `#Internet of Agents`, `#protocol`, `#security`, `#verifiable credentials`, `#AI agents`

---

<a id="item-tech-news-18"></a>
### [Nvidia 推动自建模型，挑战闭源 API](https://www.interconnects.ai/p/teaching-everyone-to-fish-for-tokens) ⭐️ 7.0/10

Nathan Lambert 分析认为，Nvidia 正通过投资接近开源的大模型，鼓励众多公司自行训练和部署模型，而非向 Anthropic、OpenAI 购买 API。他区分了开源模型（含完整训练配方、数据和代码）与开放权重模型（仅权重和推理代码），并指出开源模型生态将越来越依赖 Nvidia 的资助，Nvidia 已为此投入约 260 亿美元。Lambert 展望两种未来：若开源训练持续可行，Nvidia 将因算力需求增长而获利；若不成立，开放模型可能转向效率、可定制性等细分领域，形成长尾生态。他还提到 Meta 等公司通过开放权重模型来削弱对手的 API 收入，是一种“用代币淹没市场”的策略。

rss · Interconnects · 8月17日 15:07

**「背景」** 开源语言模型通常分为两类：一类是开源模型，提供完整训练数据、代码和配方；另一类是开放权重模型，只提供模型权重和推理代码，类似软件安装包。Nvidia 的策略是扶持开源模型，从而让更多的公司和个人加入模型训练和推理，以扩大对其 GPU 和推理服务的需求。

**「影响」** 开源模型生态未来数年的可持续性将高度依赖 Nvidia 等平台商的资金支持，若无法形成正向财务循环，开放模型可能与闭源模型分化为不同发展路径，集中在企业专用、本地部署等长尾场景。

**标签**: `#AI`, `#Open Source`, `#Nvidia`, `#Language Models`, `#Tech Industry`

---

<a id="item-tech-news-19"></a>
### [阿里技术详解 Harness Skill 原理与最佳实践](https://mp.weixin.qq.com/s?__biz=Mzg4NTczNzg2OA==&amp;mid=2247511112&amp;idx=1&amp;sn=279ba391d62489b0226d94570388ac8d) ⭐️ 7.0/10

阿里技术近日发布技术解析文章，从概念原理出发，结合真实工程化项目 trade-ab-skill，系统讲解 Harness 中 Skill 的结构规范、触发机制、作用域优先级与最佳实践。文章面向使用 Harness/Skill 体系的开发者，提供了可落地的工程化指导，但并非全新突破。内容强调通过理解 Skill 的组织与触发规则来提升系统可维护性与扩展性，并以 trade-ab-skill 为实例说明实践方法。

rss · 阿里技术 · 8月17日 11:05

**「背景」** Harness 工程是 Anthropic 提出的一种方法，旨在将软件工程的最佳实践（如模块化、版本控制、API 契约）引入与大语言模型的交互中，以构建可复用、可维护、可演进的智能工作流。Skill 是 Harness 的核心单元，通常通过 SKILL.md 文件来定义路由表和全局规则，并将业务细节下沉到模块文件，从而让 Agent 不仅依赖模型内置知识，还能利用团队沉淀的实践。本文即围绕 Skill 的结构规范、触发机制、作用域优先级与最佳实践展开讲解，并结合真实的工程化项目 trade-ab-skill 进行说明。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://zhuanlan.zhihu.com/p/2057850734914408929">Harness 工程之道：Skill 原理与最佳实践 - 知乎</a></li>
<li><a href="https://zhuanlan.zhihu.com/p/2021965663103665310">Harness Engineering 最佳实践：长运行多智能体的框架设计 - 知乎</a></li>
<li><a href="https://www.zhihu.com/question/2037195762312942355">Harness engineering和Agent skills究竟有什么区别呀？ - 知乎</a></li>

</ul>
</details>

**标签**: `#Harness`, `#Skill`, `#工程实践`, `#技术解析`, `#阿里巴巴`

---

<a id="item-tech-news-20"></a>
### [小米零售 AI 问数：从模型能力到业务可用实践](https://mp.weixin.qq.com/s?__biz=MzUxMDQxMDMyNg==&amp;mid=2247520198&amp;idx=1&amp;sn=080a86b89d0bc24a9157913cb3839bd3) ⭐️ 7.0/10

小米技术团队在官方公众号发布文章，分享零售业务中 AI 问数（AI 数据查询）的落地实践，重点讲述如何将模型能力转化为业务可用的查询功能。文章基于小米零售场景，介绍了从原始模型能力到业务可用这一过程中涉及的实践路径与关键问题。该实践为从事类似大语言模型应用开发的工程师提供了参考，也体现了 AI 查询在真实业务中落地需要面对的现实约束。由于当前仅有摘要信息，文章的具体方案细节和效果数据暂无法确认。

rss · 小米技术 · 8月17日 09:33

**「背景」** 传统 Text-to-SQL 方案让大模型直接生成数据库查询语句，但在企业真实数据体系中常因指标口径不统一、表结构复杂而导致结果不可信。小米中国区零售团队因此在实践中转向 Text-to-Metrics 路线，围绕指标治理、语义路由、查询执行和评测体系进行工程化建设，以提升 AI 问数在业务场景中的可用性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://blog.csdn.net/FineInsight/article/details/162074736">企业级智能问数系统设计实战：从语义层到指标体系，再到LLM受控SQL生...</a></li>
<li><a href="https://www.aixq.cc/63289.html">从模型能力到业务可用：小米零售 AI 问数实践 – AI星球</a></li>

</ul>
</details>

**标签**: `#AI`, `#Retail`, `#Data Query`, `#LLM`, `#Xiaomi`

---

## 科技博客

<a id="item-tech-blog-1"></a>
### [面向 200B+ DiT 模型的 vLLM-Omni 分布式分层卸载](https://vllm.ai/blog/2026-08-17-distributed-layerwise-offload) ⭐️ 9.0/10

rss · vLLM Blog · 8月17日 00:00

**「背景」** 单个 64GB HBM 设备放不下 Cosmos3-Super（64B 参数、124GB）这类大型 DiT 模型；传统 offloader 把整个模型复制到每个 rank 的主机内存，纯 DP 下 4 卡需要 4×124GB，而 HSDP/TP 虽然不占主机内存，却会把 HBM 塞满或引入通信开销。

**「方案」** 作者提出的分布式分层卸载（DLO）用四项配合机制解决两个瓶颈：先把参数移到 meta device，并用 mmap 指向共享 OS page cache，冷启动 cgroup 峰值从 178GB 降到 47GB（-73%）；再把权重按 dp\_size 分片、运行时用 AllGather 重建完整层，主机内存从 dp\_size×model\_size 变为约 model\_size；双缓冲只在每设备保留两层权重，HBM 不再随层数增长，720p 10s 负载下 64B 模型的峰值 HBM 约 28GB（HSDP 约 56GB）；最后利用 AllGather 与请求无关的特性让每个 DP rank 并行处理不同请求，吞吐是 HSDP 单请求的 3.3 倍。作者也强调不存在全局最优：8×B300 上 DP1×SP8 与 DP4×SP2 偏好 AllGather，DP8×SP1 偏好 rank-local；Ascend 上 pinned shard 经 /dev/davinci\_manager 分配、cgroup 看不到，物理 RAM 仍包含这部分；400GB 模型的外推只是估算，尚未实际验证。

**「启示」** 作者认为 DLO 让大型扩散模型在仅占两块层权重 HBM 和线性主机内存的情况下可服务，但最优模式依赖拓扑与规模，不能一概而论；vLLM-Omni 公开了后端代码、PR 和复现产物，便于社区独立检验。

**标签**: `#layerwise offload`, `#diffusion models`, `#memory optimization`, `#vLLM`, `#model parallelism`

---