# Instalação detalhada — Gurus de Gestão

Repositório: https://github.com/dmnogueira/gurus-gestao

Não existe um único botão que instala o mesmo pacote em ChatGPT, Claude, Grok, Gemini e Codex. O GitHub é a **fonte única**. Cada LLM tem um caminho.

Depois de instalado, o uso é o mesmo em todos:

- Orquestrado: `conselho: o time cala nas reuniões e a estratégia não sai do slide`
- Direto: `guru Edmondson: erros escondidos no hospital`

O orquestrador escolhe 1 lente primária + até 2 complementares e devolve diagnóstico + tensão + plano 7/30/90.

## 1. Claude Code (plugin nativo)

```text
/plugin marketplace add dmnogueira/gurus-gestao
/plugin install gurus-gestao@gurus-gestao
```

Teste: `/conselho o time entrega pouco e ninguém fala nas retrospectivas`

O plugin carrega `skills/`, `agents/` (31 subagentes) e `commands/` (`/conselho`, `/guru`). No Claude Code o orquestrador spawna os especialistas de verdade.

Instalação local:

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p .claude/skills .claude/agents .claude/commands
cp -R gurus-gestao/skills/orquestrador-gurus .claude/skills/
cp gurus-gestao/agents/*.md .claude/agents/
cp gurus-gestao/commands/*.md .claude/commands/
```

## 2. Claude.ai (Project)

1. Crie um Project `Conselho de Gurus`.
2. Instruções: cole `hosts/chatgpt-instructions.md`.
3. Files: `skills/orquestrador-gurus/SKILL.md`, `references/matriz-roteamento.md`, `docs/AGENTES.md`.
4. Chat dentro do Project: `conselho: [problema]`.

Se a conta aceitar Skills: zip de `skills/orquestrador-gurus/` (com `SKILL.md` na raiz) e faça upload.

## 3. ChatGPT (Custom GPT)

1. Explore GPTs → Create.
2. Instructions: cole `hosts/chatgpt-instructions.md`.
3. Knowledge: `SKILL.md`, `matriz-roteamento.md`, `docs/AGENTES.md`.
4. Starters: `Conselho: o time está calado e a estratégia não sai do slide`.
5. Create e compartilhe o link.

ChatGPT Project (Plus/Team): mesmas instruções e arquivos no Project.

## 4. Grok (xAI)

1. Project no Grok.
2. Cole `hosts/grok-instructions.md`.
3. Anexe a skill + matriz + `docs/AGENTES.md`.
4. Peça: `chame o orquestrador` + o problema.

## 5. Codex

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p ~/.agents/skills
cp -R gurus-gestao/skills/orquestrador-gurus ~/.agents/skills/
cp gurus-gestao/AGENTS.md ./AGENTS.md
```

Se houver plugin manager:

```text
codex plugin marketplace add dmnogueira/gurus-gestao
codex plugin add gurus-gestao
```

## 6. Cursor

```bash
cp gurus-gestao/AGENTS.md ./AGENTS.md
mkdir -p .agents/skills .cursor/skills
cp -R gurus-gestao/skills/orquestrador-gurus .agents/skills/
cp -R gurus-gestao/skills/orquestrador-gurus .cursor/skills/
```

## 7. Gemini Gem / Copilot / outros

Mesmo padrão do ChatGPT: instruções de `hosts/chatgpt-instructions.md` + Knowledge (`AGENTES.md` + matriz + skill).

## Checklist

| Ferramenta | Aponta o repo? | Como chama |
|---|---|---|
| Claude Code | `/plugin marketplace add dmnogueira/gurus-gestao` | `/conselho` `/guru` |
| Codex | plugin add ou clone | `$orquestrador-gurus` |
| Cursor | clone + AGENTS.md | `conselho:` |
| Claude.ai | não | Project + `conselho:` |
| ChatGPT | não | Custom GPT + `conselho:` |
| Grok | não | `chame o orquestrador` |
| Gemini | não | Gem + `conselho:` |
