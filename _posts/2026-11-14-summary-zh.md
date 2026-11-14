---
layout: default
title: "Horizon Summary: 2026-11-14 (ZH)"
date: 2026-11-14
lang: zh
---

> 从 53 条内容中筛选出 7 条重要资讯。

---

**科技新闻**
1. [llama.cpp 发布 v1.0.0：本地 AI 推理生态迎来里程碑](#item-tech-news-1) ⭐️ 9.0/10
2. [KORS 全域航空波段实时监听与转录](#item-tech-news-2) ⭐️ 7.0/10
3. [NVIDIA cuBLAS 新 FP64 算法借整数 Tensor Core 提速](#item-tech-news-3) ⭐️ 7.0/10
4. [用 Python 在 Jetson AGX Orin 上运行原生 DLA 推理](#item-tech-news-4) ⭐️ 7.0/10
5. [用 vLLM 张量并行在两台 DGX Station 上服务 GLM-5.3](#item-tech-news-5) ⭐️ 7.0/10
6. [前 OpenAI 研究员称在六个中国 AI 模型中发现英伟达 Blackwell 指纹](#item-tech-news-6) ⭐️ 7.0/10
7. [OpenAI 推出 Daybreak 双产品进入网络安全市场](#item-tech-news-7) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [llama.cpp 发布 v1.0.0：本地 AI 推理生态迎来里程碑](https://huggingface.co/blog/ggml-org/llama-cpp-v1) ⭐️ 9.0/10

Hugging Face 博客发布文章，宣布 llama.cpp 发布 v1.0.0，并将其定位为本地 AI 生态“更强的基础”。llama.cpp 是广泛使用的开源本地大语言模型推理项目，此次版本号进入 1.0 被视为该项目的重要里程碑。由于提供的材料未包含发布说明、具体功能、性能数据或兼容性变化，目前无法核实 v1.0.0 的技术细节。该版本对现有用户和开发者的实际影响，仍需以项目后续公布的正式变更记录为准。

rss · Hugging Face Blog · 11月13日 14:05

**「背景」** llama.cpp 是一个用 C/C++ 实现的大语言模型推理项目，主要服务于本地和边缘设备上的模型运行；其底层依赖 ggml 张量库。此次 llama.cpp 与 ggml 一同发布 1.0.0 版本，并强调稳定 API，这意味着项目将为此前快速迭代的接口提供更明确的兼容性承诺。

**「影响」** 对于将 libllama 或 ggml 集成到自身应用中的下游开发者来说，v1.0.0 引入的语义化版本规则意味着：重大版本升级将明确对应 API/ABI 不兼容变更，因此需要据此安排兼容性测试和升级计划。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://huggingface.co/blog/ggml-org/llama-cpp-v1">llama.cpp v1.0.0 : A stronger foundation for the local AI ...</a></li>
<li><a href="https://github.com/ggml-org/llama.cpp/releases">Releases · ggml-org/llama.cpp · GitHub</a></li>
<li><a href="https://grafy.ai/news/llama-cpp-and-ggml-hit-1-0-0-with-a-stable-api-promise">llama.cpp and ggml hit 1.0.0 — Grafy News</a></li>
<li><a href="https://huggingface.co/blog/ggml-org/llama-cpp-v1">llama . cpp v 1 . 0 . 0 : A stronger foundation for the local AI ecosystem</a></li>
<li><a href="https://ailookout.news/blog/llama-cpp-v1-0-0-semantic-versioning-local-ai/">llama . cpp v 1 . 0 . 0 API stability local AI | AiLookout.news</a></li>
<li><a href="https://af.net/realtime/ggml-org-releases-llama-cpp-v1-0-0-with-formal-api-stability-rules/">ggml-org Releases llama . cpp v 1 . 0 . 0 with Formal API Stability Rules</a></li>

</ul>
</details>

**标签**: `#llama.cpp`, `#local AI`, `#open source`, `#LLM inference`, `#GGML`

---

<a id="item-tech-news-2"></a>
### [KORS 全域航空波段实时监听与转录](https://orcasairband.com/) ⭐️ 7.0/10

一个名为 orcasairband.com 的社区项目正在对 KORS（Orcas Island 机场）周边整个航空波段进行实时监听和转录。项目作者在 Hacker News 评论中说明，系统由 Ettus B210 SDR 接收信号，送入搭载双 RTX 4090 的机器，再用基于 CUDA 的多相信道化器把整个 airband 分信道、解调并检测发射，生成原始转录文本。该项目在当天一次影响 Victoria/Vancouver 的地面停飞期间意外变得有用，作者贴出了与停飞相关的未编辑转录片段，包括 126.400 Victoria Ground 提到通信问题导致交通停止，以及 Vancouver Centre 的相关通话。其他评论者还引用 14:03 的录音互动，确认有航班被告知当时没有飞机从 Vancouver 起飞或降落。

hackernews · mmaunder · 11月13日 22:04 · [社区讨论](https://news.ycombinator.com/item?id=50490593)

**「背景」** 软件定义无线电（SDR）把传统上由专用硬件完成的调制、解调等任务交给可编程软硬件处理；Ettus B210 是覆盖 70 MHz–6 GHz、最高 56 MHz 实时带宽的双通道 USRP 设备。航空波段是民航地空通话使用的甚高频频道集合，而地面停止（ground stop）是空管在特定时段暂停航班起降的管制措施。将整段航空波段一次性采集后，用 GPU 上的 CUDA 多相信道化拆成多个窄带频道，再逐频道解调、检测通话并生成文字记录，正是该项目能在事件发生时快速查看空域通话的技术基础。

**「影响」** 对航空爱好者和 SDR 开发者而言，这展示了用一台宽带 SDR 加双 GPU 实时覆盖并转录整个航空波段的可行性；但输出仍是未编辑的原始转录，实际可读性和覆盖范围受信号强弱与接收条件限制。

**「社区讨论」** Hacker News 评论总体把它视为及时且有技术含量的社区项目：作者亲自解释架构并贴出与停飞相关的原始转录，其他用户补充了确认 Vancouver 地面停飞的片段。也有人指出不少通话相当含混、难以听清，并把它与用 KiwiSDR 解码船舶 DSC 信号的业余项目相比较。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.ettus.com/all-products/ub210-kit/">USRP B210 USB Software Defined Radio (SDR) - Ettus Research</a></li>
<li><a href="https://kb.ettus.com/B200/B210/B200mini/B205mini/B206mini">B200/B210/B200mini/B205mini/B206mini - Ettus Knowledge Base</a></li>

</ul>
</details>

**标签**: `#software-defined radio`, `#GPU channelization`, `#CUDA DSP`, `#airband monitoring`, `#real-time transcription`

---

<a id="item-tech-news-3"></a>
### [NVIDIA cuBLAS 新 FP64 算法借整数 Tensor Core 提速](https://developer.nvidia.com/blog/faster-scientific-simulations-with-new-fp64-algorithms-in-nvidia-cublas/) ⭐️ 7.0/10

NVIDIA 在 CUDA Toolkit 13.4.2 的 cuBLAS 中新增 Ozaki-II 与 2M 两种 FP64 算法：前者面向实数 DGEMM，后者面向复数 ZGEMM；两者都把双精度运算映射到整数 Tensor Core，再重组出完整精度的结果，应用无需改动代码。Ozaki-II 借助中国剩余定理，使整数 GEMM 的次数随模数线性增长，而不是随切片数按平方增长；在达到与 FP64 相同的精度时，它所需的 GEMM 次数约为 Ozaki-I 的一半。2M 则把复数乘法从四次实数乘法降为两次。NVIDIA 报告称，DGEMM 在 NVIDIA VR NVL72 和 GB200 上分别比原生 FP64 快 5.5 倍和 3.9 倍，在 GB200 上比 Ozaki-I 快 2 倍；ZGEMM 在 GB200 上比原生 CFP64 快 5 倍。CCSD 与 BerkeleyGW 案例分别报告最高 2 倍/1.4 倍和 6.6 倍/3.9 倍的端到端加速；当运行时所需的尾数位数超过默认值或用户设定的上限时，cuBLAS 会回退到原生 FP64 MMA 以保证精度。

rss · NVIDIA Developer Blog · 11月13日 22:13

**「技术背景」** cuBLAS 是 NVIDIA 随 CUDA Toolkit 和 HPC SDK 提供的基础线性代数库（BLAS），HPC 与 AI 应用常用它来加速矩阵运算等核心负载。DGEMM 与 ZGEMM 分别指实数和复数双精度（64 位浮点）通用矩阵乘法，这类稠密矩阵乘法在分子化学、材料科学等科学模拟中往往占据大部分运行时间。由于低精度硬件的算力提升快于原生 FP64，业界一直在探索把 FP64 计算映射到更快的整数 Tensor Core 上、同时保持双精度结果的新算法；CUDA Toolkit 13.4.2 中的 Ozaki-II 与 2M 算法正是这一仿真路线的最新进展，前者用中国剩余定理减少整数乘法次数，后者把复数矩阵乘法从四次实数乘法降为两次。

**「影响」** 对使用 CUDA Toolkit 13.4.2 及受支持 NVIDIA GPU 的 HPC 与科学计算团队而言，现有 cuBLAS DGEMM/ZGEMM 调用无需修改应用代码即可获得最高 5.5 倍（DGEMM）和 5 倍（ZGEMM）的加速，且在精度需求超出阈值时会回退到原生 FP64 路径，从而降低采用新算法的精度风险。实际收益仍取决于 GPU 型号、矩阵规模以及是否使用固定尾数位的混合精度模式。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://developer.nvidia.com/blog/faster-scientific-simulations-with-new-fp64-algorithms-in-nvidia-cublas/">Faster Scientific Simulations with New FP64 Algorithms in ...</a></li>
<li><a href="https://developer.nvidia.com/cublas">cuBLAS - NVIDIA Developer</a></li>
<li><a href="https://developer.nvidia.com/blog/unlocking-tensor-core-performance-with-floating-point-emulation-in-cublas/">Unlocking Tensor Core Performance with Floating Point ...</a></li>
<li><a href="https://developer.nvidia.com/blog/faster-scientific-simulations-with-new-fp64-algorithms-in-nvidia-cublas/">Faster Scientific Simulations with New FP64 Algorithms in ...</a></li>

</ul>
</details>

**标签**: `#cuBLAS`, `#FP64`, `#GPU computing`, `#HPC`, `#Tensor Cores`

---

<a id="item-tech-news-4"></a>
### [用 Python 在 Jetson AGX Orin 上运行原生 DLA 推理](https://developer.nvidia.com/blog/run-native-dla-inference-in-python-on-nvidia-jetson-agx-orin-using-cudla/) ⭐️ 7.0/10

NVIDIA 开发者博客文章介绍了如何在 Jetson AGX Orin 上使用 cuda.bindings.cudla 在 Python 中运行原生 DLA 推理，并以图像分类为例走通完整生命周期。该模块随 cuda-bindings 13.3.0 引入，是对 cuDLA C++ API 的轻量 Python 绑定，要求 Python 3.10 及以上；JetPack 自带 libcudla.so，只有把模型编译成 DLA loadable 时才需要 TensorRT。示例使用 TensorRT 11.4.1、CUDA 13.4 Update 1 和 JetPack 7.2.2 或更高版本，通过 trtexec 的 --buildDLAStandalone、--useDLACore=0 与 CHW16 I/O 格式生成 FP16 loadable，然后在 CUDA\_DLA 混合模式下创建设备、从内存加载模型、查询张量描述符、分配 GPU 内存并在单一 CUDA 流上同步执行。文章强调 TensorRT 11 不再支持 --fp16 和 --int8 标志、精度由模型张量类型决定，并提醒并非所有层都兼容 DLA、常常需要裁剪 ONNX 图；当前 Python 版本还不支持独立模式，请求时会报 ErrorUnsupportedOperation。

rss · NVIDIA Developer Blog · 11月13日 18:57

**「背景」** DLA 是固定功能加速器，擅长卷积、池化等常见神经网络操作，可在 Jetson AGX Orin 上从 GPU 卸载推理以改善能效并释放 GPU 算力。cuDLA 是管理 DLA 执行的运行时 API，负责创建设备、加载编译后的网络、注册内存缓冲和提交任务。此前这类运行时管理通常用 C++，cuda.bindings.cudla 将其暴露给 Python，使 DLA 与 GPU 阶段可在同一应用中协作。

**「影响」** 对 Jetson 边缘 AI 开发者而言，这使 DLA 推理可以与 GPU 前后处理在同一 CUDA 流中用 Python 编排，减少为运行时管理编写 C++ 的工作量；但当前仅支持混合模式，且网络层需兼容 DLA。

**标签**: `#NVIDIA Jetson`, `#cuDLA`, `#DLA`, `#edge AI`, `#Python bindings`

---

<a id="item-tech-news-5"></a>
### [用 vLLM 张量并行在两台 DGX Station 上服务 GLM-5.3](https://developer.nvidia.com/blog/when-one-gpu-isnt-enough-serving-glm-5-3-across-two-nvidia-dgx-stations-with-vllm/) ⭐️ 7.0/10

NVIDIA 开发者博客发布教程，介绍如何用 vLLM 在两台 NVIDIA DGX Station 上以张量并行（TP=2）服务 GLM-5.3 NVFP4 模型，并通过单一 OpenAI 兼容 API 对外提供端点。该模型是 Z.ai 混合专家（MoE）模型的 NVFP4 量化版，共有 7530 亿参数、每 token 激活 400 亿参数；虽然稀疏激活降低计算量，但所有权重仍需常驻，检查点约 464GB，超过单块 GB300 GPU 的 252GB HBM3e 容量。教程让两台 Station 通过 ConnectX-8 RDMA 互联，各自保存完整检查点，由 vLLM 在加载时把权重和计算切分到两块 GPU，并明确不使用 CPU 权重卸载。文中还给出环境检查、固定版本 vLLM 容器镜像与模型修订、跨机校验等步骤，目标是在并发负载下获得可工作的本地端点和基线表现。

rss · NVIDIA Developer Blog · 11月13日 17:00

**「背景」** GLM-5.3 是 Z.ai 推出的 753B 参数文本混合专家（MoE）模型，基于与 GLM-5.2 相同的基础模型，改进主要来自后训练；本教程使用的是 NVIDIA 提供的 NVFP4 量化版本。MoE 在每个 token 上只激活部分参数，但所有专家权重仍需保持可用，因此这类模型的总权重常超出单张 GPU 的显存容量。张量并行把模型张量和计算切分到多张 GPU 上协同处理同一请求，而 DGX Station GB300 搭载 GB300 Grace Blackwell Ultra 桌面超级芯片并支持高速 ConnectX 网络，为这种跨机部署提供了硬件基础。

**「影响」** 对需要在本地运行前沿规模 MoE 模型的 AI 基础设施团队，这一方案表明可用两台 GB300 DGX Station 和 RDMA 互联绕过单卡显存上限，但代价是双机部署、约 464GB 的双份磁盘以及受门控许可的模型访问。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://build.nvidia.com/z-ai/glm-5-3/modelcard">glm-5-3 Model by Z-ai | NVIDIA NIM</a></li>
<li><a href="https://docs.api.nvidia.com/nim/reference/z-ai-glm-5-3">z-ai / glm-5.3 - docs.api.nvidia.com</a></li>
<li><a href="https://www.nvidia.com/content/dam/en-zz/Solutions/products/workstations/dgx-station/workstation-datasheet-dgx-station-nvidia-us-5543600-web.pdf">NVIDIA DGX Station</a></li>

</ul>
</details>

**标签**: `#vLLM`, `#tensor parallelism`, `#MoE inference`, `#NVIDIA DGX`, `#RDMA`

---

<a id="item-tech-news-6"></a>
### [前 OpenAI 研究员称在六个中国 AI 模型中发现英伟达 Blackwell 指纹](https://the-decoder.com/former-openai-researcher-says-he-found-nvidia-blackwell-fingerprints-hidden-inside-six-chinese-ai-models/) ⭐️ 7.0/10

前 OpenAI 研究员、Unemployment Labs 创始人 Will DePue 称，他通过取证分析在六个中国 AI 模型中发现英伟达 Blackwell GPU 的“指纹”，涉及 DeepSeek-V4-Flash、DeepSeek-V4-Pro、Kimi K3、Kimi K3.1-Pro、MiniMax-M3 和蚂蚁集团 Ling-3.1-flash，这些模型据称在 2026 年 4 月后发布。该方法依据的是 PyTorch 在训练前用随机种子初始化权重时，不同核心数的 GPU 会产生特征性分布：Hopper H100/H800 为 132 核，Blackwell B200/B300 为 148 核，GB200/GB300 为 152 核；DePue 称已在真实 Blackwell 芯片上精确复现 DeepSeek-V4-Flash 和 Kimi K3 的结果，并公开了 GitHub 验证代码，还称 24 个已知硬件的对照模型均被正确识别。他估计这五次训练合计约需 1.2 万块 Blackwell GPU，成本超过 5 亿美元，其中 Kimi K3 约用 4500 块 GPU 训练 70 天，DeepSeek-V4-Pro 约用 3000 块。报道同时强调，该指纹只能说明权重初始化所用的硬件，不能证明 GPU 的所在地点、所有者，也不能证明存在走私或违反美国出口管制的行为；报道称唯一其他技术解释是同样受限的 AMD MI300X 被人为限速以产生相同模式，DePue 称已利用芯片间的微小舍入差异予以排除。DePue 称 OpenAI 和 Anthropic 的资深研究员已独立核查并确认该方法，但文章未给出完整方法细节，也未提供完整的独立验证，因此该结论仍属初步证据。

rss · The Decoder · 11月13日 15:21

**「背景」** 美国对华先进 AI 芯片出口管制已覆盖英伟达 Hopper 之后的 Blackwell 世代（如 B200/B300 与 GB200/GB300），因此中国企业能否获得这些 GPU 一直是政策与产业关注的焦点。Blackwell 与 Hopper 的流式多处理器（SM）数量不同——Hopper 通常为 132 个，Blackwell 为 148 或 152 个——而大模型训练前常用 PyTorch 按随机种子初始化权重，GPU 核心布局可能在未训练权重中留下统计痕迹。这类“权重取证”可作为判断模型训练硬件的间接方法，但其结论仍取决于方法细节和独立复现。

**「影响」** 若该取证方法经独立验证，美国出口管制执法者和采购这些中国模型的下游开发者将不得不把模型权重视为可推断训练硬件的证据；但报告本身也承认，这只证明对 Blackwell 的访问，不能证明芯片位于中国、归谁所有或违反出口法。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://www.theregister.com/ai-and-ml/2026/11/13/chinese-ai-labs-are-training-models-on-nvidias-blackwell-despite-export-controls-says-ex-openai-engineer/5309891">Chinese AI labs are training models on Nvidia&#x27;s Blackwell ...</a></li>
<li><a href="https://unemploymentlabs.com/checkpoint-forensics">Top Chinese Frontier AI Models Carry the Fingerprint of...</a></li>
<li><a href="https://unemploymentlabs.com/checkpoint-forensics">Top Chinese Frontier AI Models Carry the Fingerprint of...</a></li>
<li><a href="https://techcrunch.com/2026/11/13/export-banned-nvidia-chips-are-behind-chinas-most-powerful-ai-models-uh-oh-jensen/">Export -banned Nvidia chips are behind China &#x27;s most powerful AI ...</a></li>
<li><a href="https://wccftech.com/deepseek-and-moonshot-ai-models-appear-to-carry-hidden-nvidia-blackwell-fingerprints-in-their-starting-weights-pointing-to-training-clusters-of-3000-to-4500-gpus/">DeepSeek And Moonshot AI Models Appear To Carry Hidden NVIDIA ...</a></li>

</ul>
</details>

**标签**: `#Nvidia Blackwell`, `#AI export controls`, `#China AI`, `#GPU forensics`, `#AI hardware`

---

<a id="item-tech-news-7"></a>
### [OpenAI 推出 Daybreak 双产品进入网络安全市场](https://the-decoder.com/openai-enters-the-cybersecurity-market-with-two-daybreak-products/) ⭐️ 7.0/10

OpenAI 以 Daybreak 品牌推出两款安全产品，正式进入网络安全市场。首款产品 Daybreak Red Team 处于 Early Access 阶段，通过 AI 智能体分析源代码与应用上下文来绘制攻击路径，自动探测 Web 应用漏洞，并负责验证来自漏洞赏金项目或代码扫描器报告的安全缺陷，以及测试补丁。第二款产品 Daybreak Defense Factory 面向防御侧，由 AI 智能体扫描企业代码库中的漏洞并生成补丁，以可直接部署的拉取请求形式提交修复及配套测试，供开发者审批。两款产品均运行在 OpenAI 最新的网络安全模型 GPT-6 Cyber 上。OpenAI 网络应用 AI 负责人 Nancy Wang 表示，Red Team 旨在以自动化持续扫描的速度提供渗透测试，同时达到人类测试人员的深度。

rss · The Decoder · 11月13日 15:08

**「背景」** Daybreak 是 OpenAI 面向网络安全工作的产品与访问体系，旨在让符合资质的企业客户和安全从业者将模型用于获得授权的安全用途，并通过 Daybreak Blue 和 Daybreak Red 区分防御性工作流与高级授权测试。该体系下的产品包括用于授权安全测试的 Daybreak Red Team、面向已连接代码仓库的 Daybreak Defense Factory，以及用于终端工作流和自定义集成的 Codex Security CLI 与 SDK。此次发布的两款产品正是这一体系中的具体能力，分别覆盖攻击路径探测与防御侧修复自动化。

**「影响」** 对安全团队和开发者而言，Daybreak Red Team 与 Defense Factory 有望把漏洞发现、验证、补丁生成和测试编写整合为可由智能体连续执行的流程，并直接产出待审阅的修复 PR；但 Red Team 仍处于早期访问阶段，且缺乏独立验证和基准，其在实际代码库中的准确性与风险尚未得到证明。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://openai.com/daybreak/">Daybreak | OpenAI for cybersecurity</a></li>
<li><a href="https://openai.com/business/solutions/cybersecurity/">AI for Cybersecurity Teams | OpenAI</a></li>
<li><a href="https://help.openai.com/en/articles/20001258-openai-daybreak-trusted-access-for-cyber-overview">OpenAI Daybreak - Trusted Access for Cyber overview</a></li>
<li><a href="https://openai.com/daybreak/">Daybreak | OpenAI for cybersecurity | OpenAI</a></li>
<li><a href="https://www.linkedin.com/posts/mart%C3%AD-poy-magri%C3%B1%C3%A1_openais-daybreak-signals-an-early-but-notable-activity-7460370933246021632-fEit">Gartner on OpenAI Daybreak Cybersecurity Impact | LinkedIn</a></li>

</ul>
</details>

**标签**: `#AI security`, `#cybersecurity`, `#AI agents`, `#vulnerability management`, `#OpenAI`

---