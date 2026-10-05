---
layout: default
title: "Horizon Summary: 2026-10-05 (ZH)"
date: 2026-10-05
lang: zh
---

> 从 13 条内容中筛选出 2 条重要资讯。

---

**科技新闻**
1. [在 RTX 4090 上以约 124 tokens/s 运行 125B Qwen 模型](#item-tech-news-1) ⭐️ 7.0/10
2. [NASA 与 IBM 发布开源月球基础模型](#item-tech-news-2) ⭐️ 7.0/10

---

## 科技新闻

<a id="item-tech-news-1"></a>
### [在 RTX 4090 上以约 124 tokens/s 运行 125B Qwen 模型](https://github.com/Niko1221/Strata) ⭐️ 7.0/10

一条 Hacker News 讨论称，使用 Strata 推理栈可以在消费级 RTX 4090 上运行 125B 的 Qwen 3.8 Flash Next 模型；发帖人 snehesht 报告在 RTX 4090、128GB DDR5、Ryzen 7950x3d 配置下达到 124 tokens/s。Strata 由 Niko1221/Strata 仓库发布，吸引关注的原因是它可能把原本需要更大显存的高吞吐本地推理带到单张消费级显卡上。但社区基准测试结果不一：Jackson\_\_ 在 50 张图像的视觉坐标任务中发现，同一 GGUF 和视觉适配器在 Strata 上的误差中位数为 154.8 像素、平均 168.8 像素，而在 llama.cpp 上分别为 46.5 和 81.4 像素，显示量化或实现质量可能下降。其他用户也报告了不同硬件上的结果，例如 AntiRush 在 RTX 6000 Pro Workstation Edition 上用 ds4 Q4 量化在 450 瓦下实现 Code 任务 prefill 1,251 tok/s、decode 255.26 tok/s，并支持 4 路并发流达到 400+ tok/s。

hackernews · snehesht · 10月4日 12:51 · [社区讨论](https://news.ycombinator.com/item?id=49953495)

**「背景」** Strata 是一个面向 Qwen3.8-Flash-Next 的本地推理引擎，提供 Windows/Linux 一键安装，并在本机暴露 OpenAI/Anthropic 兼容 API、可选图像输入，目标是在 12–24GB NVIDIA 显存加 64GB 内存的消费级机器上运行该模型（tool-1-1）。Qwen3.8-Flash-Next 是 Qwen 4 架构下的首个开放权重模型，采用多模态混合专家（MoE）设计，总参数 125B、每个 token 仅激活 6B，另附带 51B n-gram 嵌入与 4B MTP，官方将其定位为面向智能体编码、工具调用和视觉任务的低成本推理（tool-2-1、tool-2-2、tool-2-3）。由于权重总量远超单张消费级显卡的显存容量，这类方案必须依赖量化与分层卸载策略，把所谓“热专家”保留在 GPU，其余权重放到主机内存乃至 NVMe，这也正是社区对量化后质量损失的争论焦点（tool-1-3）。

**「影响」** 对本地推理用户和开发者而言，Strata 让 125B 级 Qwen 模型在单张 RTX 4090 乃至 12GB 显存设备上以数十到上百 tokens/s 的速度运行成为可能。不过社区测试显示，同一份 GGUF 权重在 Strata 下的输出质量明显低于 llama.cpp，因此实际采用仍需在吞吐与精度之间权衡。

**「社区讨论」** 社区既对低于 4-bit 量化的质量下降表示怀疑，也在实际体验上出现分歧：a11r 认为 4-bit 量化在困难但范围明确的编码任务上已够用，并在租用的 RTX Pro 6000 上以约 1 美元/小时达到每小时 120 万输出 token 和 4000 万输入 token（含缓存），而 jacquesm 则批评相关线程被 Strata 链接刷屏，认为热潮有待时间检验。Jackson\_\_ 的 llama.cpp 对比结果被视为对 Strata 质量声明的直接反例，但也有用户报告其在特定硬件和量化组合下表现良好。

<details><summary>参考链接</summary>
<ul>
<li><a href="https://github.com/Niko1221/Strata">GitHub - Niko 1221 / Strata : Qwen3.8-Flash-Next (125B MoE) on...</a></li>
<li><a href="https://www.youtube.com/watch?v=hJ_Iw2E7cnc">Strata GitHub Explained: How a 125B Qwen3.8-Flash-Next... - YouTube</a></li>
<li><a href="https://huggingface.co/Qwen/Qwen3.8-Flash-Next">Qwen / Qwen 3 . 8 - Flash - Next · Hugging Face</a></li>
<li><a href="https://github.com/qwenlm/qwen3.8-flash-next">GitHub - QwenLM/ Qwen 3 . 8 - Flash - Next : Qwen 3 . 8 - Flash - Next is the...</a></li>
<li><a href="https://ollama.com/library/qwen3.8-flash-next:125b-a6b-q4_K_M">qwen 3 . 8 - flash - next : 125 b -a6b-q4_K_M</a></li>
<li>Strata on a power limited 5090 and 96GB of DDR5-6400 is cranking out ...</li>
<li>Your 12GB GPU Can Run a 125B Model at 93 Tokens per Second</li>

</ul>
</details>

**标签**: `#local-llm-inference`, `#quantization`, `#consumer-gpu`, `#qwen`, `#inference-stack`

---

<a id="item-tech-news-2"></a>
### [NASA 与 IBM 发布开源月球基础模型](https://the-decoder.com/nasa-and-ibms-open-source-lunar-model-turns-17-years-of-orbiter-data-into-a-foundation-for-lunar-science/) ⭐️ 7.0/10

NASA 与 IBM Research 联合多家学术机构发布了 NASA-IBM Lunar Foundation Model，称其是最早面向月球科学的开源基础模型之一，目标是让数十年的月球观测数据更便于机器学习使用。该模型基于 TerraMind 架构但从零训练，使用 SomBench——迄今最大的同配准多模态月球语料库：近 200 万个 tile bundles、11 种模态、两个空间尺度，约 100 万张 Narrow Angle Camera 约 1 米/像素高分辨率图像和近 96.4 万张 Wide Angle Camera 100 米/像素多光谱图像，主体来自 17 年 LRO 观测，并加入 GRAIL 重力、Lunar Prospector 氢和 JAXA Kaguya/SELENE 矿物学数据，共整合 4 个任务 9 台仪器 30 多个空间对齐数据层，并按地图区域划分以避免泄漏。模型将光照角度、太阳位置和 tile 范围等成像几何作为显式输入，并在单次训练中同时学习高分辨率与低分辨率影像，FlexiViT 使其无需重训即可适配不同图像块尺寸。在 100 米和 1 米尺度撞击坑检测、极地冰沉积预测以及 Irregular Mare Patches 分割任务上，预训练模型达到或超过常见基线及随机初始化对照模型；其中极地冰预测提升最大，据 IBM 称相较最佳基线 SwinV2-B 误差降低最多 22%，粗尺度撞击坑检测在仅用一半数据训练时领先近 19%，而 1 米撞击坑检测与 IMP 分割仅与最强基线大致持平，IBM 称 IMP 领先 3%但差异更接近训练波动。研究显示该模型不适合绝对大地定位，生成测试中经纬度有时偏差数十度，绝对高程也可能偏移；作者将其视为可复用的下游任务基础而非物理测量仪器的替代，且隔离各创新贡献的对照实验仍待进行、部分测试数据集较小。模型已在 Hugging Face、GitHub 和 TerraTorch 公开发布，并附带 ML-ready 预训练数据集和基准集合。

rss · The Decoder · 10月4日 10:10

**「背景」** 基础模型先在大规模无标注数据上预训练，再以少量标注样本适配具体任务；月球观测数据丰富但标注稀缺，因此这一范式有吸引力。NASA 与 IBM Research 自 2022 年初通过 Space Act Agreement 合作推进“AI for Science”基础模型，2023 年 8 月发布首个 Prithvi 模型；该月球模型基于 IBM 于 2025 年与 ESA 及于利希研究中心为地球观测开发的 TerraMind，但从零训练。

**「影响」** 对月球与遥感研究者、尤其是需要处理多模态 LRO 数据的开发者而言，该模型可通过 Hugging Face、GitHub 和 TerraTorch 直接获取并用于少样本下游任务，在极地冰预测和撞击坑检测上可能减少标注与算力需求，但其绝对定位缺陷意味着不能替代物理测量。

**标签**: `#AI foundation models`, `#lunar science`, `#open source AI`, `#NASA`, `#remote sensing`

---