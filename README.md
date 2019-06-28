# ProjetoCircuitosDigitais
Projeto final da disciplina de Circuitos Digitais: implementação do NEANDER.

___________________________________________________________________________



# Memória

A memória do processador abriga dados recebidos do bloco RDM. Os dados recebidos do bloco RDM ficam armazenados em uma célula específica dentro da memória e também ficam expostos para leitura assim que solicitado. A memória implementada no projeto conta com as seguintes portas:

* Entrada do clock externo
* Entrada habilitadora para leitura/escrita na memória
* Endereço e operação recebido do bloco operacional REM
* Saída de dados (Retorno)


## Célula

A memória implementada possui dezesseis células enumeradas de zero a quinze. Cada célula possui internamente um componente contendo uma lógica capaz de gerar oito flip flops do tipo JK, e portanto, capaz de armazenar uma informação de oito bits.
A principal funcionalidade implementada dentro da entidade célula é a seleção de uma célula específica dentro de um conjunto de dezesseis células. Para tal feito, foi necessário desenvolver uma lógica que pudesse manipular o endereço recebido pelo bloco operacional REM e comparar com uma "chave" exclusiva pertencente à célula.

#### Chave da célula
Como já dito anteriormente, cada célula é codificada de forma binária com números de zero a quinze. Por meio da porta lógica "XNOR" é possível comparar bit a bit a igualdade do endereço fornecido pelo REM com a chave da célula. Vale lembrar que a porta "XOR" retorna bit um toda vez que as entradas forem diferentes, de maneira análoga, a porta "XNOR" retorna um toda vez que as entradas forem iguais. O resultado da comparação feita com a porta lógica "XNOR" é guardado em um sinal auxiliar de tamanho oito bits e posteriormente passado para outro sinal chamado de "enable", este último é feito a partir da operação "AND" entre todas as posições do vetor auxiliar, este sinal possui apenas um bit.

#### Armazenamento da informação
A chamada para os flip flops JK foram feitas dentro de uma estrutura de FOR com intuito de somente agilizar o processo de criação dos port maps. A célula implementada permite que apenas seja gravado qualquer informação no momento da descida do clock, uma vez que os flip flops utilizados são sensíveis à borda de descida, além disso o habilitador "rw" também deve estar ativado para que haja a execução da tarefa. Dentro do port map do flip flop JK há uma lógica que habilita a célula para leitura e escrita quando socilitado.

O habilitador de leitura/escrita da célula funciona da seguinte maneira:
Quando "rw" possui valor um, a célula está habilitada para escrita, caso contrário ela estará disponível unicamente para leitura de dados.

É importante frizar que enquanto há a escrita de dados dentro da célula, não deve ser exibido nenhuma informação na saída, neste aspecto foi desenvolvida uma lógica na saída com a finalidade de inibir a exbição de informações no momento em que há a escrita na célula. A lógica na saída da célula garante que o dado exibido se trata realmente da informação solicitada à célula, uma vez que depende do "enable". Por fim, a lógica na saída da célula exige que o habilitador de leitura/escrita, "rw", esteja desativado para que a informação a ser lida seja atribuída à saída da memória.

__________________________________________________________________________________________________


# Decodificador


O decodificador serve para receber um codigo recebido de *opcode* em uma instrução para a *Unidade de Controle (UC)*, tivemos uma entrada que se chama *instrução* que contém oito bits de memória, poque os quatros primeiros bits foram reservadas para memória de dados e os quatro últimos são reservados para as instruções que ativará as variáveis que contém na *UC*, que é o cérebro de todo o programa. Também temos uma saída que é um vetor de onze posições, onde cada posição correlaciona com uma variável da *UC*, sendo:

* 1a: *NOP (nenhuma operação)*;
* 2a: *STA (armazena acumulador)*;
* 3a: *LDA (carrega o acumulador)*;
* 4a: *ADD (soma)*;
* 5a: *OR (ou lógico)*;
* 6a: *AND (e lógico)*;
* 7a: *NOT (inverte acumulador)*;
* 8a: *JMP (desvio incondicional)*;
* 9a: *JN (desvio condicional a negativo)*;
* 10a: *JZ (desvio condicional ao zero)*;
* 11a: *HLT (termina a execução)*.

Foi escolhido vetor, porque assim o código ficaria mais enxuto e não precisaria se preocupa quando zerar outras varivaeis que não será desejada o uso para ser processada em *UC*

________________________________________________________________________________________________

# PC (contador de Programa)

