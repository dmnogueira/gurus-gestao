# O orquestrador tem teto?

**No protocolo, não.** Ele pode acionar 1, 4, 12 ou os 30. Você nomeia, pede pelotão de eixo, ou diz `chame o batalhão` / `conselho pleno`. Ele não recusa lente porque “já tem três”.

## O que é livre

- Quantos gurus entram no mesmo problema
- Chamar mais no meio da conversa (`agora inclui Hamel e Crenshaw`)
- Trabalho em paralelo + mesa de debate
- Qualquer um dos 30, em qualquer ordem

## O que não é livre (limite da ferramenta, não do batalhão)

| Ferramenta | O que acontece na prática |
|---|---|
| Claude Code | Spawn paralelo de `agents/*.md`. Há teto técnico de subagentes simultâneos da própria ferramenta — se estourar, o orquestrador faz em levas e depois debate. |
| ChatGPT / Grok / Claude.ai | Tudo no mesmo turno. Os 30 cabem como blocos curtos por eixo; o limite é a janela de contexto, não uma regra nossa. |
| Codex / Cursor | Mesmo padrão do ChatGPT: lentes no contexto, síntese no fim. |

## Como pedir “sem limite”

```text
conselho pleno: [problema]
Chame quantos gurus o caso pedir. Sem teto. Paralelo + debate + um plano.
```

```text
conselho: [problema]
Pode ampliar o pelotão. Não corte lente útil.
```

Se a resposta vier com só 2 nomes e o caso é largo:

```text
Abre o pelotão. Sem teto. Trabalho paralelo, mesa entre eles, um plano só.
```
