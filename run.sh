#!/usr/bin/env bash
# Horizon 便捷运行脚本：自动使用 proxychains（可用 HORIZON_NO_PROXYCHAINS=1 禁用）
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOOLS_DIR="$REPO_DIR/../.tools"
UV_BIN="${UV_BIN:-$TOOLS_DIR/bin/uv}"

if [[ ! -x "$UV_BIN" ]]; then
  UV_BIN="$(command -v uv || true)"
fi
if [[ -z "$UV_BIN" ]]; then
  echo "未找到 uv，请先安装 uv 或设置 UV_BIN" >&2
  exit 1
fi

cd "$REPO_DIR"

export UV_CACHE_DIR="${UV_CACHE_DIR:-$TOOLS_DIR/../.cache/uv}"
export UV_PYTHON_INSTALL_DIR="${UV_PYTHON_INSTALL_DIR:-$TOOLS_DIR/python}"
export UV_PYTHON_BIN_DIR="${UV_PYTHON_BIN_DIR:-$TOOLS_DIR/bin}"
export UV_DEFAULT_INDEX="${UV_DEFAULT_INDEX:-https://pypi.tuna.tsinghua.edu.cn/simple}"

if [[ "${HORIZON_NO_PROXYCHAINS:-0}" == "1" ]]; then
  exec "$UV_BIN" run horizon "$@"
elif command -v proxychains4 >/dev/null 2>&1; then
  exec proxychains4 -q "$UV_BIN" run horizon "$@"
else
  exec "$UV_BIN" run horizon "$@"
fi
