# 🎲 Jogo de Adivinhação em Portugol

Este projeto é um clássico jogo de "adivinhe o número" desenvolvido inteiramente em Portugol, utilizando o dialeto do **Portugol Studio**. O computador seleciona um número aleatório e o jogador deve tentar adivinhá-lo, recebendo dicas de "muito alto" ou "muito baixo".

O foco do projeto é demonstrar boas práticas de programação, incluindo **modularização (funções e procedimentos)**, **validação de entrada** e **loops de jogo**.

## ✨ Funcionalidades

* **Níveis de Dificuldade:** O jogador pode escolher entre três níveis, que alteram o intervalo do número a ser sorteado:
    * **Fácil:** 1 a 20
    * **Médio:** 1 a 100
    * **Difícil:** 1 a 500
* **Feedback Instantâneo:** O jogo informa se o palpite foi "Muito ALTO" ou "Muito BAIXO", ajudando o jogador a ajustar sua próxima tentativa.
* **Validação de Entrada:** O programa verifica se o palpite está dentro do intervalo permitido (ex: não permite um palpite de "200" no modo fácil).
* **Contador de Tentativas:** Ao final da partida, o jogo informa ao usuário quantas tentativas foram necessárias para acertar.
* **Loop de Replay:** O jogador é convidado a jogar novamente após cada partida, permitindo uma experiência contínua sem reiniciar o programa.
* **Aleatoriedade Real:** Utiliza `aleatorio.semente(aleatorio.tempo())` para garantir que o número secreto seja diferente a cada nova partida.

## 🛠️ Estrutura do Código

O algoritmo é dividido em três partes principais para facilitar a leitura e manutenção:

1.  **`funcao escolherDificuldade()`:**
    * Responsável por exibir o menu inicial.
    * Valida a entrada do usuário para garantir que uma opção válida (1, 2 ou 3) seja escolhida.
    * **Retorna** um `inteiro` (`limite`) que define o teto para o sorteio.

2.  **`procedimento jogarPartida(limite: inteiro)`:**
    * Recebe o limite de dificuldade como parâmetro.
    * Contém toda a lógica principal do jogo: sortear o número, pedir palpites e dar feedback.
    * Utiliza um loop `repita...ate` para garantir que o jogador possa dar pelo menos um palpite (corrigindo um bug comum de loops `enquanto`).
    * Exibe a mensagem de vitória ao final.

3.  **Bloco `inicio` (Principal):**
    * É o "cérebro" do programa.
    * Contém o loop principal de replay (`repita...ate`).
    * Chama `escolherDificuldade()` para obter o limite.
    * Chama `jogarPartida()` para executar o jogo.
    * Pergunta ao usuário se deseja jogar novamente.

## 🚀 Como Executar

Este código foi escrito especificamente para o **Portugol Studio**, pois utiliza as funções `aleatorio.semente()`, `aleatorio.inteiro()` e `aleatorio.tempo()`.

1.  **Baixe e instale** o [Portugol Studio](https://portugol-studio.github.io/).
2.  **Copie** o código do arquivo.
3.  **Cole** o código no editor do Portugol Studio.
4.  **Execute** o programa pressionando `F9` ou clicando no botão "Executar".
