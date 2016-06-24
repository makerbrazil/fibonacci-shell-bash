#!/bin/bash
# Desenvolvido por: Alex Costa - makerbrasiltv.com.br
# Estou em um grupo no qual dedico este script a eles. 
# I'm glad to meet persons what help me anything else
# I'm glad to meet persons what help me to go ahead with projects.
# Thank you guys - GEEA Group - RaulHC.cc
# 06-23-2016
 

clear
echo "Sempre os dois ultimos numeros somados serao o resulado do proximo numero."

echo "Ate a natureza tem este comportamento (Arvores, animais etc) e a divisao sempre dara 1,6."

echo " "

read -p "Vamos comecar? [Enter]" comecar
clear


read -p "Informe o primeiro numero: " numeroum


if [ -z $numeroum ]; then
    echo "O primeiro numero nao pode ser vazio. \n\n Tente novamente."
sleep 5
echo "Entre na Matrix!";

else

read -p "ok, agora o segundo numero: " numerodois

if [ "$numerodois" -lt "$numeroum" ]; then
    echo "Para funcionar a sequencia de fibonacci, digite um numero maior ou igual o primeiro numero."
    read -p "Informe um numero maior que o primeiro: " numerodois
else
    read -p "Informe a quantidade de números que quer na sequência: " quantidade

[ -z "$quantidade" -a "$quantidade" -gt 1 ] && echo "A quantidade precisa ser maior que o numero 1" && exit

for i in $(seq $quantidade)
do
    echo -n "$numeroum "
    
  somando=$(($numeroum+$numerodois)) ### Soma os dois numeros para iniciar a sequencia de fibonacci
  numeroum=$numerodois # guarda o numero 
  numerodois=$somando # a soma agora e o segundo numero

done

fi


echo

if [ "$numerodois" -lt "$numeroum" ]; then
    echo "Percebi que voce nao quer fazer da maneira correta. \n\nAte mais tarde."
    
sleep 5

clear

echo "Xau!";

clear

fi


fi
