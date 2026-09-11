#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-all}"

copy_claude() {
  dest="${2:-.}"
  mkdir -p "$dest/.claude/skills" "$dest/.claude/agents" "$dest/.claude/commands"
  if [ -d "$ROOT/skills/orquestrador-gurus" ]; then
    cp -R "$ROOT/skills/orquestrador-gurus" "$dest/.claude/skills/"
  fi
  if [ -d "$ROOT/agents" ]; then
    cp "$ROOT/agents/"*.md "$dest/.claude/agents/" 2>/dev/null || true
  fi
  cp "$ROOT/commands/"*.md "$dest/.claude/commands/" 2>/dev/null || true
  cp "$ROOT/CLAUDE.md" "$dest/CLAUDE.md"
  echo "Claude Code: skills/agents/commands copiados para $dest/.claude"
}

copy_codex() {
  mkdir -p "$HOME/.agents/skills"
  if [ -d "$ROOT/skills/orquestrador-gurus" ]; then
    cp -R "$ROOT/skills/orquestrador-gurus" "$HOME/.agents/skills/"
  fi
  cp "$ROOT/AGENTS.md" "./AGENTS.md"
  echo "Codex: skill em ~/.agents/skills e AGENTS.md na raiz"
}

copy_cursor() {
  dest="${2:-.}"
  mkdir -p "$dest/.cursor/skills" "$dest/.agents/skills"
  if [ -d "$ROOT/skills/orquestrador-gurus" ]; then
    cp -R "$ROOT/skills/orquestrador-gurus" "$dest/.cursor/skills/"
    cp -R "$ROOT/skills/orquestrador-gurus" "$dest/.agents/skills/"
  fi
  cp "$ROOT/AGENTS.md" "$dest/AGENTS.md"
  echo "Cursor: skill + AGENTS.md em $dest"
}

case "$TARGET" in
  claude) copy_claude "${2:-.}" ;;
  codex) copy_codex ;;
  cursor) copy_cursor "${2:-.}" ;;
  all)
    copy_claude "${2:-.}"
    copy_codex
    copy_cursor "${2:-.}"
    ;;
  *)
    echo "uso: ./install.sh [claude|codex|cursor|all] [destino]"
    exit 1
    ;;
esac
