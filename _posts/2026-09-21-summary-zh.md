---
layout: default
title: "Horizon Summary: 2026-09-21 (ZH)"
date: 2026-09-21
lang: zh
---

> 从 39 条内容中筛选出 5 条重要资讯。

---

**科技新闻**
1. [Qwen Image 2.1：7B 开放权重文生图模型发布](#item-tech-news-1) ⭐️ 8.0/10
2. [三星据称将 HBM4 和 HBM4E DRAM 产量提高逾一倍](#item-tech-news-2) ⭐️ 7.0/10
3. [分析称广告收集器可让 ChatGPT 获知站外浏览活动](#item-tech-news-3) ⭐️ 7.0/10
4. [腾讯 Gander：边对话边在后台执行任务的分离式模型](#item-tech-news-4) ⭐️ 7.0/10
5. [Runway 研究实时 AI 视频生成：随提示流式出画](#item-tech-news-5) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [Qwen Image 2.1：7B 开放权重文生图模型发布](https://qwen.ai/blog?id=qwen-image-2.1) ⭐️ 8.0/10

Qwen 发布 Qwen Image 2.1 文生图模型，参数量仅 7B，远小于前代 Qwen-Image 1 的 20B，并新增原生透明背景支持，文字渲染能力据称有显著提升。社区评论指出，7B 的规模使其成为目前较小的开放权重文生图模型之一（更小的有 6B 的 Z-Image Turbo），相比 Ideogram、Krea2、Flux2 等更为轻量；有评论者认为 Qwen 团队是少数专门处理原生透明背景的团队。许可方面，此前多款 Qwen 模型采用 Apache 许可，而该模型改用更严格的许可证，社区给出了对应的 GitHub LICENSE 链接。一位运营提示词到 UI 设计站点的开发者用自建测试对比了 gpt-image-2 与 Qwen 2.1，称其文字渲染明显优于当前开放权重市场上的其他方案，小字号文字保真度也相当好。由于缺少官方来源内容与独立验证，上述性能表现仍属社区观察，尚未得到广泛证实。

hackernews · jmillikin · 9月20日 13:09 · [社区讨论](https://news.ycombinator.com/item?id=49775499)

**「背景」** Qwen-Image 是阿里通义千问团队推出的开源权重文生图与图像编辑模型系列，其上一代 Qwen-Image 1 的参数量为 20B，而 Qwen-Image 2.1 将视觉生成部分压缩到 7B（32 层 Single-Stream DiT），在生成质量、推理效率与通用性之间重新做平衡。所谓“原生透明”（native RGBA）指模型直接输出带 Alpha 通道的图像，无需事后再跑抠图或背景移除模型，这对分层设计素材与合成工作流有实际意义；该版本还支持 2K 输出、最多 10 张参考图的编辑能力，以及发布当天的 ComfyUI 支持。许可证方面，Qwen 系列早期模型多采用 Apache 等宽松许可，而 Qwen-Image 2.1 的权重被限制为非商业用途，这是与以往发布相比的一个显著变化。

**「影响」** 对开发者与设计类工作流而言，7B 参数、32 层单流 DiT 架构、原生 RGBA 透明输出以及统一的文生图与图像编辑能力，使本地部署和集成到实时生成流程变得更为可行。但相比此前多为 Apache 许可的 Qwen 模型，该模型采用了更严格的许可，可能限制商业使用与二次分发，且公开权重与确切许可文本尚待确认。

**「社区讨论」** 社区普遍肯定该模型在体积缩小、原生透明背景和文字渲染上的进步，但主要争议在于许可证：此前多款 Qwen 模型使用 Apache 许可，这次却明显更严格，有开发者表示即便如此仍因文字渲染能力而对其很感兴趣。也有用户询问如何像使用 \`llama-server -m &lt;model&gt;\` 那样在本地直接运行该模型（而非依赖特定框架），并认为目前本地文生图的质量与速度已领先于本地代码生成。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://qwenimages.com/blog/qwen-image-2-1-release">Qwen Image 2.1 Released: 7B Model, Native RGBA, 10-Image ...</a></li>
<li><a href="https://github.com/QwenLM/Qwen-Image-2.1">GitHub - QwenLM/Qwen-Image-2.1: Qwen&#x27;s most powerful open ...</a></li>
<li><a href="https://runtimewire.com/article/alibaba-qwen-image-2-1-transparent-editing-research-license">Alibaba releases Qwen-Image-2.1 with transparent editing and ...</a></li>
<li><a href="https://www.goenhance.ai/image-models/qwen-image-2-1">Qwen - Image - 2 . 1 : Open - Weight AI Image and Editing Model</a></li>
<li><a href="https://huggingface.co/Qwen/Qwen-Image-2.1">Qwen / Qwen - Image - 2 . 1 · Hugging Face</a></li>
<li><a href="https://kie.ai/blog/what-is-qwen-image-2-1">What Is Qwen - Image - 2 . 1 ? Native 2K Editing</a></li>

</ul>
</details>

**标签**: `#Qwen`, `#text-to-image`, `#open-weight models`, `#AI image generation`, `#licensing`

---

<a id="item-tech-news-2"></a>
### [三星据称将 HBM4 和 HBM4E DRAM 产量提高逾一倍](https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say) ⭐️ 7.0/10

据未具名消息人士透露，三星预计将把其 HBM4 和 HBM4E DRAM 的产量提高一倍以上。这一产能扩张计划被视为 AI 硬件和存储市场的重要供给侧进展，因为 HBM 是 AI 加速器内存供应的关键组件。该报道属于基于匿名消息来源的产能扩张消息，而非技术突破或范式转变。目前尚无官方确认或具体产量数字。

hackernews · giuliomagnifico · 9月20日 17:38 · [社区讨论](https://news.ycombinator.com/item?id=49778029)

**「背景」** 高带宽内存（HBM）把多层 DRAM 芯片垂直堆叠并与 GPU、AI 加速器封装在一起，从而提供远超普通 DRAM 的带宽，因此其产能长期被视为 AI 芯片供应的关键瓶颈之一。三星目前正从 HBM4 推进到后续的 HBM4E 世代，后者计划采用十六层堆叠（此前已向客户交付十二层产品），工艺与堆叠难度的提升也使其产能布局受到关注。

**「影响」** 对 AI 加速器厂商与内存采购方而言，三星扩产 HBM4/HBM4E 有望缓解当前紧张供给：现有信息显示 2026 年 HBM 产出已被预订一空，三星与 SK 海力士的成品存储库存一度低于 10 天供应量，HBM4 订单甚至排到 2027 年。但 HBM 挤占晶圆与封装产能正把传统 DRAM 排除在外，消费级 DDR5 价格已经上涨，因此这一扩产更可能继续推高而非压低消费级内存价格。

**「社区讨论」** 评论者关注 HBM 作为 AI 芯片（尤其是中国 AI 加速器）的供应链瓶颈，指出华为 Ascend 产量受限于 CXMT 的 HBM 产能而非处理器或 ASML 设备；也有人担心三星扩产可能进一步推高消费级 DRAM 价格，并质疑新增产能是否足以满足 AI 需求。此外，有评论提到芯片减薄（die thinning）这一步骤在报道中被正面讨论。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://en.wikipedia.org/wiki/High_Bandwidth_Memory">High Bandwidth Memory - Wikipedia</a></li>
<li><a href="https://en.sedaily.com/finance/2026/09/20/samsung-to-double-hbm4-output-next-year-sources-say">Samsung to Double HBM4 Output Next Year, Sources Say - Seoul Economic Daily</a></li>
<li><a href="https://intuitionlabs.ai/articles/hbm-dram-ai-memory-demand">HBM, DRAM &amp; AI Demand: Memory Supply and Price Trends</a></li>
<li><a href="https://tech-insider.org/hbm4-memory-shortage-dram-inventory-2026/">HBM4 Shortage: DRAM Inventory Falls Below 10 Days</a></li>
<li><a href="https://tech-insider.org/ca/hbm4-shortage-950-billion-chip-deals-2026/">HBM4 Shortage Fuels $950B in Chip Supply Deals [2026]</a></li>

</ul>
</details>

**标签**: `#HBM4`, `#DRAM`, `#Samsung`, `#AI hardware`, `#semiconductor manufacturing`

---

<a id="item-tech-news-3"></a>
### [分析称广告收集器可让 ChatGPT 获知站外浏览活动](https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/) ⭐️ 7.0/10

一篇分析文章声称，广告收集器跟踪技术如今能够把 ChatGPT 的使用与用户在其他网站上的活动关联起来。相关分析指出，该机制本身是标准广告技术，真正没有先例的是把它用于 AI 聊天产品，因此引发了对 AI 对话隐私的担忧。Hacker News 上相关讨论获得 565 分和 305 条评论，争论围绕隐私期待、浏览器级防护以及文章可信度展开。评论提到 Firefox、Brave 和 Safari 会阻止这种跟踪，而 Chrome 和 Edge 不会；也有人质疑该文可能由 AI 生成，要求作者直接发布提示词。另有评论肯定欧盟立法对此类做法的约束，并指出用户对 AI 对话与 Facebook 等社交浏览的隐私期待不同，且 ChatGPT 订阅需要付费。

hackernews · lmbbuchodi · 9月20日 15:18 · [社区讨论](https://news.ycombinator.com/item?id=49776729)

**「背景」** 这一机制依赖 OpenAI 的广告收集器 bzr.openai.com 设置的名为 \_\_obi 的 Cookie，其作用域为 .openai.com，值在用户使用 ChatGPT 时生成并与 ChatGPT 账户绑定。当广告主在自己的网站上安装 OpenAI 的追踪代码后，普通网站便会把该 Cookie 发送回 OpenAI，这与零售商早已部署的 Meta 和 Google 追踪代码类似。据 Buchodi 的报告，该 Cookie 在 12 个商业网站上被观察到，涉及 13 个像素 ID。

**「对用户与合规的影响」** 对 ChatGPT 用户而言，最直接的后果是浏览器选择可能决定这类跨站关联能否发生：据社区讨论，Firefox、Brave 和 Safari 会拦截该机制，而 Chrome 与 Edge 不会，因此继续使用后两者的用户更难阻止聊天内容与站外浏览行为被拼接。外部报道显示，OpenAI 自 2026 年 8 月 24 日起在 31 个欧洲国家向免费及低价订阅用户投放广告，并采用“同意优先”的 GDPR 合规方案，同期欧盟委员会正考虑依《数字服务法》对其施加更严格监管，这表明此类追踪实践在欧洲将面临更强的合规审视。

**「社区讨论」** 评论者大体认同该技术并不新颖，但认为把它用在 AI 聊天产品上会造成新的隐私不适；有人赞赏欧盟立法，有人强调浏览器差异（Firefox、Brave、Safari 阻止，Chrome 和 Edge 不阻止）。与此同时，文章可信度成为争议点：有评论者贴出 Pangram 链接，质疑内容由 AI 生成，要求作者用自己的话写并直接发布提示词。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.buchodi.com/chatgpt-now-knows-what-you-do-on-other-websites-via-ad-collector/">ChatGPT now knows what you do on other websites via ad collector</a></li>
<li><a href="https://ai-tldr.dev/releases/openai-obi-ad-tracker/">OpenAI&#x27;s __obi cookie — ChatGPT accounts tracked… | AI/TLDR</a></li>
<li><a href="https://www.buchodi.com/">Buchodi&#x27;s Threat Intel</a></li>
<li><a href="https://www.techtimes.com/articles/325091/20260820/chatgpt-ads-reach-europe-monday-opting-out-changes-which-ads-you-see-not-whether-you-see-them.htm">ChatGPT Ads Reach Europe Monday: Opting Out Changes Which Ads ...</a></li>
<li><a href="https://martechtrend.com/chatgpt-ads-eu-privacy/">OpenAI’s ChatGPT Ads: EU Privacy-First Approach</a></li>
<li><a href="https://euperspectives.eu/2026/08/chatgpt-ads-enter-europe-eu-scrutiny/">ChatGPT ads enter Europe as Brussels weighs tougher oversight</a></li>

</ul>
</details>

**标签**: `#privacy`, `#adtech`, `#ChatGPT`, `#web-tracking`, `#AI-surveillance`

---

<a id="item-tech-news-4"></a>
### [腾讯 Gander：边对话边在后台执行任务的分离式模型](https://the-decoder.com/tencents-gander-aims-to-keep-talking-while-it-works-in-the-background/) ⭐️ 7.0/10

腾讯混元语音团队与多所高校研究人员提出研究模型 Gander，可同时接收语音、图像和文本，在保持实时对话的同时于后台执行复杂任务。它把工作拆分为负责秒级对话的“小脑”和负责推理与复杂任务的“大脑”，大脑可替换为 Codex 或 Claude Code 等代理系统而无需重新训练对话模型，测试中该角色由一个未具名的 OpenAI GPT-5.6 系列模型担任。Gander 据报告用约 270 万条样本训练，把对话切成 1 秒片段，以最近约两分钟对话作为记忆，并省去独立的语音起止检测模块。在 Full-Duplex-Bench v3 上，它在全部 100 个场景中都在正确时机开口，打断用户的比例为 8%，优于 GPT-Realtime 的 13.5%和最弱竞品的近 48%，但任务准确率略逊，视频与音频理解也不如基座模型，研究者归因于训练更偏向流畅对话而非精确感知。团队称工作仍处早期，如何扩大规模与缺乏标准评测仍是未解问题，并计划在完成开源流程后发布模型权重和训练数据，代码的 GitHub 仓库已存在。

rss · The Decoder · 9月20日 15:41

**「背景」** 传统语音助手多按轮次轮流发言，而真实对话中人们会打断、抢话、边听边说，这要求模型持续处理音视频流；与此同时，写代码或检索文件等复杂任务需要较长的规划时间，单一模型难以同时兼顾低延迟与高推理能力。业界因此探索把对话与推理拆分给不同模型或编排器，例如 OpenAI 的 GPT-Live 和 Sakana AI 的 Fugu。腾讯此前在 7 月发布了开放语言模型 Hy3，并正推动将代理能力嵌入微信等自有产品。

**「影响」** 对构建实时语音代理的开发者而言，Gander 的“小脑／大脑”拆分提供了可参考的架构思路，且团队计划开放权重、训练数据和已有代码；但报告中的任务准确率与视音频感知退步意味着它目前尚难直接替代现有商用方案。

**标签**: `#AI agents`, `#multimodal models`, `#real-time interaction`, `#Tencent`, `#open-weight models`

---

<a id="item-tech-news-5"></a>
### [Runway 研究实时 AI 视频生成：随提示流式出画](https://the-decoder.com/runway-wants-to-turn-ai-video-generation-into-a-live-stream-you-control-in-real-time/) ⭐️ 7.0/10

Runway 公布了其面向实时视频生成的研究方向：用户不再输入提示词后等待成片，而是在描述画面的同时以流式方式获得并实时操控视频。该方向建立在 Runway 2025 年 12 月推出的首个“通用世界模型”（General World Model）GWM-1 之上，GWM-1 基于 Gen-4.5 逐帧生成视频，并接受镜头运动、机器人指令或音频作为控制信号；3 月 Runway 曾以 Runway Characters 讨论这一思路，几周前还展示了用 Gen-4.5 逐帧生成用户界面、可响应点击与语音输入的 Solaris。Runway 称实时生成既缩小了想法与成片之间的差距，也因更快的模型占用更少 GPU 时间而降低某质量水平下的单位输出成本，使此前不经济的应用变得可行；其核心难题是逐帧生成会累积微小误差，Runway 的应对是让模型在自己的输出（而非仅无错输入）上训练，学会纠正偏差而非放大偏差。业界也在探索类似方向：Decart 的实时模型 MirageLSD 在训练中刻意暴露于失真图像，Google DeepMind 称其世界模型 Genie 3 能在 720p、24 帧/秒下维持交互世界数分钟一致，Waymo 则基于 Genie 3 构建 World Model 来模拟车队从未遇到过的路况。Runway 认为教育、游戏与机器人等交互式应用是 AI 生成媒体最大的长期用例，并已在 3 月 Nvidia GTC 大会上展示与 Nvidia 合作、运行于 Vera Rubin 平台、目标首帧低于 100 毫秒的实时模型研究预览，但尚未公布可用时间表。

rss · The Decoder · 9月20日 11:56

**「背景」** 当前主流视频模型采用“提示词—等待—成片”的离散流程，结果不满意往往只能重新生成，用户报告的时间大多消耗在反复生成与修改上。世界模型（World Model）则尝试按帧预测并持续生成视频，Runway 的 GWM-1 属于这一类，可把镜头运动、机器人指令或音频当作控制输入。与语言模型可以中途修正措辞不同，视频模型每一帧都建立在前一帧之上，早期的小幅失真会随时间放大成明显畸变，这正是实时生成需要解决的关键工程问题，而实时生成也把计算负担从训练转移到使用阶段——模型必须在多人共享的硬件上足够快地逐帧出画以跟上播放。

**「影响」** 若这一方向落地，依赖视频生成工作流的创作者可获得近乎即时的反馈与更低的单位生成成本，机器人、自动驾驶等需要实时响应环境的仿真场景也可能因此获得可行的训练环境。不过 Runway 的实时模型目前仍属研究预览，没有公布可用时间，实际效果尚待验证。

**标签**: `#AI video generation`, `#real-time AI`, `#Runway`, `#generative AI`, `#human-AI interaction`

---