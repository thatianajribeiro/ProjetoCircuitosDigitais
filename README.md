# ProjetoCircuitosDigitais
Projeto final da disciplina de Circuitos Digitais: implementação do NEANDER.


Componentes: Igor, Ítalo, Ricardo, Robson, Rony e Thatiana.

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
Como já dito anteriormente, cada célula é enumerada de forma binária com números de zero a quinze. Por meio da porta lógica "XNOR" é possível comparar bit a bit a igualdade do endereço fornecido pelo REM com a chave da célula. Vale lembrar que a porta "XOR" retorna bit um toda vez que as entradas forem diferentes, de maneira análoga, a porta "XNOR" retorna um toda vez que as entradas forem iguais. O resultado da comparação feita com a porta lógica "XNOR" é guardado em um sinal auxiliar de tamanho oito bits e posteriormente passado para outro sinal chamado de "enable", este último é feito a partir da operação "AND" entre todas as posições do vetor auxiliar, este sinal possui apenas um bit.

#### Armazenamento da informação
A chamada para os flip flops JK foram feitas dentro de uma estrutura de FOR com intuito de somente agilizar o processo de criação dos port maps. A célula implementada permite que apenas seja gravado qualquer informação no momento da descida do clock, uma vez que os flip flops utilizados são sensíveis à borda de descida, além disso o habilitador "rw" também deve estar ativado para que haja a execução da tarefa. Dentro do port map do flip flop JK há uma lógica que habilita a célula para leitura e escrita quando socilitado.

O habilitador de leitura/escrita da célula funciona da seguinte maneira:
Quando "rw" possui valor um, a célula está habilitada para escrita, caso contrário ela estará disponível unicamente para leitura de dados.

É importante frizar que enquanto há a escrita de dados dentro da célula, não deve ser exibido nenhuma informação na saída, neste aspecto foi desenvolvida uma lógica na saída com a finalidade de inibir a exbição de informações no momento em que há a escrita na célula. A lógica na saída da célula garante que o dado exibido se trata realmente da informação solicitada à célula, uma vez que depende do "enable". Por fim, a lógica na saída da célula exige que o habilitador de leitura/escrita, "rw", esteja desativado para que a informação a ser lida seja atribuída à saída da memória.

__________________________________________________________________________________________________


# Decodificador


O decodificador serve para receber um codigo recebido de *opcode* em uma instrução para a *Unidade de Controle (UC)*, tivemos uma entrada que se chama *instrução* que contém oito bits de memória, poque os quatros primeiros bits foram reservadas para memória de dados e os quatro últimos são reservados para as instruções que ativará as variáveis que contém na *UC*, que é o cérebro de todo o programa. Também temos uma saída que é um vetor de onze posições, onde cada posição correlaciona com uma variável da *UC*, sendo:
1a: *NOP (nenhuma operação)*;
2a: *STA (armazena acumulador)*;
3a: *LDA (carrega o acumulador)*;
4a: *ADD (soma)*;
5a: *OR (ou lógico)*;
6a: *AND (e lógico)*;
7a: *NOT (inverte acumulador)*;
8a: *JMP (desvio incondicional)*;
9a: *JN (desvio condicional a negativo)*;
10a: *JZ (desvio condicional ao zero)*;
11a: *HLT (termina a execução)*.
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
J(I) <= (not(R(I)) and carga) or (incrementa and not(Carga) and not(soma_result(I)));
K(I) <= (R(I) and carga) or (incrementa and not(carga) and soma_result(I));, onde R é um vetor de 8 bits, 
por isso é necessário 8 flipflops, pois cada um só trabalha com um bit, o Q representa a saída do flipflop JK.

________________________________________________________________________________________________

# AUL e AC

A AUL é a parte do processador que realiza cálculos de lógica aritmética e lógicas. A AUL deste trabalho possui duas entradas de 8 bits, 1 seletor de 3 bits, 1 saída 8 bits e outra saída de 2 bits. Além disso, possui um component chamado Soma. A AUL realiza quatro tipos de operação, para isso foi necessário fazer o uso da estrutura with select para codificar com 3 bits cada uma, o resultado foi armazenado em y. Ainda, existe uma saída chamada NZ, que vai para 1 quando o o resultado da operação é negativo e 0 quando for positivo.
AC é um registrador que acumulada uma determinada informação, ele recebe o resultado da unidade lógica aritmética (AUL), a qual realiza uma operação entre um valor do RDM e do AC. O resultado dessa operação fica acumulado no AC.

AC é um registrador que acumulada uma determinada informação, ele recebe o resultado da unidade lógica aritmética (AUL), a qual realiza uma operação entre um valor do RDM e do AC. O resultado dessa operação fica acumulado no AC. No port, as estruturas principais que merecem destaque são: uma entrada chamada dado_ULA, que é um resultado da operação proveniente da AUL, e uma saída chamada saida_AC, que é um valor que estava armazenado proveniente da ULA, que pode ir para a memória ou de volta para ULA. No architecture archRegistrador8bits, há o componente FlipFlopJK, a qual foi utilizado para poder fazer um port map e, assim, poder ter os 8 bits de saída através de um conjunto de flip flops. Como são 8 bits, foi necessário utilizar a estrututa de for para simplificar código.
