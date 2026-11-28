---
layout: default
title: "Horizon Summary: 2026-11-28 (ZH)"
date: 2026-11-28
lang: zh
---

> 从 35 条内容中筛选出 7 条重要资讯。

---

**科技新闻**
1. [Google 提出 DeepCrossAttention：同等质量最高快 3 倍](#item-tech-news-1) ⭐️ 7.0/10
2. [报告称热门购物网站出现利用 WebRTC 的信用卡盗刷脚本](#item-tech-news-2) ⭐️ 7.0/10
3. [多州起诉 SpaceX 要求阻止 Grok 生成儿童性虐待及私密影像](#item-tech-news-3) ⭐️ 7.0/10
4. [OpenAI 反诉苹果，指控窃取商业机密与胁迫供应商](#item-tech-news-4) ⭐️ 7.0/10
5. [彭博：被禁 Nvidia Blackwell 芯片现身上海数据中心](#item-tech-news-5) ⭐️ 7.0/10
6. [美空军 Cloud One 平台据报遭入侵](#item-tech-news-6) ⭐️ 7.0/10
7. [SAP 拟裁员至少 1 万人，围绕 AI 重组](#item-tech-news-7) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Google 提出 DeepCrossAttention：同等质量最高快 3 倍](https://research.google/blog/supercharging-transformer-residual-connections/) ⭐️ 7.0/10

Google Research 在一篇博客中介绍了用于 Transformer 残差连接的 DeepCrossAttention 方法，并声称在模型质量相当的情况下最高可实现 3 倍速度提升。该说法若成立，可能降低 Transformer 的训练或推理时间成本，但现有材料只给出标题式结论，未提供基准设置、对比模型、硬件条件或误差范围。由于没有独立验证，3 倍加速应视为待复现的初步结果，而非已确认的通用收益。残差连接是 Transformer 的重要组成部分，因此这类改动的影响取决于它能否在真实模型和负载上保持质量与稳定性。

hackernews · ComputedCamp995 · 11月27日 23:06 · [社区讨论](https://news.ycombinator.com/item?id=50672565)

**「背景」** Transformer 的残差连接通常把每一层的输出与前面层相加，以缓解深层网络训练困难；但传统做法可能让信息在深度增加时被稀释。DeepCrossAttention（DCA）改为用可学习、依赖输入的权重和逐层交叉注意力，动态组合此前各层的输出，让模型选择更相关的信息。相关论文称，DCA 在给定训练时间下取得更好的困惑度，并在仅增加极少参数的情况下，以最高 3 倍的速度达到相同模型质量。

**「影响」** 对训练或部署 Transformer 的团队而言，这一结果目前只足以作为待验证的效率线索；在缺少基准细节和独立复现前，不应据此调整模型架构或部署方案。

**「社区讨论」** HN 讨论整体偏离技术验证：有人批评图表应使用柱状图而非折线图，有人询问该方法能否与 MTP、Dflash 等加速方案叠加，也有人将其与 DenseNet 类比，另有评论借 Gemini 的性价比展开猜测。评论中未出现对 3 倍加速的实质性复现或反证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://research.google/blog/supercharging-transformer-residual-connections/">Supercharging transformer residual connections - Google Research</a></li>
<li><a href="https://arxiv.org/abs/2502.06785">[2502.06785] DeepCrossAttention: Supercharging Transformer ...</a></li>
<li><a href="https://arxiv.org/html/2502.06785v1">DeepCrossAttention: Supercharging Transformer Residual ...</a></li>

</ul>
</details>

**标签**: `#DeepCrossAttention`, `#transformer efficiency`, `#residual connections`, `#AI research`, `#Google Research`

---

<a id="item-tech-news-2"></a>
### [报告称热门购物网站出现利用 WebRTC 的信用卡盗刷脚本](https://www.infohawk.com/news/2026-11-27-black-friday-webrtc-skimmer) ⭐️ 7.0/10

有报告称，在热门购物网站上出现了利用 WebRTC 进行数据外传的信用卡盗刷（skimming）脚本，相关报道的 URL 与标题指向 2026 年 11 月 27 日、即黑色星期五购物季前后。此类攻击属于客户端支付窃取：商家结账页面加载的第三方 JavaScript 在用户浏览器内读取支付表单数据，再通过隐蔽通道传出，因而风险核心在于第三方脚本的引入而非支付网关本身。报道将 WebRTC 视为新的外传通道，但所提供材料未包含受影响站点名单、脚本样本、感染规模、具体时间线或攻击者归属等细节，上述说法目前仅为“据报道”，尚无独立验证。

hackernews · scanr · 11月27日 15:40 · [社区讨论](https://news.ycombinator.com/item?id=50668145)

**「背景」** 信用卡侧录（skimming）是指在结账页面植入恶意脚本，在用户输入卡号、有效期等信息时将其窃取；这类攻击常借助电商站点引入的第三方 JavaScript，因此第三方脚本的加载与权限边界长期是支付安全的核心风险。WebRTC 是浏览器内置的实时通信接口，可用于建立点对点数据通道；相关报告称，攻击者利用该通道外传窃取数据，以绕过传统安全控制，且这类外传流量不易被内容安全策略（CSP）等常规防护机制发现。

**「影响」** 对于在结账页面嵌入第三方脚本的电商网站，这意味着支付数据可能通过 WebRTC 被客户端侧窃取，并绕过常见的 HTTP 流量监控，运营方需要审计并限制第三方 JavaScript 的权限。

**「社区讨论」** 评论普遍认为问题不在 WebRTC 的技术能力，而在于它较少被安全监控：同样的手法用普通 HTTP 请求也能实现，且嵌入第三方脚本的站点始终处于风险之中。有评论者据此认为拦截广告完全正当，也有人批评 Web 允许陌生人执行代码、支付仍依赖对称密钥，并追问广告为何不能在禁用 JavaScript 的沙箱中渲染。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.infohawk.com/news/2026-11-27-black-friday-webrtc-skimmer">Credit card skimming scripts using WebRTC found on popular ...</a></li>
<li><a href="https://dev.to/frankchu/webrtc-stole-cards-at-5-stores-i-re-checked-the-cleanup-59k9">WebRTC stole cards at 5 stores — I re-checked the cleanup</a></li>
<li><a href="https://securityaffairs.com/190002/malware/researchers-uncover-webrtc-skimmer-bypassing-traditional-defenses.html">Researchers uncover WebRTC skimmer bypassing traditional defenses</a></li>
<li><a href="https://www.akamai.com/glossary/what-is-magecart">What Is Magecart ? | Akamai</a></li>
<li><a href="https://commercesecurity.org/glossary/magecart">Magecart - Commerce Security Authority | Payment Security &amp; PCI...</a></li>
<li><a href="https://media.jscrambler.com/resources/Jscrambler-Data-Sheet-E-Commerce-Security-Threats.pdf">E - Commerce</a></li>

</ul>
</details>

**标签**: `#web security`, `#payment skimming`, `#WebRTC`, `#JavaScript`, `#e-commerce`

---

<a id="item-tech-news-3"></a>
### [多州起诉 SpaceX 要求阻止 Grok 生成儿童性虐待及私密影像](https://www.oag.state.va.us/media-center/news-releases/jay-jones/3162-attorneys-general-jones-and-rayfield-file-suit-against-spacex-parent-company-of-x-xai-and-grok-over-creation-and-promotion-of-child-exploitation-and-non-consensual-images-on-platform) ⭐️ 7.0/10

多州总检察长已对 SpaceX 提起诉讼，要求阻止 Grok 生成儿童性虐待材料和未经同意的私密影像。诉讼指控的重点包括 Grok 对这类内容的“创建和推广”，把争议从模型输出延伸到内容审核与平台法律责任。现有材料主要来自诉讼公告，未披露具体州数、详细诉求或 Grok 的防护机制。该案涉及生成式 AI 的严重危害与责任边界，后续司法进展仍待观察。

hackernews · DeepLogin · 11月27日 19:42 · [社区讨论](https://news.ycombinator.com/item?id=50670855)

**「背景」** Grok 是 xAI 在 X 平台提供的生成式 AI 聊天机器人，其图像生成工具 Grok Imagine 可生成图像；该工具被用于制作非自愿亲密图像和儿童性虐待材料的争议，已引发多州执法机构关注。2026 年 1 月，新泽西州代理总检察长与多州总检察长联合致函 xAI，要求立即停止 Grok 生成非自愿亲密图像和儿童性虐待材料；同年 5 月，RAINN 也表示此类滥用可能依现行法律构成犯罪。2026 年 11 月，俄勒冈州和弗吉尼亚州总检察长对 SpaceX Super Intelligence 提起诉讼，指控其允许 Grok 用户生成非自愿性露骨内容，违反州消费者保护法。

**「影响」** 对 xAI 而言，这起多州诉讼可能迫使其调整 Grok 的内容安全策略并删除已生成的剥削性内容，也让生成式 AI 工具开发者是否应为滥用后果承担法律责任成为直接争点；xAI 已就明尼苏达州相关法律起诉，表明其正积极抗辩此类责任扩张。

**「社区讨论」** 评论区对 Grok 为何能生成此类内容、是否需刻意绕过限制以及应否追究使用者责任存在分歧。另有评论者声称，美国最高法院已裁定为个人消费而用 AI 制作儿童性虐待材料属于受保护言论，前提是不涉及真实儿童，并对“复仇色情”因涉及真人而是否适用表示不确定；该说法未获来源证实。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/23/oregon-virginia-spacex-grok-deepfake-lawsuits.html">SpaceX sued by 2 states over AI deepfake porn, Grok safety claims</a></li>
<li><a href="https://www.nytimes.com/2026/11/23/technology/spacex-lawsuit-ai-sexualized-images.html">SpaceX Sued By Oregon and Virginia Over A.I.-Generated...</a></li>
<li><a href="https://www.engadget.com/2325111/two-states-sue-spacex-over-sexually-explicit-grok-deepfakes/">Two States Sue SpaceX Over Sexually Explicit Grok Deepfakes</a></li>
<li><a href="https://rainn.org/rainn-statement-on-use-of-xais-grok-to-produce-child-sexual-abuse-material/">RAINN Statement on Use of xAI’s Grok To Produce Child Sexual ...</a></li>
<li><a href="https://www.njoag.gov/acting-ag-davenport-demands-immediate-action-from-xai-to-stop-production-of-nonconsensual-intimate-images-and-child-sexual-abuse-material/">Acting AG Davenport Demands Immediate Action from xAI to Stop ...</a></li>
<li><a href="https://www.lexology.com/library/detail.aspx?g=8ac74728-f1b0-423a-be4e-f714c3a6d402">Abusive Images Are Posted on an Online Platform—Now... - Lexology</a></li>
<li><a href="https://www.theguardian.com/technology/2026/jul/29/xai-sues-minnesota-nudification-technology">Elon Musk’s xAI sues Minnesota over law banning... | The Guardian</a></li>

</ul>
</details>

**标签**: `#AI regulation`, `#content moderation`, `#generative AI`, `#AI safety`, `#Grok`

---

<a id="item-tech-news-4"></a>
### [OpenAI 反诉苹果，指控窃取商业机密与胁迫供应商](https://the-decoder.com/openai-countersues-apple-over-trade-secret-theft-and-alleged-coercion-of-shared-suppliers/) ⭐️ 7.0/10

OpenAI 于周五在加利福尼亚州法院对苹果提起诉讼，指控苹果窃取商业秘密并从事不公平商业行为，消息由《金融时报》报道。OpenAI 称苹果“胁迫和威胁”同时为两家公司供货的供应商，并利用市场力量压制竞争；诉状还指苹果鼓励员工将公司数据存放在个人设备上，再以此针对想要离职的员工。根据诉状，一名前 OpenAI 员工回到苹果后传递了产品计划和供应商信息。这起反诉源于苹果今夏提起的诉讼，后者指控数名前员工向 OpenAI 泄露机密信息；背景是 OpenAI 已完成对前苹果首席设计师 Jony Ive 工作室 io 的 64 亿美元收购，并准备推出与苹果竞争的自有设备，而两年前两家公司还曾高调宣布将 ChatGPT 整合进 iPhone。

rss · The Decoder · 11月27日 19:38

**「背景」** 这起纠纷的背景是双方围绕商业秘密与员工流动的持续法律冲突。苹果此前起诉 OpenAI，指控其挖走苹果员工并获取机密资料和产品设计，还将 Jony Ive 创立的硬件公司 io 列为被告；OpenAI 则提出驳回，称苹果的 iCloud 工作政策让离职员工能够访问相关数据。OpenAI 随后提起反诉，使争议从“苹果指控 OpenAI 窃密”扩展为双方互相指控，并涉及共同供应商。

**「影响」** 这起诉讼把双方围绕 AI 硬件供应链和员工流动的争端升级为加州法院中的双向诉讼，可能加大同时服务两家公司的供应商所面临的合规与选边压力，并给 OpenAI 筹备自有硬件的供应商合作带来不确定性。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theguardian.com/technology/2026/jul/10/apple-sues-openai-trade-secrets">Apple sues OpenAI , alleging artificial intelligence... | The Guardian</a></li>
<li><a href="https://www.gotechtor.com/openai-motion-dismiss-apple-trade-secrets-lawsuit/">Apple Is Being Accused of Something Most iPhone Users... - Gotechtor</a></li>
<li><a href="https://www.uniladtech.com/news/tech-news/openai-apple-trade-secret-lawsuit-334125-20260714">Damning text message lands OpenAI in a massive legal nightmare...</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/openai-countersues-apple-over-trade-193855054.html?fr=sycsrp_catchall">OpenAI Countersues Apple Over Trade Secrets and Supply Chain</a></li>
<li><a href="https://9to5mac.com/2026/11/27/openai-countersues-apple-alleging-trade-secret-theft-and-supplier-threats/">OpenAI countersues Apple, alleging trade secret theft and ...</a></li>
<li><a href="https://www.theguardian.com/technology/2026/nov/27/openai-countersues-apple-trade-secrets">OpenAI countersues Apple for allegedly stealing trade secrets</a></li>

</ul>
</details>

**标签**: `#OpenAI`, `#Apple`, `#trade secrets`, `#litigation`, `#tech industry`

---

<a id="item-tech-news-5"></a>
### [彭博：被禁 Nvidia Blackwell 芯片现身上海数据中心](https://the-decoder.com/banned-nvidia-blackwell-chips-turn-up-in-a-shanghai-data-center-linked-to-alice-huang-bloomberg-reports/) ⭐️ 7.0/10

彭博审阅的中国监管文件显示，两家中国公司将 Nvidia 的 Blackwell 芯片安装在上海一处与 Alice Huang 有关的数据中心；其中 Shanghai Shuoyao 以一套 GB300-NVL72 机架作为抵押，向 Shanghai Innovation Bank 申请 9600 万元人民币（约 1400 万美元）贷款，Shanghai Kezhan 则在贷款文件中列出同一站点的一台 GB200 服务器。报道指出，这些芯片未经美国许可出口到中国属被禁行为，彭博还通过公共保修数据库中的序列号将机架追溯到台湾厂商 Gigabyte。报道说，Shanghai Shuoyao 与新加坡 Megaspeed 关系密切，特朗普政府本月以涉嫌芯片走私为由将 Megaspeed 列入美国贸易黑名单；Alice Huang 于 2023 年创立 Megaspeed，Nvidia 在四天内批准其为合作伙伴，后者随后成为 Nvidia 在东南亚最大客户。报道并称，美国新收紧的出口规则和反扩散措施已给中国 AI 初创企业带来困扰。

rss · The Decoder · 11月27日 18:27

**「背景」** Blackwell 是英伟达面向 AI 计算的高端 GPU 架构，GB200 服务器与 GB300-NVL72 机架都是基于该架构的系统；美国规定此类芯片对华出口须获得许可证。Megaspeed 由 Alice Huang 于 2023 年创立，英伟达曾迅速将其认证为合作伙伴，但该公司自 2024 年起因涉嫌将 AI 芯片转运至中国而接受美方调查。美国商务部本月已将 Megaspeed 及其在泰国、马来西亚的子公司列入贸易黑名单，理由是存在重大芯片转移风险，这使其获取美国出口需经审批且可能被拒。

**「影响」** 若这些设备归属和抵押关系得到确认，涉及 Nvidia、Gigabyte、Megaspeed、中国数据中心运营商和贷款银行的跨境交易将面临更严格的美国出口合规审查与融资尽职调查。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theguardian.com/us-news/live/2026/nov/23/donald-trump-democrats-republicans-presidential-primary-midterms-house-latest-news-updates">Republican lawmakers break with Trump over alleged Nvidia chip ...</a></li>
<li><a href="https://finance.yahoo.com/technology/articles/nvidia-blackwell-chips-turn-china-114546617.html">Nvidia Blackwell Chips Turn Up at China Site Tied to Alice Huang</a></li>
<li><a href="https://www.nine.com.au/world-news/donald-trump-nvidia-shares-raise-questions-on-capitol-hill-amid-singaporean-pm-admission-20261125-p61gz0.html">Donald Trump’s Nvidia shares raise questions on... | Nine.com.au</a></li>

</ul>
</details>

**标签**: `#Nvidia Blackwell`, `#export controls`, `#AI hardware`, `#China`, `#data centers`

---

<a id="item-tech-news-6"></a>
### [美空军 Cloud One 平台据报遭入侵](https://the-decoder.com/hackers-breached-the-us-air-forces-flagship-cloud-one-platform-report-says/) ⭐️ 7.0/10

据路透社报道，攻击者入侵了美国空军核心云基础设施 Cloud One，事件在上月例行系统升级时被发现，可能暴露敏感的战术、人事和后勤数据。一名消息人士称，攻击者利用软件漏洞进入平台控制平面；Cloud One 自 2017 年起整合微软、亚马逊、Oracle 和 Alphabet 的云资源，承载防空雷达、弹药管理等应用。作为应对，美国空军暂停了更多应用的迁移、阻止更新并撤销管理员权限，美国网络司令部正在评估损失。目前尚不清楚攻击者身份以及是否有数据被窃取。

rss · The Decoder · 11月27日 16:06

**「背景」** Cloud One 是美国空军自 2017 年起建设的集中式云平台，目标是让美国空军部在统一环境中运行应用，并整合微软、亚马逊、甲骨文和 Alphabet 等多家云资源。该平台承载的任务应用包括防空雷达和弹药管理等，属于美军规模最大的云网络之一。控制面则是管理云资源、权限和配置的核心层，一旦被攻破，影响可能波及平台上运行的多类应用。

**「影响」** 美国空军暂停 Cloud One 新应用迁移、阻止更新并撤销管理员权限，已直接影响相关云上应用的部署与运维节奏；潜在数据暴露范围仍待美国网络司令部评估。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://southfront.press/hackers-breach-u-s-air-forces-flagship-cloud-network/">Hackers Breach U . S . Air Force ’s Flagship Cloud Network</a></li>
<li><a href="https://www.bankingnews.gr/diethni/articles/913633/unbelievable-strike-on-the-us-pentagon-hackers-breached-the-system-for-aircraft-and-missile-systems+title=">Unbelievable strike on the US Pentagon - Hackers breached the...</a></li>

</ul>
</details>

**标签**: `#cloud security`, `#cyberattack`, `#US Air Force`, `#cloud infrastructure`, `#vulnerability exploitation`

---

<a id="item-tech-news-7"></a>
### [SAP 拟裁员至少 1 万人，围绕 AI 重组](https://the-decoder.com/sap-plans-to-cut-at-least-10000-jobs-as-it-pivots-to-ai/) ⭐️ 7.0/10

SAP 据报正准备裁员至少 1 万人，约占其超过 11 万名全球员工的 9%，这是围绕 AI 重组的一部分；彭博社援引知情人士称，最终人数尚未确定，并可能在员工代表谈判后变化。报道说，所有部门都被要求寻找节省空间，产品开发、工程和销售受影响最大；SAP 拒绝置评，仅表示会持续审视组织结构。SAP 在德国约有四分之一员工，当地就业保障持续到 2028 年，而 CEO Christian Klein 希望把 AI 工具嵌入公司产品线。SAP 已在 2024 年裁减约 1 万人，竞争对手也在采取类似行动：Oracle 在 12 个月内削减 2.1 万个岗位，Microsoft 向约 6 万名员工提供买断方案。

rss · The Decoder · 11月27日 14:57

**「背景」** SAP 是一家德国企业软件公司，全球员工超过 11 万人，其中约四分之一位于德国。该公司在 2024 年已裁减约 1 万个岗位，且德国的就业保障承诺延续至 2028 年，这会影响新一轮调整的落地方式和时间。当前企业软件厂商正围绕 AI 调整产品与组织，SAP 的举措属于这一行业趋势的一部分。

**「影响」** 对 SAP 产品开发、工程和销售员工而言，若报道中的裁员推进，这些岗位将首当其冲；德国约四分之一员工在 2028 年前享有就业保障，最终规模仍取决于员工代表谈判。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.cnbc.com/2026/11/27/sap-job-cuts-ai-restructuring.html">SAP weighs cutting at least 10 , 000 jobs in AI push: Bloomberg</a></li>
<li><a href="https://finance.yahoo.com/technology/ai/articles/sap-weighs-cutting-least-10-161548594.html">SAP Weighs Cutting at Least 10 , 000 Positions in AI Restructuring</a></li>
<li><a href="https://www.marketwatch.com/story/sap-reportedly-to-cut-10-000-jobs-it-marks-the-latest-in-a-brutal-year-for-tech-layoffs-c7989744">SAP reportedly set to cut 10 , 000 jobs — the latest in... - MarketWatch</a></li>

</ul>
</details>

**标签**: `#SAP`, `#AI restructuring`, `#tech layoffs`, `#enterprise software`, `#workforce`

---