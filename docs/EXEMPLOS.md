# Exemplos de uso — orquestrador e cada guru

Regra de ouro: descreva o **sintoma real**, não o framework.

Dois modos:
1. **Orquestrado** — você não escolhe o guru. Melhor na maioria dos casos.
2. **Direto** — você já sabe a lente.

## Melhor forma de usar

Funciona: contexto (time, prazo, o que já tentou) + pedido de artefato + deixar o orquestrador escolher.
Não funciona: “me fala de liderança”, chamar os 30, pedir que o agente vire a pessoa.

### Prompt-padrão do orquestrador

```text
conselho:
Contexto: [empresa / time / tamanho]
Sintoma: [o que está acontecendo agora]
Já tentamos: [1–3 coisas]
Restrição: [prazo, política, budget]
Quero de volta: diagnóstico + lentes escolhidas + plano 7/30/90 + o que NÃO fazer
```

### Prompt-padrão direto

```text
guru [Nome]:
Contexto: [...]
Sintoma: [...]
Me devolve só o artefato da sua lente, o ponto cego e 1 handoff.
```

## Exemplos com o orquestrador

**Estratégia no slide + time calado**
```text
conselho: a estratégia está no PowerPoint há 8 meses. O time cala nas retrospectivas. Já fizemos offsite e dashboard. Nada anda.
```
Esperado: Speculand + Edmondson + Moran.

**Portfólio inflado**
```text
conselho: 40 projetos, 8 pessoas, todo mundo exausto. Tudo é prioridade.
```
Esperado: Nieto-Rodriguez + Crenshaw + Speculand.

**Cultura tóxica que performa**
```text
conselho: batemos meta e o turnover do comercial explodiu. Quem discorda some do staff meeting.
```
Esperado: Pfeffer + Edmondson + Mull.

**Founder gargalo**
```text
conselho: founder, 40 pessoas, toda decisão grande passa por mim. Slack até 23h.
```
Esperado: Power + Ribott + Moran.

**Guerra de preço**
```text
conselho: o mercado só fala desconto. A oferta é igual à do concorrente.
```
Esperado: Kim + Osterwalder + Kotler.

**Transformação que o chão não comprou**
```text
conselho: lançamos a transformação no town hall. A operação segue o processo antigo.
```
Esperado: Kotter + Pardo + Edmondson.

## Exemplo de cada guru

1. **Nelson** — `guru Nelson: o time entrega e o único feedback é o que falhou. Quero reconhecimento em 30 dias sem prêmio.` → matriz Soon/Sincere/Specific.
2. **Kotter** — `guru Kotter: a transformação morreu em 6 semanas. Quero o mapa dos 8 passos.` → passo travado + 2 wins.
3. **Kotler** — `guru Kotler: vendemos para todo mundo. Quero posicionamento em uma página.` → STP + o que parar de comunicar.
4. **Moran** — `guru Moran: o plano 2026 está lindo e janeiro escapou. Quero 12 semanas com 3 MVAs.` → score semanal.
5. **Collins** — `guru Collins: crescemos e parece medíocre. Quero o hedgehog e o que parar.` → First Who + 20 Mile March.
6. **Pfeffer** — `guru Pfeffer: a proposta boa morre no comitê. Quero o mapa de quem decide.` → aliado/veto + 3 jogadas.
7. **Power** — `guru Power: founder, 25 pessoas, eu fecho o comercial grande. Quero 3 decisões para delegar.` → hábitos 21 dias.
8. **Pardo** — `guru Pardo: a nova cultura é teatro na linha de frente. Quero o mapa humano.` → quem vive / finge / sabota.
9. **Nieto-Rodriguez** — `guru Nieto-Rodriguez: 40 projetos, 8 pessoas. Quero o que matar na sexta.` → portfólio + critério de valor.
10. **Speculand** — `guru Speculand: estratégia no slide há 8 meses. Quero o Compass preenchido.` → 5 right actions.
11. **Burke** — `guru Burke: evito a conversa com o diretor que não entrega. Quero o script 3C para amanhã.` → Catch–Confront–Change.
12. **Edmondson** — `guru Edmondson: erro some e ninguém reporta. Quero safety × padrões.` → 3 práticas do líder.
13. **Ribott** — `guru Ribott: CEO e board não compartilham agenda. Quero as 3 conversas adiadas.` → sucessão + agenda.
14. **Kim** — `guru Kim: só competimos em preço. Quero canvas + ERRC.` → não-cliente.
15. **Osterwalder** — `guru Osterwalder: o modelo está na cabeça do founder. Quero BMC + 5 test cards.` → hipótese mais barata de matar.
16. **Krippendorff** — `guru Krippendorff: só vemos atacar preço ou sair. Quero a quarta opção.` → experimento 30 dias.
17. **Tapscott** — `guru Tapscott: digital aqui é ter site. Quero tese de plataforma.` → pipeline vs rede.
18. **Burkus** — `guru Burkus: inovação no mesmo círculo. Quero mapa de rede e 3 pontes.` → laços fracos.
19. **Mull** — `guru Mull: pagamos bem e o comercial vira a porta. Quero as 3 condições de permanência.` → Employalty.
20. **Ibarra** — `guru Ibarra: fui promovido e continuo no cargo antigo. Quero 3 experimentos de papel.` → outsight.
21. **Biech** — `guru Biech: a resposta é sempre um curso. Quero 70-20-10 no fluxo.` → transferência, não aula.
22. **Rodgers** — `guru Rodgers: diversidade é evento de novembro. Quero DEI como performance.` → alocação e voz.
23. **Hamel** — `guru Hamel: 7 aprovações para o óbvio. Quero a burocracia a matar.` → experimento de autonomia.
24. **Ogg** — `guru Ogg: transformação sem dono nas cadeiras certas. Quero o mapa das cadeiras de valor.` → The List.
25. **Ben-Shabat** — `guru Ben-Shabat: o jovem não compra a gente. Quero tese de comportamento + 3 apostas.`
26. **Erickson** — `guru Erickson: quatro gerações, uma política só. Quero mapa geracional + transferência de conhecimento.`
27. **Stiglitz** — `guru Stiglitz: estamos tratando regra do jogo como problema de gestão. Quero os trade-offs.`
28. **Westover** — `guru Westover: o VP de transformação foi rejeitado em 90 dias. Quero gravidade institucional.`
29. **Spence** — `guru Spence: 14 frameworks e o time não decora nenhum. Quero 5 princípios da casa.`
30. **Crenshaw** — `guru Crenshaw: ninguém termina nada. Quero o que recusar e os MVAs protegidos.`

## Se a resposta vier genérica

```text
Refaça. Declare o roteamento, use só 3 lentes, e feche com plano 7/30/90 e um artefato de cada lente.
```
