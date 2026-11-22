---
layout: default
title: "Horizon Summary: 2026-11-22 (ZH)"
date: 2026-11-22
lang: zh
---

> 从 38 条内容中筛选出 6 条重要资讯。

---

**科技新闻**
1. [Lean 黎曼猜想形式化声明引发可信度争论](#item-tech-news-1) ⭐️ 9.0/10
2. [GPGME/GnuPG 内存安全漏洞引发 RCE 定性与影响范围争议](#item-tech-news-2) ⭐️ 8.0/10
3. [Thinking Machines 发布 Inkling 2 Mini 开源循环式多模态模型](#item-tech-news-3) ⭐️ 8.0/10
4. [用 Go 构建 PostgreSQL 扩展的技术资源](#item-tech-news-4) ⭐️ 7.0/10
5. [Muru：面向 ASGI 与 WSGI 的 AI 辅助 Rust 服务器](#item-tech-news-5) ⭐️ 7.0/10
6. [美国科技股创疫情以来最大周跌幅，AI 疑虑升温](#item-tech-news-6) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Lean 黎曼猜想形式化声明引发可信度争论](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) ⭐️ 9.0/10

Lean 社区博客发布了一篇与黎曼猜想相关的形式化验证帖子，但现有材料没有提供可核验正文，因此相关结果仍属未经独立确认的声明。评论和 RSS 摘要将其描述为 Anthropic 数学家 Levent Alpöge 与 Claude 提出的广义黎曼猜想（GRH）证明，并以 Lean 发布供计算机检查；RSS 摘要还称，数小时后斯坦福研究人员发布了一份独立的全人工竞争草稿，但该摘要被截断。若这些说法成立，其意义将同时波及数论、数学基础和大规模形式化，因为评论称 Claude 为此形式化了大量现代数学。当前争议的核心不是结论本身已被确认，而是证明助手内核是否足够独立、历史错误证明能否穿过检查，以及 AI 辅助工作中人类专家的监督作用。

hackernews · g-b-r · 11月21日 14:36 · [社区讨论](https://news.ycombinator.com/item?id=50589618)

**「背景」** 黎曼猜想由 Bernhard Riemann 于 1859 年提出，关注黎曼ζ函数的零点分布，常被视为数学中最重要的未解问题之一；它的推广形式通常称为广义黎曼猜想（GRH）。Lean 是交互式证明助手，数学论证被写成代码后由内核检查，因此形式化验证的可信度取决于内核及检查器实现。就本条目而言，Anthropic 的 Levent Alpöge 于 2026 年 11 月 20 日声称与 Claude 找到了黎曼猜想证明及处理 GRH 的方法并发布 Lean 代码，但该论证尚未经过独立验证；随后又出现了有 Stanford 训练背景的研究者发布的、被描述为“全人工、无 AI”的 GRH 竞争草稿。

**「影响」** 对 Lean 社区和形式化验证研究者而言，若该形式化经独立复核成立，它将把 AI 辅助的大规模形式化推进到核心数学成果的验证场景，并提高对证明助手内核与复核流程的审查要求。当前数学界仍需时间消化该证明，其实际影响取决于后续复核能否确认 Lean 结果成立。

**「社区讨论」** 讨论未形成一致结论：一方认为，要让一项已被多个内核接受的 RH 证明实为错误，需多个不同实现的内核及其一致性证明同时出错，概率极低；另一方以 Collatz 猜想假反驳曾通过某个“独立”检查器为例，质疑检查器独立性和 AI 证明的可信度。还有评论强调 Levent Alpöge 在引导 Claude 产出该结果中的关键作用，并追问此类大结果是否会为更重大的数学问题铺路。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.unite.ai/levent-alpoges-unverified-riemann-claim-puts-claudes-lean-code-in-focus/">Levent Alpöge’s Unverified Riemann Claim Puts Claude’s Lean ...</a></li>
<li><a href="https://www.nacionale.com/en/articles/who-is-alessandro-masullo-all-human-riemann-hypothesis-proof-grh-ravi-vakil-stanford">Masullo&#x27;s GRH draft : Stanford PhD, &#x27; all human , no AI&#x27;</a></li>
<li><a href="https://www.theguardian.com/technology/2026/nov/21/anthropic-riemann-hypothesis-solved-claude-ai">Anthropic mathematician claims he used Claude to... | The Guardian</a></li>
<li><a href="https://www.newscientist.com/article/2600134-anthropic-mathematician-claims-ai-assisted-proof-of-the-riemann-hypothesis/">Anthropic mathematician claims AI - assisted proof of the Riemann ...</a></li>
<li><a href="https://techcrunch.com/2026/11/20/ai-claimed-a-solution-to-the-167-year-old-riemann-hypothesis-and-a-human-did-too/">AI claimed a solution to the 167-year-old Riemann hypothesis — and...</a></li>

</ul>
</details>

**标签**: `#Lean`, `#formal verification`, `#Riemann Hypothesis`, `#AI for mathematics`, `#proof assistants`

---

<a id="item-tech-news-2"></a>
### [GPGME/GnuPG 内存安全漏洞引发 RCE 定性与影响范围争议](https://lists.gnupg.org/pipermail/gnupg-announce/2026q4/000517.html) ⭐️ 8.0/10

一份关于 GPGME/GnuPG 内存安全漏洞的协同披露正在引发关注，原因在于其下游使用范围广，并可能影响签名提交和邮件客户端等工作流。社区讨论对“完整 RCE 链”的定性存在分歧，有评论者称这实际上是双重释放（double free）漏洞，而非可直接利用的 RCE 链。另有评论称，所有使用 2.3.0 之前 GPGME 版本的软件都可能受影响，并列举了 Gpg4win、GnuPG Desktop、多数邮件客户端、许多 XMPP 客户端、Samba 和 Flatpak 等例子。披露时间线方面，评论提到漏洞由 Johan Carlsson 发现，GitLab 于 2026-11-12 通知相关方，原定 2026-11-25 协同披露，但因新的 Ruby2Shell 漏洞，GitLab 提前更新，GPGME 漏洞也于 2026-11-20 公开。由于所给材料没有漏洞公告正文，具体严重性、受影响版本边界和利用条件仍需以官方公告和技术分析为准。

hackernews · gdgghhhhh · 11月21日 08:32 · [社区讨论](https://news.ycombinator.com/item?id=50587208)

**「背景」** GPGME 是 GnuPG 的库接口，邮件客户端、签名提交工具及其他应用可通过它调用 OpenPGP 功能，因此该组件的内存安全问题会影响广泛的下游软件。此次披露对应 CVE-2026-129975，公开信息将其描述为由恶意 OpenPGP 密钥触发的双重释放（double-free）缺陷，GPGME 2.3.1 已修复该关键安全漏洞。

**「受影响范围」** 使用 GPGME 2.3.0 之前版本的 GitLab 签名提交校验、邮件/XMPP 客户端以及 Gpg4win/GnuPG Desktop 等下游软件，在解析含超长用户 ID 的 OpenPGP 密钥时可能触发双重释放，应升级至 2.3.1；其能否进一步形成 RCE 仍取决于具体调用路径且存在争议。

**「社区讨论」** 评论区的核心分歧在于漏洞是否应称为 RCE：有人强调它在 GitLab 签名提交路径上的代码执行风险，另一些人则坚持它只是一个双重释放漏洞。也有人指出红帽下游五年前似乎已修复而上游遗漏，并讨论 C/C++ 内存安全工具的必要性；这些说法尚未在给定材料中得到独立验证。

<details><summary>参考链接</summary>
<ul>
<li>Fwd: GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)</li>
<li>GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)</li>
<li>Critical GPGME Flaw CVE-2026-129975 - Aviatrix</li>
<li><a href="https://lists.gnu.org/archive/html/info-gnu/2026-11/msg00006.html">GnuPG Security Advisory for GPGME (T8557,CVE-2026-129975)</a></li>
<li><a href="https://thecybersecguru.com/uncategorized/cve-2026-129975-gpgme-double-free/">GPGME Bug Hid for 24 Years: CVE-2026-129975 Explained | The ...</a></li>

</ul>
</details>

**标签**: `#GPGME`, `#memory safety`, `#vulnerability disclosure`, `#open-source security`, `#GitLab signed commits`

---

<a id="item-tech-news-3"></a>
### [Thinking Machines 发布 Inkling 2 Mini 开源循环式多模态模型](https://the-decoder.com/new-open-model-inkling-2-mini-thinks-in-loops-to-solve-problems-with-fewer-words-and-still-runs-on-a-laptop/) ⭐️ 8.0/10

Thinking Machines 发布了 Inkling 2 Mini，这是一款采用循环 Transformer 架构的 Apache 2.0 开源多模态混合专家（MoE）模型，可在本地运行。该模型每生成一个 token 会将 24 层中的 12 层连续执行三次，从而在不增加输出文本的情况下延长内部推理；其总参数为 264 亿，每个 token 激活 54 亿参数，支持文本和图像输入以及 100 万 token 上下文窗口。Thinking Machines 称，它在智能体编程测试中领先所有 1000 亿参数以下的开源模型，DeepSWE v1.1 得分 48.2%，Vals Index v2.2 得分 46.5%；Artificial Analysis 智能指数为 20 分，与 Qwen3.8 27B 持平，但成本约为后者的六分之一、速度约为四倍。该模型可在内存至少 32 GB 的 Mac 和 Nvidia DGX Spark 上本地运行，权重及支持可变循环的研究版本已发布于 Hugging Face，也可在 Tinker Playground 试用。上述基准与效率数据来自厂商及 Artificial Analysis 的公布结果。

rss · The Decoder · 11月21日 10:33

**「背景」** 循环层 Transformer（looped transformer）与常规 Transformer 的关键区别在于：它会将部分层对每个 token 重复执行多次，从而在不增加可见输出 token 的情况下提高单 token 的计算量。混合专家（MoE）架构则让每个 token 只激活一部分参数，因此总参数量可以远大于单次推理实际使用的参数量，以降低推理成本。Thinking Machines 表示，Inkling 2 Mini 是其首个公开发布的循环层模型；他们同时研究了循环对可监督性的影响，也就是能否仍通过阅读模型的思维链来对其进行监督。

**「影响」** 对想在本地或低成本环境下部署智能体编程模型的开发者而言，Inkling 2 Mini 以 Apache 2.0 许可、32 GB 内存 Mac 即可运行的体量，在 DeepSWE v1.1（48.2%）和 Vals Index v2.2（46.5%）上成为 100B 参数以下开源权重模型中得分最高者。Artificial Analysis 的数据显示，它用约少 5–6 倍的活跃参数达到与 Qwen3.8 27B、Nanbeige4.3-33B 相当的智能指数，但这些仍属厂商与第三方基准声明，尚无独立技术复现或细节披露。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://thinkingmachines.ai/model-card/inkling-2-mini/">Inkling 2 Mini Model Card - Thinking Machines Lab</a></li>
<li><a href="https://huggingface.co/thinkingmachines/Inkling-2-Mini">thinkingmachines/ Inkling - 2 - Mini · Hugging Face</a></li>
<li><a href="https://thinkingmachines.ai/news/inkling-2-mini/">Introducing Inkling 2 Mini - Thinking Machines Lab</a></li>
<li><a href="https://artificialanalysis.ai/articles/inkling-2-mini">Thinking Machines has released Inkling 2 Mini ... | Artificial Analysis</a></li>

</ul>
</details>

**标签**: `#open-source AI`, `#LLM architecture`, `#looped transformers`, `#mixture-of-experts`, `#on-device AI`

---

<a id="item-tech-news-4"></a>
### [用 Go 构建 PostgreSQL 扩展的技术资源](https://jespino.github.io/gopgext/) ⭐️ 7.0/10

名为“PostgreSQL Extensions in Go”的技术资源聚焦于在 Go 中构建 PostgreSQL 扩展，并在 Hacker News 上引发讨论。讨论者对其实现路径表现出兴趣，同时也质疑 Go 是否适合 Postgres 扩展所涉及的数据面工作负载。评论还提到同一作者关于用 Go 编写 Linux 内核模块的 gokm 项目，以及用 Go 编写 PostgreSQL 扩展的 plgo 项目。由于没有提供正文细节，具体 API、支持范围和限制尚不明确。

hackernews · valyala · 11月21日 17:08 · [社区讨论](https://news.ycombinator.com/item?id=50591260)

**「背景」** PostgreSQL 扩展是加载到数据库服务器进程中的模块，可用于增加函数、数据类型或索引能力，因此通常需要与数据库内核及其接口紧密配合。传统上这类扩展多用 C 编写，以便直接调用服务器接口；用 Go 构建时，这类项目通常需要处理 Go 运行时与 PostgreSQL 进程模型之间的衔接。Hacker News 的讨论也由此展开：Go 在网络服务和平台类工具中很常见，但扩展运行在数据面，对延迟和内存行为更敏感。

**「影响」** 对希望在 Postgres 生态中复用 Go 技能的系统与数据库工程师来说，这类资源可能降低编写扩展的门槛，但其数据面适用性仍是讨论中的未决问题。

**「社区讨论」** 评论普遍认可更多人使用和扩展 Postgres 对生态有利，但一位评论者认为 Go 更适合平台层任务，对它在数据面扩展中的吸引力存疑。另有人补充了 gokm 和 plgo 等相关项目，也有评论转向讨论 Go 吉祥物。

**标签**: `#PostgreSQL`, `#Go`, `#database extensions`, `#systems programming`, `#developer tooling`

---

<a id="item-tech-news-5"></a>
### [Muru：面向 ASGI 与 WSGI 的 AI 辅助 Rust 服务器](https://simonwillison.net/2026/Nov/21/muru/) ⭐️ 7.0/10

Simon Willison 简短介绍了 Graham Dumpleton 的新项目 Muru：这是一个借助 AI 辅助开发、用 Rust 编写的服务器，目标是在开发和生产环境中运行 ASGI 与 WSGI Python 应用。Dumpleton 在 20 年前创建了 mod\_wsgi，此次项目延续了他对 Python Web 应用生产部署方式的长期思考。自 2026 年 11 月 4 日至 21 日，他连续发布了 18 篇相关文章，覆盖 worker 内部结构、import once/fork many、开发环境 HTTPS、WSGI 与 ASGI 共存、无需重启的发布、无服务网格的灰度发布、容器与 Kubernetes 集成、按 worker 上报信息扩缩容、缩容到零、定时 overlay，以及页面工具栏和追踪等主题。Dumpleton 在“AI as a lifestyle choice”一文中表示，AI 可能在表面完成大量工作，但判断什么还不够好仍由他负责，20 年 mod\_wsgi 经验正好用于此；他也表示会持续打磨 Muru，直到自己和他人都能信任它。Willison 的介绍只是简短指引，未提供性能基准或生产采用数据，Muru 仍处于早期阶段。

rss · Simon Willison · 11月21日 23:56

**「背景」** WSGI 是 Python 传统的同步 Web 应用网关接口，而 ASGI 在支持异步的同时还能处理 WebSocket 等长连接；由于两套协议不同，若要同时提供 WSGI 和 ASGI 服务，过去通常需要并排启动两个服务器，再在前端加一层代理来按路径分流，并额外解决会话与配置共享问题。Graham Dumpleton 在大约 20 年前创建了 Apache 的 mod\_wsgi 模块，长期用于在生产环境中部署 Python Web 应用；此后他持续思考服务 Python 应用的最理想方式，Muru 正是这一思路的延续。

**「影响」** 对需要部署 ASGI/WSGI Python 应用的开发者而言，Muru 提供了一个由 mod\_wsgi 作者打造、基于 Rust 的新选择；但当前 0.1.0 预发布仍处于 alpha，命令和配置可能变化，采用时应预留迁移和兼容性成本。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://grahamdumpleton.me/posts/2026/11/muru-wsgi-and-asgi-together/">Muru: WSGI and ASGI together - Graham Dumpleton</a></li>
<li><a href="https://simonwillison.net/2026/Nov/21/muru/">Muru - simonwillison.net</a></li>
<li><a href="https://github.com/muruhq/muru">GitHub - muruhq / muru : Routing edge, control plane and Python ...</a></li>

</ul>
</details>

**标签**: `#Python`, `#WSGI`, `#ASGI`, `#Rust`, `#web servers`

---

<a id="item-tech-news-6"></a>
### [美国科技股创疫情以来最大周跌幅，AI 疑虑升温](https://the-decoder.com/us-technology-stocks-suffer-their-worst-weekly-loss-since-the-pandemic-as-ai-doubts-pile-up/) ⭐️ 7.0/10

美国科技股遭遇自新冠疫情以来最差的单周表现：以科技股为主的纳斯达克 100 指数周五下跌 5.6%，全周下跌 10.4%。据《金融时报》报道，该指数较 10 月高点低 20%，已进入熊市区间。英伟达周五暴跌 14%，此前有报道称美国证券交易委员会正在审查其会计处理；美国半导体指数下跌 10.7%，Sandisk、美光、博通等存储与芯片股普遍走低，Anthropic 在上市次日下跌 9.1%。报道将抛售归因于对数十亿美元级 AI 建设支出的疑虑、英伟达相关争议与可疑中国交易、民主党赢得中期选举后的政治逆风，以及伊朗战争推高油价、使通胀和利率维持高位。

rss · The Decoder · 11月21日 10:27

**「背景」** 纳斯达克 100 指数是科技股占比较高的美国股指，常被视为科技板块的风向标；市场通常将较近期高点下跌 20%定义为熊市。此前，市场对 AI 基础设施大规模投资的预期推动英伟达等芯片股估值上升，使这类周期性股票对 AI 需求放缓或估值合理性的信号更加敏感。美国证券交易委员会（SEC）对会计问题的审查属于监管核查，并不等同于认定违规，但相关报道仍会放大投资者对财务披露的担忧。

**「影响」** 对 AI 芯片与半导体投资者而言，这轮抛售正把该板块推向自 2001 年以来最严重的两个月跌势，英伟达等龙头的高估值与 AI 资本开支叙事面临更直接的重估压力。

<details><summary>参考链接</summary>
<ul>
<li>Nasdaq 100 Ends Worst Week Since 2020, S&amp;P 500 In Correction ...</li>
<li>#Nvidia shares plunged 14.01 percent on Friday after reports of an #SEC ...</li>
<li><a href="https://www.benzinga.com/markets/market-summary/26/11/63510066/this-week-on-wall-street-semiconductor-worst-two-months-since-2001-nvidia-correction">Semiconductor Stocks Heading for Worst 2-Month Slump Since ...</a></li>

</ul>
</details>

**标签**: `#AI investment`, `#tech stocks`, `#Nvidia`, `#semiconductors`, `#market selloff`

---