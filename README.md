# Gurus de Gestão

Plugin de conselho: **1 orquestrador + 30 lentes de gestão** (Global Gurus Top 30 Management 2026).

Você descreve o problema. O orquestrador escolhe o guru certo e devolve um plano de 7 / 30 / 90 dias.

```text
conselho: o time não fala e a estratégia não sai do slide
guru Edmondson: erros escondidos no hospital
```

Documentos deste repositório:

- [docs/O-MAPA.md](docs/O-MAPA.md) — o ranking como termômetro, não como lista de celebridades
- [docs/GURUS.md](docs/GURUS.md) — especialidade, força e frase de uso de cada lente
- [INSTALL.md](INSTALL.md) — instalação no Claude, ChatGPT, Grok, Codex, Cursor e Gemini

---

## O mapa mudou

Listas como a da Global Gurus seriam lidas quase como um ranking de celebridades. Hoje funcionam como um **termômetro silencioso** de onde a gestão realmente está. Não estamos diante de palestrantes. Estamos diante de um mapa de ideias que moldam como organizações decidem.

Durante décadas a gestão orbitou estratégia, planejamento e controle. O eixo deslocou. O topo não é mais quem pensa o longo prazo abstrato, e sim quem entende **comportamento, execução e adaptação contínua**. Estratégia não perdeu relevância — foi absorvida pela capacidade de traduzir intenção em ação.

Liderança não se mede pelo repertório que você conhece. Mede-se pelos modelos que você incorporou no jeito de decidir, priorizar e agir. O ranking não é lista para admiração. **É um espelho.**

Cada arquivo deste plugin é uma **lente**. Não impersona a pessoa real. Só aplica frameworks publicados.

---

## Como instalar

Guia completo: [INSTALL.md](INSTALL.md).

### Claude Code

