# Como o orquestrador aciona e faz os gurus discutirem

O orquestrador não é um índice. É o maestro do batalhão.

Três poderes:

1. **Escolher** o guru mais indicado para o sintoma.
2. **Acionar vários ao mesmo tempo** — trabalho em paralelo, cada um no artefato da própria lente.
3. **Fazer os gurus discutirem** — tensão explícita, réplica, o que cada um cede, depois um plano só.

## Três rodadas

### Rodada 1 — Despacho paralelo
O orquestrador classifica os eixos e dispara o pelotão **ao mesmo tempo**, não em fila.

Cada lente recebe o mesmo brief e devolve só o que é dela:
- diagnóstico em 5 linhas
- 1 artefato (canvas, mapa de poder, lista do que matar, script 3C…)
- 1 ponto cego da própria lente

No Claude Code isso é spawn paralelo de `agents/{slug}.md`.
No ChatGPT / Grok / Claude.ai as lentes falam no mesmo turno, em blocos separados, como se tivessem trabalhado juntas.

### Rodada 2 — Mesa de debate
Ninguém empilha parecer e vai embora. O orquestrador senta as lentes na mesa:

```text
TENSÃO
- [Guru A] discorda de [Guru B] porque …
- [Guru C] cede neste ponto e segura neste outro
- O que é fato vs o que é preferência da lente
```

Cada guru replica em 3 linhas. Sem consenso forçado. O valor está no desacordo útil.

### Rodada 3 — Decisão
Um plano só: 7 / 30 / 90 dias. O que fazer mesmo com a tensão. O que NÃO fazer. Quem ficou de fora e pode entrar no próximo turno.

## Chamadas

```text
conselho: [problema]
                 → escolhe o mais indicado + complementares em paralelo + debate

conselho paralelo: [problema]
                 → força despacho simultâneo de várias lentes

debate: Edmondson vs Pfeffer vs Mull
        o comercial cala e o turnover explodiu
                 → mesa explícita entre os nomes

conselho pleno: [problema]
                 → batalhão por eixo, depois debate entre eixos, depois um plano
```

## Exemplo

```text
conselho paralelo: 40 projetos, time calado, estratégia no slide.
Quero o pelotão trabalhando junto e depois discutindo.
```

Despacho típico em paralelo:
- Nieto-Rodriguez — o que matar
- Edmondson — por que ninguém fala o risco
- Speculand — o gap de implementação
- Crenshaw — a carga que impede execução

Debate típico:
- Nieto quer cancelar 30 projetos amanhã.
- Edmondson avisa: cancelar sem voz vira medo.
- Speculand pede 5 right actions, não 30 funerais.
- Crenshaw recusa qualquer plano que some reunião.

Síntese: matar 10 esta semana, ritual de risco na segunda, 3 MVAs protegidas, review em 12 semanas.

## O que o orquestrador nunca faz

- Escolher um guru e silenciar os outros sem declarar.
- Empilhar 6 pareceres iguais e chamar isso de debate.
- Forçar consenso. Tensão útil entra no plano.
- Recusar uma lente que você nomeou.
