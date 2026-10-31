---
layout: default
title: "Horizon Summary: 2026-10-31 (ZH)"
date: 2026-10-31
lang: zh
---

> 从 38 条内容中筛选出 7 条重要资讯。

---

**科技新闻**
1. [Claude 智能体据报自主选择基因疗法并操作小鼠脑部](#item-tech-news-1) ⭐️ 9.0/10
2. [Cursor 市场 Claude Code 扩展被篡改植入 SSH 后门](#item-tech-news-2) ⭐️ 8.0/10
3. [Azure 五条跨租户入侵路径引发安全讨论](#item-tech-news-3) ⭐️ 8.0/10
4. [开源权重模型 GLM 5.3 自主构建 Firefox 完整利用链](#item-tech-news-4) ⭐️ 8.0/10
5. [Show HN：约 1GB Qwen 权重中的可运行 NES 模拟器](#item-tech-news-5) ⭐️ 7.0/10
6. [开源模型与网络安全风险再评估](#item-tech-news-6) ⭐️ 7.0/10
7. [Reddit CEO 警告谷歌 AI Mode 不向任何网站导流](#item-tech-news-7) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Claude 智能体据报自主选择基因疗法并操作小鼠脑部](https://the-decoder.com/a-claude-model-autonomously-chose-a-gene-therapy-and-operated-on-a-mouse-brain-with-no-human-decision-making/) ⭐️ 9.0/10

据 Exin Therapeutics 联合创始人兼 CEO Gabriel Ocana-Santero 在 X 上的描述，一个运行 Claude Sonnet 5 的 AI 智能体在癫痫小鼠模型中自主选择了基因疗法、脑区和立体定向注射坐标，并通过带摄像头的定制电动手术设备完成注射，唯一指令是减少小鼠的癫痫发作。该智能体从 19 种候选基因疗法中作出选择，提出增强特定抑制性信号通路的方案，依据文献确定靶区、以三篇论文的参考点交叉核对并取平均值计算坐标，还自行设定注射体积、速度和等待时间，并在术中通过摄像头作出 32 次观察、跟踪注射并报告是否出血。术中出现连接中断后，智能体判定计算出的目标位置超出设备物理运动范围并拒绝继续，重启校准无效、第三次尝试仍拒绝；事后发现早前暂停时的人工调整确实使控制系统偏移，最终由人手动修改代码。Ocana-Santero 称这是 AI 智能体首次既选择治疗和脑靶点又将其递送到活体哺乳动物，小鼠恢复良好，技术报告尚待发布且结果未经同行评审；过程中持证兽医批准了每个不可逆步骤并持有物理急停装置，系统还设有智能体不得绕过的注射体积上限。

rss · The Decoder · 10月30日 19:42

**「背景」** 基因治疗通常借助病毒载体等把遗传物质送入特定细胞，而立体定向脑注射则依靠三维坐标把针头精确送到目标脑区；癫痫小鼠模型通过诱发抽搐来检验疗法能否减少发作。AI 智能体与实验室硬件结合后，可读取实验数据、选择方案并驱动仪器执行，Ocana-Santero 将其称为“in vivo lab in the loop”，即让模型直接接入活体实验能力。Anthropic 的 Model Hardware Standard 也在推动一套让 AI 智能体安全发现和操作显微镜、液体处理机、机械臂等科研设备的共享规范，这类“模型操作硬件”的能力正是此次事件的技术背景。

**「影响」** 对 AI 代理与实验室自动化开发者而言，此案例表明：安全护栏在时间敏感操作中可能因校准漂移而阻止任务继续，因此需要预先设计人工复核与恢复流程。由于结果尚未经同行评审，且目前主要来自初创公司创始人的叙述，在独立验证前不应将其视为自主活体实验可部署的证据。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://x.com/OcanaSantero/status/2115442964574908902">Gabriel Ocana-Santero on X: &quot;Last night an AI agent performed ...</a></li>
<li><a href="https://lockergnome.com/ai-agent-chose-drug-and-coordinates-for-mouse-brain-injection-and-refused-founders-override/">Exin Therapeutics&#x27; CEO Says an AI Agent Picked the Gene ...</a></li>
<li><a href="https://www.anthropic.com/news/model-hardware-standard-research-preview">Previewing the Model Hardware Standard \ Anthropic</a></li>
<li><a href="https://www.indiatoday.in/science/story/ai-agent-brain-surgery-mouse-epilepsy-gene-therapy-3028602-2026-10-30">An AI agent just performed brain surgery. Here&#x27;s how it went</a></li>
<li><a href="https://www.explainx.ai/blog/claude-sonnet-5-mouse-brain-surgery-ocana-santero-claimed-vs-verified-2026">Claude Sonnet 5 Mouse Brain Surgery: Claimed vs Verified ...</a></li>

</ul>
</details>

**标签**: `#AI agents`, `#autonomous systems`, `#gene therapy`, `#biotechnology`, `#AI safety`

---

<a id="item-tech-news-2"></a>
### [Cursor 市场 Claude Code 扩展被篡改植入 SSH 后门](https://phorion.io/blog/offical-claude-code-vsx-compromise/) ⭐️ 8.0/10

据 Phorion 的报告和 Cursor 的安全公告，Cursor 市场上出现了被篡改的 Claude Code VS Code 扩展；Anthropic 的 Felix Rieseberg 澄清，这不是 Anthropic 的系统或员工电脑被攻破，而是攻击者利用 Cursor 市场的发布权限上传了并非由 Anthropic 构建或发布的版本，官方渠道的版本不受影响，影响仅限 Cursor 用户。恶意扩展会把标为 svc-telemetry 的攻击者公钥追加到用户的 SSH authorized\_keys 中；社区转述的 Reuters 报道称，该恶意版本在周四约 2:27 a.m. PT 至 1:35 p.m. PT 期间上线。受影响的 macOS 用户可用 grep 检查 ~/.ssh/authorized\_keys 中是否存在 svc-telemetry，Windows 的检查命令在转述中被截断。部分讨论提到 Open VSX 注册表也可能受影响，并对是否波及微软官方市场存在不确定，相关范围仍在厘清。

hackernews · \_chall · 10月30日 07:09 · [社区讨论](https://news.ycombinator.com/item?id=50300683)

**「背景」** Cursor 的扩展市场提供与 VS Code 兼容的扩展，开发者可在其中安装 Claude Code 等插件；这类扩展以本地用户权限运行，因此被篡改的构建能够修改本机文件和 SSH 授权配置。Cursor 说明，一个并非由 Anthropic 开发、版本为 2.1.313 的篡改构建曾于 2026 年 10 月 29 日在该市场提供，最多影响 5,000 名用户，随后被 2.1.314 替换；Anthropic 表示其官方渠道发布的版本不受影响。该事件的关键在于区分扩展的发布渠道与构建来源，而不能仅凭扩展名称判断其可信度。

**「影响」** 在 2026 年 10 月 29 日约 2:27 至 13:35（PT）安装 Claude Code 扩展 2.1.312 或 2.1.313 的 Cursor 用户，可能被写入攻击者的 \`svc-telemetry\` SSH 公钥，从而面临未授权远程访问风险；Cursor 估计受影响用户最多 5,000 名，并表示将直接联系受影响者。

**「社区讨论」** 讨论中，Anthropic 员工强调官方渠道未受影响、问题出在 Cursor 市场的发布环节；有评论者则追问事件归属和发生原因，并提醒目前公开信息对 Open VSX 与微软官方市场是否受影响仍不确定。另有评论者提供了检查 svc-telemetry 公钥的具体命令，强调应优先排查本机 SSH 授权文件。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theregister.com/cyber-crime/2026/10/30/anthropic-that-claude-code-extension-compromise-couldnt-be-us/5306682">Anthropic: That Claude Code extension compromise… couldn&#x27;t be us</a></li>
<li><a href="https://thehackernews.com/2026/10/official-claude-code-vs-code-extension.html">Official Claude Code Extension on Cursor Marketplace ...</a></li>
<li><a href="https://dev.to/useaifix/claude-code-extension-how-to-check-if-the-tampered-cursor-build-hit-your-machine-33on">claude code extension: How to Check if the Tampered Cursor ...</a></li>
<li><a href="https://thehackernews.com/2026/10/official-claude-code-vs-code-extension.html">Official Claude Code VS Code Extension Compromised to Install...</a></li>
<li><a href="https://www.microsoft.com/en-us/security/blog/2026/10/30/inside-malicious-claude-code-branded-cursor-extension-persistent-ssh-backdoor/">Inside a malicious Claude Code-branded extension and its ...</a></li>

</ul>
</details>

**标签**: `#supply chain security`, `#AI coding tools`, `#Cursor marketplace`, `#VS Code extensions`, `#SSH backdoor`

---

<a id="item-tech-news-3"></a>
### [Azure 五条跨租户入侵路径引发安全讨论](https://www.binarysecurity.no/posts/2026/10/one-root-case) ⭐️ 8.0/10

一篇安全研究文章记录并分析了 Azure 中的五条完整跨租户入侵路径，攻击类型涉及路径遍历和 IDOR，直接影响在 Azure 上运行多租户工作负载的组织。文章的核心主张是这些路径可导致跨租户访问或控制，但所提供材料未给出具体漏洞编号、影响范围或复现细节，因此其范围与可利用性仍需以原文和厂商确认为准。此事的重要性在于，云平台的多租户隔离一旦失效，单一租户的配置或标识符可能成为攻击其他租户的入口。由于没有提供原文正文，摘要仅依据文章标题、分析摘要和社区评论，不能把标题中的“完整入侵”视为已独立验证的结论。

hackernews · swq115 · 10月30日 10:06 · [社区讨论](https://news.ycombinator.com/item?id=50301854)

**「背景」** 在多租户云平台中，不同客户（租户）共享同一套底层服务，平台必须依靠租户标识、访问控制和资源隔离，防止一方读取或操作另一方的数据；跨租户入侵指的就是突破这一边界。Azure Logic Apps 的 API Connections 此前已被该研究者指出存在严重不安全的架构，并演示过一次完整的跨租户入侵；本次文章延续前作，报告该系统另外五个可导致同类后果的漏洞。文中涉及的路径遍历（path traversal）和不安全的直接对象引用（IDOR）都属于访问控制类缺陷：前者通过构造路径绕过预期目录限制，后者在已知对象标识符时缺少归属校验。

**「影响」** 对在 Azure 上运行多租户工作负载的开发者和企业而言，这些路径遍历与 IDOR 缺陷意味着自家资源可能被其他租户读取或操作，因此应尽快核查租户隔离边界、资源命名以及标识符是否暴露。由于材料未给出修复状态和受影响服务的完整清单，实际暴露范围仍不确定。

**「社区讨论」** 评论者一方面称赞研究者的挖洞工作，另一方面集中质疑 Azure 的跨租户隔离：有人具体声称 login.microsoftonline.com 的 adminconsent 回调在攻击者知道其他客户租户 ID 时可被伪造，并批评文档只给出警告；也有人认为 Azure 的跨租户泄露数量领先竞争对手，难以理解企业为何仍大量采用。还有评论推测路径遍历和 IDOR 可能长期存在，并猜测“给资源名加随机性”的建议与此有关。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.binarysecurity.no/posts/2026/10/one-root-case">Azure&#x27;s Weakest Link - Five Full Cross-Tenant Compromises</a></li>
<li><a href="https://www.paymentsjournal.com/are-your-neighbors-sneaking-into-your-database-on-azure/">Are Your Neighbors Sneaking Into Your Database on Azure ?</a></li>

</ul>
</details>

**标签**: `#azure`, `#cloud-security`, `#vulnerability-research`, `#multi-tenancy`, `#access-control`

---

<a id="item-tech-news-4"></a>
### [开源权重模型 GLM 5.3 自主构建 Firefox 完整利用链](https://the-decoder.com/open-weight-model-glm-5-3-built-full-firefox-exploit-chains-with-zero-human-input-in-under-48-hours/) ⭐️ 8.0/10

Epoch AI 研究人员报告，中国开源权重模型 GLM 5.3 在无需人工介入的情况下，针对 2026 年 9 月 17 日至 10 月 26 日间发布的 6 个 Firefox 版本构建了完整漏洞利用链；单次成功攻击的 API 费用约为 1,000 美元，最快 12 小时完成，研究给模型的上限为 48 小时。模型能识别被伪装成常规改进的安全修复，并串联一个其每次都能独立重新发现的未公开漏洞，绕过浏览器沙箱，在用户仅访问网页时读取本地文件并发送至攻击者服务器。研究团队将问题披露给 Mozilla，后者在 2026 年 10 月 27 日发布的 Firefox 159.0 中修复该漏洞，但尚未确认新版本是否完全免疫类似攻击。研究还称，对 Chrome 投入约 10 万美元 API 费用未得到同等利用链，但这不证明 Chrome 免疫；Z.ai 及其他 API 提供商未触发安全护栏，凸显“补丁缺口”带来的结构性风险。

rss · The Decoder · 10月30日 12:22

**「背景」** “补丁空窗期”（patch gap）指安全修复已出现在公开代码或更新渠道中、但尚未到达大多数用户的这段时间，攻击者可据此反推出漏洞并抢先利用。GLM 5.3 是 Z.ai 于 2026 年 8 月发布的开放权重模型；Epoch AI 在 2026 年 10 月 29 日公布的研究中，用它针对 Firefox 近期的补丁空窗期进行了自主漏洞利用测试。Firefox 拥有超过 2 亿活跃用户，浏览器安全修复通常会被伪装成常规改进，因此“识别真实安全补丁”成为此类研究的关键环节。

**「影响」** 对 Firefox 用户及所有依赖公开代码发布修复的厂商而言，这一结果意味着补丁缺口可被低成本开源模型自动转化为可用的本地文件读取攻击，加快更新与改进披露流程因此更紧迫。该结果来自受控研究演示，外推至其他软件仍需验证。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.unite.ai/epoch-ai-reports-open-weight-glm-5-3-exploits-firefox-patch-gap/">Epoch AI Reports Open-Weight GLM 5 . 3 Exploits Firefox Patch Gap</a></li>
<li><a href="https://the-decoder.com/open-weight-model-glm-5-3-built-full-firefox-exploit-chains-with-zero-human-input-in-under-48-hours/">Open-weight model GLM 5 . 3 built full Firefox exploit chains with zero...</a></li>

</ul>
</details>

**标签**: `#AI security`, `#autonomous exploitation`, `#browser security`, `#vulnerability research`, `#open-weight models`

---

<a id="item-tech-news-5"></a>
### [Show HN：约 1GB Qwen 权重中的可运行 NES 模拟器](https://github.com/dbreunig/nesformer) ⭐️ 7.0/10

Show HN 项目 nesformer 据称在约 1GB 的 Qwen 模型权重中实现了一个可运行的 NES 模拟器。项目作者 dbreunig 表示，Opus 5.5 仅用两条提示就生成了可工作的权重和代码：先阅读一篇关于“qwenputer”的文章及相关源码，再探索能否用类似 FPGA 模拟芯片和内存的方式模拟 NES，并评估所需模型规模与速度。评论者 cafebeen 指出，该项目不仅模拟 CPU，还把 RAM 放进模型内部，依赖 gated deltanet 架构；这一理解来自其个人解读。据讨论中引用的项目数据，nesformer 比真实主机慢 150–290 倍，说明这种“模型内虚拟机”虽可行，却与传统确定性模拟器存在巨大效率差距。

hackernews · dbreunig · 10月30日 16:40 · [社区讨论](https://news.ycombinator.com/item?id=50306442)

**「背景」** 这类项目并非训练模型去“模拟”计算机，而是用编译器把固定逻辑电路写入模型权重。此前的 Qwenputer 已将 32 位 RISC-V CPU 编进 Qwen3.5-4B，并利用 Gated DeltaNet 的状态充当可寻址内存。nesformer 沿用这一思路，把 NES 的 6502 CPU、2 KB 工作 RAM 和卡带 ROM 放进标准 Qwen3\_5ForCausalLM 检查点的权重与状态中，由模型逐个 token 预测处理器执行日志；其权重同样由编译器计算而非训练得到。

**「影响」** 对 LLM 系统和模拟器开发者而言，该项目提供了一个具体案例，证明把小型虚拟机嵌入模型权重在技术上可行，但 150–290 倍的速度差距意味着它短期内难以替代传统模拟器。

**「社区讨论」** 评论者大多把它视为有趣的概念验证，并延伸讨论在权重内编译 Python 解释器、shell 及 sed、cat、grep 等工具的可能性；同时多人强调其效率远低于确定性程序，凸显 LLM 与传统模拟之间的算力差距。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/dbreunig/nesformer">GitHub - dbreunig/nesformer: An NES CPU compiled into the ...</a></li>
<li><a href="https://explainx.ai/blog/nesformer-nes-cpu-compiled-into-qwen3-5-4b-weights-super-mario-bros-qwenputer-2026">Nesformer: NES Emulator Inside Qwen3.5 Weights Explained ...</a></li>
<li><a href="https://www.aiezz.com/en/tutorial/tutorial-451ed3232c9f7885871678ec">Run NES Games Inside a Compiled Qwen3.5 Model with nesformer</a></li>
<li><a href="https://github.com/divagr18/qwenputer">GitHub - divagr18/qwenputer: A computer, compiled into the ...</a></li>

</ul>
</details>

**标签**: `#LLM emulation`, `#NES emulation`, `#Qwen`, `#model weights`, `#Show HN`

---

<a id="item-tech-news-6"></a>
### [开源模型与网络安全风险再评估](https://www.interconnects.ai/p/was-i-wrong-about-open-models-and) ⭐️ 7.0/10

在被称为“Black October”的一轮关键漏洞披露（包括 PHP2Shell 和 GitLab）以及 Binance 加密安全事件之后，Nathan Lambert 重新评估开放权重模型的网络安全风险，并引用《华尔街日报》称网络应急响应人员正承受压力。他回顾此前判断：开放模型有助于平衡攻防；以 GLM-5.3 为能力参照，若 Claude Mythos 意外以开放权重发布，世界“多半也不会有事”，风险更像加速而非阶跃式灾难，而 GLM-5.3 权重发布一个多月后公开证据也未显示局面突变。他点出 2026 年 4 月 Rob Wiblin、Anthropic 的 Project Glasswing 公告和 Zvi Mowshowitz 等人的措辞，认为部分公开讨论夸大了“灾难”前景，同时承认自己并非网络安全专家，并对判断感到不安。他认为“fine”低估了即将到来的动荡：行业将被迫以更高成本更新软件工作方式；Epoch AI 用 GLM-5.3 构造的 Firefox 漏洞利用也表明，利用需要用户访问恶意网站并完成多阶段攻击，发现漏洞不等于实际危害。他预计多数漏洞会由闭源模型发现，但误差很大，关键取决于开放模型的实际用途；目前开放模型服务成本高，服务最大模型所需算力也极度紧俏。

rss · Interconnects · 10月30日 17:36

**「背景」** 开放权重模型指权重可公开下载、任何人都能部署的模型，发布后无法像闭源服务那样撤回或对用户设限；闭源前沿模型则通常附带网络安全防护，并只向经过审查的用户开放。因此，争论的焦点不只是模型能否发现漏洞，还包括能力达到某个阈值后，公开权重是否会让更多行动者把漏洞串成可用的攻击链。发现漏洞只是多阶段攻击中的一环，攻击者还需具备投放、触发和持续利用的动机与资源。

**「影响」** 对依赖开放权重模型的安全团队和软件企业来说，这篇反思的实际含义是：更可能先经历漏洞发现与修复节奏加快、成本上升的持续压力，而不是等到一次可明确归因于开放权重的“灾难”再作准备。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.anthropic.com/research/glm-5-3-and-the-spread-of-advanced-cyber-capabilities">GLM - 5 . 3 and the spread of advanced cyber capabilities \ Anthropic</a></li>
<li><a href="https://cpl.thalesgroup.com/blog/software-monetization/claude-mythos-ai-exploits-software-protection">Claude Mythos : AI Exploits and Software Protection | Thales</a></li>

</ul>
</details>

**标签**: `#AI security`, `#open models`, `#cybersecurity`, `#vulnerability disclosure`, `#AI policy`

---

<a id="item-tech-news-7"></a>
### [Reddit CEO 警告谷歌 AI Mode 不向任何网站导流](https://the-decoder.com/googles-ai-mode-doesnt-drive-traffic-for-anybody-reddit-ceo-huffman-warns-the-entire-web/) ⭐️ 7.0/10

Reddit CEO 史蒂夫·霍夫曼（Steve Huffman）表示，谷歌的 AI Mode“不驱动流量”，并称据他所知“对我们不是，对任何人也不是”；他把 AI Overviews 和 AI Mode 视为谷歌运作方式的根本转变。据其披露，Reddit 在 10 月每周失去超过 100 万次来自谷歌搜索的推荐访问，尽管财报强劲，公司股价仍下跌逾 25%。Reddit 称平台需求没有变化，问题在于谷歌不再向 Reddit 发送用户；公司正测试美国以外的登录墙，以遏制抓取并降低对开放网络的依赖。与 AI 提供商的数据授权谈判仍在继续，但 Reddit 是否会达成更多协议尚不确定；报道认为，这为依赖谷歌流量的整个网络敲响警钟。

rss · The Decoder · 10月30日 17:15

**「背景」** Google 的 AI Overviews 会在搜索结果页直接生成摘要，AI Mode 则提供更接近对话式的搜索体验，两者都可能让用户无需点击链接即可获得答案。Reddit 长期依赖搜索引擎导流，并曾与 Google 达成内容授权合作；如今其 CEO 将搜索推荐量下降主要归因于这两项 AI 搜索功能。这一变化凸显了平台对搜索流量的依赖，以及 AI 搜索时代“答案留在站内、点击流向来源”的张力。

**「影响」** 对依赖 Google 搜索导流的出版商和网站来说，最直接的后果是点击与引荐流量可能继续结构性下滑：一项随机实验发现 AI Mode 使发布者点击率下降 18.8 个百分点，Chartbeat 数据也显示大型出版商的 Google 引荐流量同比大幅下降。Reddit 的个案表明这种冲击已经发生，但现有证据仍不足以量化所有站点的长期影响。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.searchenginejournal.com/reddit-to-test-login-only-mode-as-google-search-traffic-drops/595270/">Reddit CEO Says Google &#x27;s AI Mode &#x27;Does Not Drive Traffic &#x27;</a></li>
<li><a href="https://www.theverge.com/tech/1022848/reddit-ceo-google-ai-mode-traffic">Reddit ’s CEO says Google ’s AI Mode ‘does not drive traffic ’</a></li>
<li><a href="https://www.promptthemarket.com/google-ai-mode-cuts-publisher-clicks-by-19pp-study-finds/">Google AI Mode cuts publisher clicks 19pp, study finds</a></li>
<li><a href="https://www.emarketer.com/content/people-inc--turns-social-video-ai-search-erodes-publisher-traffic">Publishers turn to social video as AI search erodes traffic</a></li>

</ul>
</details>

**标签**: `#AI search`, `#Google AI Mode`, `#Reddit`, `#web traffic`, `#platform economics`

---