Repo privado — use o clone local:

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p .claude/skills .claude/agents .claude/commands
cp -R gurus-gestao/skills/orquestrador-gurus .claude/skills/
cp gurus-gestao/agents/*.md .claude/agents/
cp gurus-gestao/commands/*.md .claude/commands/
```

Se o Claude Code estiver logado na sua conta GitHub:

```text
/plugin marketplace add dmnogueira/gurus-gestao
/plugin install gurus-gestao@gurus-gestao
```

Depois: `/conselho [problema]` ou `/guru Edmondson [problema]`.

### ChatGPT (Custom GPT)

1. Explore GPTs → Create.
2. Instructions: cole [hosts/system-prompt.md](hosts/system-prompt.md) (ou o texto de AGENTS.md).
3. Knowledge: anexe [docs/GURUS.md](docs/GURUS.md), [docs/O-MAPA.md](docs/O-MAPA.md) e [INSTALL.md](INSTALL.md).
4. Starter: `Conselho: o time está calado e a estratégia não sai do slide`.
5. Não publique na Store se quiser manter privado.

### Claude.ai

Project novo → Instructions = AGENTS.md → Files = `docs/GURUS.md` + `docs/O-MAPA.md` → converse **dentro** do Project.

### Grok

Project ou custom instructions → cole AGENTS.md → anexe `docs/GURUS.md` → `chame o orquestrador` + o problema.

### Codex

```bash
git clone https://github.com/dmnogueira/gurus-gestao.git
mkdir -p ~/.agents/skills
cp -R gurus-gestao/skills/orquestrador-gurus ~/.agents/skills/
cp gurus-gestao/AGENTS.md ./AGENTS.md
```

### Cursor

```bash
cp AGENTS.md ./AGENTS.md
mkdir -p .cursor/skills
cp -R skills/orquestrador-gurus .cursor/skills/
```

### Gemini Gem

Instructions = AGENTS.md. Knowledge = `docs/GURUS.md` + `docs/O-MAPA.md`.

| Ferramenta | Como o orquestrador chama o guru |
|---|---|
| Claude Code | Spawn real de `agents/*.md` |
| Codex / Cursor | Veste a lente no mesmo contexto |
| ChatGPT / Grok / Claude.ai / Gemini | Protocolo de prompt no mesmo turno |

---

## Os 30 gurus — especialidade, força e como usar

Versão expandida: [docs/GURUS.md](docs/GURUS.md).

| # | Guru | Especialidade | Forte em | Como usar |
|---|---|---|---|---|
| 1 | Bob Nelson | Reconhecimento como performance | Elogio específico, oportuno, próximo do fato | `guru Nelson o time entrega e ninguém vê` |
| 2 | John Kotter | Mudança como método | 8 passos, urgência, coalizão | `guru Kotter a transformação morreu depois do kickoff` |
| 3 | Philip Kotler | Marketing como criação de valor | STP, demanda, posicionamento | `guru Kotler não sabemos para quem vendemos` |
| 4 | Brian Moran | Execução em 12 semanas | Lead/lag, score semanal | `guru Moran o plano anual não anda` |
| 5 | Jim Collins | Disciplina do bom ao excepcional | Hedgehog, First Who, Flywheel | `guru Collins somos bons e não viramos grandes` |
| 6 | Jeffrey Pfeffer | Poder e política real | Quem decide de verdade | `guru Pfeffer minha proposta morre no comitê` |
| 7 | Rhett Power | Liderança + crescimento | Tirar o founder do modo herói | `guru Power o crescimento depende de mim` |
| 8 | Marta Pardo | Transformação humana | Cultura vivida, ritos de frente | `guru Pardo o chão não comprou a transformação` |
| 9 | Antonio Nieto-Rodriguez | Projetos como eixo | Portfólio, matar projeto | `guru Nieto-Rodriguez temos 40 projetos e 8 pessoas` |
| 10 | Robin Speculand | Estratégia só existe executada | Implementation Compass | `guru Speculand a estratégia está no slide há 8 meses` |
| 11 | Suzy Burke | Diálogo interno do líder | Self-talk, conversa difícil | `guru Burke não consigo ter a conversa` |
| 12 | Amy Edmondson | Segurança psicológica | Silêncio, erro escondido, learning zone | `guru Edmondson o time cala nas reuniões` |
| 13 | David Ribott | CEO, board, topo | Agenda C-level, sucessão | `guru Ribott o conselho e o CEO não andam juntos` |
| 14 | W. Chan Kim | Oceano azul | ERRC, Strategy Canvas | `guru Kim estamos em guerra de preço` |
| 15 | Alex Osterwalder | Modelo de negócio testável | BMC, VPC, hipótese vs fato | `guru Osterwalder não sabemos quem paga` |
| 16 | Kaihan Krippendorff | Estratégia ágil | Quarta opção, jogada assimétrica | `guru Krippendorff só vemos duas opções ruins` |
| 17 | Don Tapscott | Economia digital | Plataforma vs pipeline | `guru Tapscott digital aqui é só o site` |
| 18 | David Burkus | Redes que escalam | Laços fracos, silos | `guru Burkus os silos não se falam` |
| 19 | Joe Mull | Engajamento como ativo | Ideal Job + Meaningful Work + Great Boss | `guru Mull o comercial vira a porta` |
| 20 | Herminia Ibarra | Identidade de líder | Outsight, promoção que não pega | `guru Ibarra fui promovido e continuo no cargo antigo` |
| 21 | Elaine Biech | Desenvolvimento contínuo | T&D como sistema, não curso | `guru Biech a resposta não pode ser só um curso` |
| 22 | James O. Rodgers | Diversidade como performance | Mix que melhora decisão | `guru Rodgers diversidade aqui é evento` |
| 23 | Gary Hamel | Humanocracia | Custo da burocracia | `guru Hamel são 7 aprovações para o óbvio` |
| 24 | Sandy Ogg | Talento ligado a valor | 25–40 papéis críticos | `guru Ogg a transformação não tem dono nos papéis certos` |
| 25 | Hana Ben-Shabat | Comportamento e consumo | Cliente novo, varejo, Gen Z | `guru Ben-Shabat o jovem não compra a gente` |
| 26 | Tamara J. Erickson | Futuro do trabalho | Contratos por geração | `guru Erickson o conflito é geracional` |
| 27 | Joseph Stiglitz | Dimensão macro | Assimetria, regra do jogo | `guru Stiglitz isso parece gestão mas é regra do jogo` |
| 28 | Jonathan H. Westover | Liderança + OD | Gravidade institucional | `guru Westover o novo VP foi rejeitado pela cultura` |
| 29 | John Spence | Gestão em princípios simples | Visão vívida, higiene operacional | `guru Spence complicamos o óbvio` |
| 30 | Dave Crenshaw | Produtividade e sobrecarga | Multitasking, proteger MVA | `guru Crenshaw ninguém termina nada` |

**Orquestrador:** diagnostica o eixo (Pessoas / Execução / Estratégia / Futuro / Impacto), escolhe 1 primário + até 2 complementares e funde num plano só.

`conselho: 40 projetos, time calado, estratégia no slide`

---

## Combos que o orquestrador monta sozinho

| Problema | Primário | Complementares |
|---|---|---|
| Time calado + estratégia no slide | Speculand | Edmondson + Moran |
| 40 projetos / 8 pessoas | Nieto-Rodriguez | Crenshaw + Speculand |
| Cultura tóxica | Pfeffer | Edmondson + Mull |
| Founder gargalo | Power | Burke + Moran |
| Guerra de preço | Kim | Osterwalder + Kotler |
| Transformação que o chão não comprou | Kotter | Pardo + Edmondson |

Nunca mais de 3 lentes por turno.

---

## Estrutura do repositório

```text
.claude-plugin/     plugin Claude Code + marketplace
.codex-plugin/      plugin Codex
commands/           /conselho e /guru
docs/O-MAPA.md      ensaio (o ranking é um espelho)
docs/GURUS.md       especialidade / força / como usar
AGENTS.md           regras para Codex e Cursor
INSTALL.md          instalação por ferramenta
```

Licença MIT. Frameworks citados pertencem aos respectivos autores. Este pacote é camada educacional de roteamento, não endosso do ranking e não impersona ninguém.
