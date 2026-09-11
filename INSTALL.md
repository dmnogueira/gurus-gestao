# Como instalar — Gurus de Gestão

Repositório: https://github.com/dmnogueira/gurus-gestao

Não existe um único botão que instala em ChatGPT, Claude e Grok ao mesmo tempo.
O repo é a fonte única. Cada ferramenta tem um caminho.

## Claude Code (plugin nativo)

```text
/plugin marketplace add dmnogueira/gurus-gestao
/plugin install gurus-gestao@gurus-gestao
```

Depois: `/conselho sua pergunta` ou descreva o problema de gestão.

## Codex

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p ~/.agents/skills
cp -R gurus-gestao/skills/orquestrador-gurus ~/.agents/skills/
cp gurus-gestao/AGENTS.md ./AGENTS.md
```

## Cursor

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
cp gurus-gestao/AGENTS.md ./AGENTS.md
mkdir -p .agents/skills
cp -R gurus-gestao/skills/orquestrador-gurus .agents/skills/
```

## ChatGPT (Custom GPT)

1. Crie um GPT
2. Cole `hosts/chatgpt-instructions.md` nas instruções
3. Knowledge: `skills/orquestrador-gurus/SKILL.md` + `references/matriz-roteamento.md`

## Grok (xAI)

Cole `hosts/grok-instructions.md` no Project e anexe a skill + a matriz.

## Uso

- Orquestrado: `conselho: 40 projetos, 8 pessoas, time calado`
- Direto: `guru Edmondson: erros escondidos no time`
