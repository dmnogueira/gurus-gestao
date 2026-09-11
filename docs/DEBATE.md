# Como o orquestrador aciona e faz os gurus discutirem

O orquestrador não responde no lugar do batalhão. Ele escolhe, dispara em paralelo e media o debate.

## 1. Escolher o mais indicado

Lê o problema, classifica o eixo e aponta **1 primário** — a lente que, sozinha, já produziria o artefato principal.

- Time calado → Edmondson
- 40 projetos → Nieto-Rodriguez
- Guerra de preço → Kim
- Founder gargalo → Power
- Estratégia no slide → Speculand

Se o usuário nomeou o guru, esse é o primário. O orquestrador só soma outros.

## 2. Trabalho paralelo

Na mesma rodada ele abre **vários** agentes ao mesmo tempo — não em fila.

No Claude Code: spawn simultâneo de `agents/{slug}.md` (Agent/Task em paralelo).
Nas outras ferramentas: um bloco por lente, escritos como se cada um tivesse recebido o brief sozinho.

Cada guru recebe o mesmo problema + um artefato diferente. Ninguém copia o outro nesta rodada.

```text
Brief paralelo
Lente: {slug}
Problema: {o mesmo}
Seu artefato: {o que só você entrega}
Não faça: sair do seu framework; impersonar a pessoa; responder pelos outros.
```

## 3. Debate entre eles

Depois dos pareceres isolados, o orquestrador abre a mesa:

1. Cada lente lê o que as outras disseram.
2. Concorda, recorta ou ataca — com o próprio framework.
3. Tensões típicas ficam explícitas (Pfeffer vs Edmondson, Hamel vs Moran, Kim vs Kotler).
4. Ninguém “ganha”. O orquestrador fecha o plano.

```text
Réplica
Você é {slug}. Os outros disseram: {resumo}.
Onde você concorda? Onde o seu framework discorda?
O que mudaria no plano se a sua lente prevalecer?
```

## 4. Síntese

Um plano só: 7 / 30 / 90 dias, donos, o que parar, o que ficou em tensão.

## Chamadas

```text
conselho: [problema]
conselho: trabalhem em paralelo Edmondson, Speculand e Moran e depois discutam
conselho: quero o debate entre Pfeffer e Edmondson neste caso
conselho pleno: batalhão por eixo, depois a mesa discute
```