Há quatro entradas, sendo o *clk (clock)*; 
o *R* representa o endereço de memória atual onde os digitos menos significativo (da posição 7 para 4) representa a instrução e os mais significativos (da posição 3 para 0) serve para dados recebidos pelo usuário;
*carga* serve escolher o dado recebido da entrada *R* ou o valor que esteja "rodando" dentro do PC, sendo assim ele desabilita o incrementa;
*incrementa* serva para para escolher entre o valor que esteja "rodando" dentro do PC ou se escolhe o valor incrementado por um somador.

A saída só tem a E que é a memória que atualizará o Endereço de memória.

Na architecture archPCcomJK, há o componente FlipFlopJK que foi implementado durante as aulas pelo professor, também tem um documento do flipflop nessa branch.
Assim como foi desenvolvida a fórmula que será as entradas J e K do FlipFlop, sendo:
* J(I) <= (not(R(I)) and carga) or (incrementa and not(Carga) and not(soma_result(I)));
* K(I) <= (R(I) and carga) or (incrementa and not(carga) and soma_result(I));, onde R é um vetor de 8 bits, 
por isso é necessário 8 flipflops, pois cada um só trabalha com um bit, o Q representa a saída do flipflop JK.

________________________________________________________________________________________________

# ULA e AC

A ULA é a parte do processador que realiza cálculos de lógica aritmética e lógicas. A ULA deste trabalho possui duas entradas de 8 bits, 1 seletor de 3 bits, 1 saída 8 bits e outra saída de 2 bits. Além disso, possui um componente chamado Soma para que, dessa forma, esse bloco possa realizar a operação de adição. A ULA realiza quatro tipos de operação, para isso foi necessário fazer o uso da estrutura with select para codificar com 3 bits cada uma, o resultado foi armazenado em y. Ainda, existe uma saída chamada NZ para indicar se o número é positivo ou zero. 

De forma simplifificada, a saída NZ conta com dois bits, dos quais o primeiro representa o caso de o número ser negativo e a segundo o caso do número ser zero. A lista a seguir indica as possibilidades de saída para NZ.

* 00: número não é negativo, nem 0;
* 01: número não é negativo e é 0;
* 10: número é negativo e não é zero;
* 11: don't care.

Para implementar a identificação de resultados negativos de maneira bem simples, basta realizar uma operação lógica AND entre o bit mais significativo do sinal que guarda o resultado da soma e um bit de valor 1. O resultado da operação lógica fica guardado no primeiro bit de NZ.
Já para idenficar se o resultado da soma é zero, demanda um pouco mais de complexidade. Foi necessário separar o sinal que guarda o valor da soma e compará-lo bit a bit utilizando uma porta lógica XNOR com um sinal auxiliar que guarda um bit 0. Vale lembrar que a porta XNOR retorna o valor 1 sempre que as entradas forem iguais. Depois da comparação, somente foi necessário fazer uma operação AND entre todas as operações de XNOR com todos os bits e o sinal auxiliar de maneira a agregar todo o resultado no segundo bit da saída NZ.

AC é um registrador que acumulada uma determinada informação, ele recebe o resultado da unidade lógica aritmética (ULA), a qual realiza uma operação entre um valor do RDM e do AC. O resultado dessa operação fica acumulado no AC. No port, as estruturas principais que merecem destaque são: uma entrada chamada dado_ULA, que é um resultado da operação proveniente da ULA, e uma saída chamada saida_AC, que é um valor que estava armazenado proveniente da ULA, que pode ir para a memória ou de volta para ULA. No architecture archRegistrador8bits, há o componente FlipFlopJK, a qual foi utilizado para poder fazer um port map e, assim, poder ter os 8 bits de saída através de um conjunto de flip flops. Como são 8 bits, foi necessário utilizar a estrututa de for para simplificar código.

________________________________________________________________________________________________

# Multiplexador
O multiplexador, neste trabalho, é um dispositivo que seleciona entre duas entradas de 8 bits, o endereco de memoria do PC ou o endereço de memória da RDM. Para isso, existe uma chave seletora que varia entre 0 ou 1. Ainda, existe uma saída de 8 bits que vai servir como entrada para o REM.

________________________________________________________________________________________________

