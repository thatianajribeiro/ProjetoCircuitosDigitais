# ProjetoCircuitosDigitais
Projeto final da disciplina de Circuitos Digitais: implementação do NEANDER. 

Por Igor Carvalho de Brito Batista



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
Quando "rw" possui valor um, a célula está habilitada para escrita, caso contrário ela estará disponível só para leitura de dados.

É importante frizar que enquanto há a escrita de dados dentro da célula, não deve ser exibido nenhuma informação na saída, neste aspecto foi desenvolvida uma lógica na saída com a finalidade de inibir a exbição de informações no momento em que há a escrita na célula. A lógica na saída da célula garante que o que é exibido se trata realmente da informação solicitada à célula, uma vez que depende do "enable". Por fim, a lógica na saída da célula exige que o habilitador de leitura/escrita, "rw", esteja desativado para que a informação a ser lida seja atribuída à saída da memória.
