# Instalacao detalhada — Gurus de Gestao

Repositorio: https://github.com/dmnogueira/gurus-gestao

Plugin no padrao Agent Skills. Nao existe um unico botao que instala em Claude, ChatGPT, Grok e Gemini ao mesmo tempo. O GitHub e a fonte unica.

Uso depois de instalar:

```text
conselho: o time nao fala e a estrategia nao sai do slide
guru Edmondson: erros escondidos no hospital
```

Catalogo das 30 lentes: [docs/AGENTES.md](./docs/AGENTES.md).

## 1. Claude Code (plugin de verdade — spawn de subagentes)

```text
/plugin marketplace add dmnogueira/gurus-gestao
/plugin install gurus-gestao@gurus-gestao
```

Conferir com `/plugin`. Usar `/conselho ...` ou `/guru Kotter ...`.

Instalacao local se o marketplace falhar:

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p .claude/skills .claude/agents .claude/commands
cp -R gurus-gestao/skills/orquestrador-gurus .claude/skills/
cp gurus-gestao/agents/*.md .claude/agents/
cp gurus-gestao/commands/*.md .claude/commands/
```

## 2. Claude.ai (Project ou Skills)

1. Projects → New project → `Conselho de Gurus de Gestao`.
2. Instructions: cole `hosts/system-prompt.md`.
3. Add files: `skills/orquestrador-gurus/SKILL.md`, `references/matriz-roteamento.md`, `docs/AGENTES.md`.
4. Se a conta tiver Skills: zip da pasta `skills/orquestrador-gurus/` e upload em Plugins → Skills.

## 3. ChatGPT (Custom GPT / Project / Skills)

ChatGPT nao clona GitHub como plugin de Code.

Custom GPT:
1. Explore GPTs → Create → Configure.
2. Instructions: cole `hosts/chatgpt-instructions.md`.
3. Knowledge: `SKILL.md` + `docs/AGENTES.md` + `references/matriz-roteamento.md`.
4. Starters: `Conselho: o time esta calado e a estrategia nao sai do slide`.
5. Create e compartilhe o link.

Project: mesmas instructions + files no Project.
Skills (workspaces com Plugins → Skills): upload do zip de `skills/orquestrador-gurus/`.

## 4. Codex

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p ~/.agents/skills
cp -R gurus-gestao/skills/orquestrador-gurus ~/.agents/skills/
cp gurus-gestao/AGENTS.md ./AGENTS.md
```

Ou:

```text
codex plugin marketplace add dmnogueira/gurus-gestao
codex plugin add gurus-gestao
```

## 5. Cursor

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p .cursor/skills .agents/skills
cp -R skills/orquestrador-gurus .cursor/skills/
cp -R skills/orquestrador-gurus .agents/skills/
```

O `AGENTS.md` na raiz obriga o modelo a rotear.

## 6. Grok (xAI)

Nao ha marketplace publico equivalente.
1. Project no Grok → cole `hosts/grok-instructions.md`.
2. Anexe `SKILL.md`, `docs/AGENTES.md`, `matriz-roteamento.md`.
3. `Conselho: <problema>`.

## 7. Gemini Gem

1. Gems → New Gem.
2. Instructions: `hosts/system-prompt.md`.
3. Knowledge: `docs/AGENTES.md` + `SKILL.md` + matriz.

## O que cada host faz de verdade

| Ferramenta | Instala pasta? | Como o orquestrador chama o guru |
|---|---|---|
| Claude Code | Sim, plugin | Spawn real de `agents/*.md` |
| Codex / Cursor | Skill + AGENTS.md | Veste a lente no mesmo contexto |
| ChatGPT Custom GPT | Upload manual | Protocolo no mesmo turno |
| Claude.ai Project | Upload manual | Protocolo no mesmo turno |
| Grok / Gemini | Instructions + files | Protocolo no mesmo turno |

v1 entrega artefatos (plano 7/30/90, canvas, 8 passos). Nao acessa Jira/ERP.

Teste: `Conselho: 40 projetos, time exausto, ninguem fala de risco` — esperado Nieto-Rodriguez + Crenshaw + Edmondson.