# REM
REM tem a função de endereçar  a memória. Ele possui dois ports principais: endereco_in que é endereço de memória de 8 bits proveniente do multiplexador, e a saída endereco_out de 8 bits, que é o endereco de memória que vai acionar determinada célula de memória.
Para obter essa saída, foi necessário fazer o uso de um conjunto de FlipFlops JK, então foi usado o FlipFlop JK como component e  elaborado um laço com o for no port map. Como resultado, foi obtido um uma saída de oito bits no formato XXXX YYYY em que XXXX se refere a operação a ser realizada e Y é o endereço de memória. As 4 primeiras posições da saída foram preencidas com 0 e as quatro restantes com o endereço de memória.
________________________________________________________________________________________________

# RDM
O RDM tem a função de armazenar o dado que vem da memória. No momento em que o endereço entra no REM, a memória libera o conteúdo na saída, esse conteúdo não entra automaticamente na RDM, ele entra a partir do momento que é dado um clock nele. As entradas Input_AC, resultado da operação da AUL, e InputMem, conteúdo que é passado da memória para o RDM, são entradas de oito bits.  Além disso, ele possui uma saída chamada endereco_out. Também foi utilizado um multiplexador para considerar as alteração no load com as seguinte configurações:
* 00- carrega memória;
* 01- carrega AC;
* 10- nada acontece;
* 11- nada acontece.

Para implementar a lógica, foi necessário fazer uma estrutura de for com um conjunto de FlipFlops que juntos armazenarão os 8 bits, no formato XXXX YYYY, sendo X referente a operacao a ser realizada e Y o endereco da memória, clear e preset foram setados em 1 devido a lógica utilizada pelo professor em sala. A saída Q desse conjunto de FlipFlops JK foi passada para a saída do RDM que é o endereco_out.
________________________________________________________________________________________________

# Opcode
Opcode é um registrador de instrução. Ele busca a instrução da memória e armazena em si mesmo. Para implementar a sua lógica foi necessário de entradas como o clock, clear, load, preset, dado_RDM (no tamanho de 8 bits, formado por 4 bits de instrução e 4 bits de memória) e, a saída operacao_out de 8 bits que vai receber os 4 bits mais significativos, representando o código da operacao a ser feita, que vai ser decodificada.


Para implementar a lógica, foi necessário fazer uma estrutura de for com um conjunto de flipflops JK que juntos armazenaram 8 bits, no formato XXXX YYYY, sendo X referente a operação a ser realizada e Y o endereco da memória, clear e preset foram setados em 1 devido a lógica utilizada pelo professor em sala. Como o que importa são os 4 primeiros bits da lógica, então operacao_out ocupará os 4 primeiros espaços com eles e o restante com 0.


<h1>Desenvolvedores:</h1>
 
 <table>
  <tbody><tr> <td align="center">
      <a href="https://github.com/igorcbrito">
        <img src="https://avatars2.githubusercontent.com/u/37213793?s=460&v=4" width="100px;" alt="Ricardo Varela" style="max-width:100%;">
        <br>
        <sub><b>Igor Brito</b></sub>
      </a><br>
    </td> <td align="center">
      <a href="https://github.com/italoaurilio">
        <img src="https://avatars1.githubusercontent.com/u/52167534?s=460&v=4" width="100px;" alt="Ítalo" style="max-width:100%;">
        <br>
        <sub><b>Ítalo Aurílio </b></sub>
      </a><br>
    </td>
    <td align="center">
      <a href="https://github.com/ricardomvv">
        <img src="https://avatars0.githubusercontent.com/u/48896758?s=460&v=4" width="100px;" alt="Ricardo Varela" style="max-width:100%;">
        <br>
        <sub><b>Ricardo Varela</b></sub>
      </a><br>
    </td>
    <td align="center">
      <a href="https://github.com/RobsondCCarneiro">
        <img src="https://avatars2.githubusercontent.com/u/43090615?s=460&v=4" width="100px;" alt="Robson Carneiro" style="max-width:100%;">
        <br>
        <sub><b>Robson Carneiro</b></sub>
      </a><br>
    </td>
    <td align="center">
      <a href="https://github.com/ronydesena">
        <img src="https://avatars0.githubusercontent.com/u/19894638?s=460&v=4" width="100px;" alt="Rony Lourenço" style="max-width:100%;">
        <br>
        <sub><b>Rony Lourenço</b></sub>
      </a><br>
    </td>
    <td align="center">
      <a href="https://github.com/thatianajribeiro">
        <img src="https://avatars2.githubusercontent.com/u/51245283?s=460&v=4" width = "100px;" alt="Thatiana Ribeiro" style="max-width:100%;">
        <br>
        <sub><b>Thatiana Ribeiro</b></sub>
      </a><br>
    </td>
  </tr>
</tbody></table>

