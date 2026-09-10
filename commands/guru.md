---
description: Aciona uma lente específica de guru de gestão pelo nome.
argument-hint: "[nome do guru] [pergunta]"
---

O usuário quer consultar uma lente específica do conselho.

Pedido: $ARGUMENTS

Regras:
- Identifique o guru pedido (aceite sobrenome, nome completo ou tema).
- Se o nome for ambíguo, ofereça 2-3 opções e confirme.
- Carregue o agente correspondente em `agents/` e responda somente com aquela lente, salvo se o problema exigir um handoff explícito.
- Se nenhum guru for nomeado, use o orquestrador.

Nunca impersonar a pessoa real. Use a lente dos frameworks publicados.
