#!/usr/bin/env bash

grep(){
    echo "grep: Comando que realiza buscas no conteúdo dos arquivos"
    echo "Algumas opções do comando:"
    echo "      -c: imprime somente a contagem das linhas com expressão"
    echo "      -i: ignora diferença entre letras maiúsculas e minúsculas"
    echo "Exemplo de uso:"
    echo "      1) Busca por expressão que é composta por mais de uma palavra(uso de aspas): grep 'teste de software' teste.txt"
    echo "      2) Busca case-sensitive: grep -i teste teste.txt"
}

touch(){
    echo "touch: Comando para alterar data e hora do último acesso e ou data de modificação de um arquivo, além de criar um arquivo vazio(não cria diretório)."
    echo "Algumas opções do comando:"
    echo "      -a: altera apenas a data do último acesso"
    echo "      -m: altera apenas a data de modificação do arquivo"
    echo "Exemplo de uso:"
    echo "      1) Criar um arquivo vazio(se o arquivo não existir): touch ~/../[arquivo]"
    echo "      2) Atualizar a data de todos arquivos do diretório corrente: touch *"
}

man(){
    echo "man: Comando que serve para mostrar o manual da aplicação para o usuário"
    echo "Algumas opções do comando:"
    echo "      -f: Para ver apenas uma pequena descrição do comando(passado como argumento)."
    echo "Exemplo de uso:"
    echo "      1) Para ver o manual do comando ls: man ls"
    echo "      2) Para ver uma pequena descrição do comando ls: man -f ls"
}


chmod(){
    echo "chmod: Comando que altera as permissões de arquivos."
    echo "Algumas opções do comando:"
    echo "      -c : informa quais arquivos estão tendo as permissões alteradas."
    echo "      -v : informa quais arquivos estão sendo processados (não necessariamente alterados)."
    echo "      +x : adiciona permissão de execução"
    echo "Exemplo de uso:"
    echo "      1) Adicionar permissão de execução ao arquivo: chmod +x ~/../[arquivo]"
}

mv(){
    echo "mv: Comando para mover(ou renomear) arquivos"
    echo "Algumas opções do comando:"
    echo "      -b: gera cópia de segurança se o arquivo destino já existir"
    echo "      -i: move o arquivo mas pede confirmação caso já exista um arquivo no destino com o mesmo nome"
    echo "Exemplo de uso:"
    echo "      1) Para renomear o arquivo teste.txt para teste2.txt: mv teste.txt teste2.txt"
    echo "      2) Para mover: mv [caminho atual do arquivo ou diretório] [caminho destino]"
}

rm(){
    echo "rm: Comando para remover arquivos"
    echo "Algumas opções do comando:"
    echo "      -f: apaga sem pedir confirmação"
    echo "      -i: apaga após pedir confirmação"
    echo "      -r: apaga arquivo e sub-diretórios"
    echo "      -v: lista arquivos deletados"
    echo "Exemplo de uso:"
    echo "      1) Para apagar o arquivo teste.txt: rm teste.txt"
    echo "      2) Para apagar o diretório teste e todo seu conteúdo: rm -fr teste"
}

cat(){
    echo "cat: Comando que envia o conteúdo de um ou mais arquivos para a saída padrão ou para um outro arquivo. Portanto, cat conCATena (junta) arquivos."
    echo "Algumas opções do comando:"
    echo "      -n: numera todas as linhas"
    echo "      --version: mostra informações sobre"
    echo "Exemplo de uso:"
    echo "      1) Mostrar arquivo com linhas numeradas: cat -n arquivo.txt"
    echo "      2) Exibir um ou mais arquivos na tela: cat arquivo1 arquivo2"
}

pwd(){
    echo "pwd: Comando para saber o atual diretório."
    echo "Exemplo de uso:"
    echo "      1) Basta digitar somente pwd"
}

cd(){
    echo "cd: Comando para acessar e mudar de diretório corrente"
    echo "Opções mais comuns do comando: "
    echo "      cd [NOME DO DIRETÓRIO]: direciona para o diretório(passado como argumento)."
    echo "      cd ou cd~: direciona para seu usuário home"
    echo "      cd .. : utilizado para voltar um nível acima do diretório atual, ou seja, para o diretório pai"
    echo "Exemplo de uso:"
    echo "      1) Mudar diretório corrente para o diretório ep-exercicios: cd ep-exercicios"
    echo "      2) Voltar para o diretório anterior(pai): cd .."
}

ls(){
    echo "ls: comando utilizado para listar o conteúdo de um diretório(passado como argumento)."
    echo "Opções mais comuns do comando: "
    echo "      -l: lista na forma longa, ou seja, mostrando permissões, data e horário, etc."
    echo "      -a: lista todos arquivos do diretório, inclusive os ocultos."
    echo "Exemplo de uso:"
    echo "      1) Com caminho absoluto: ls -la ~"
    echo "      2) Com caminho relativo ls../.."
}



case $1 in
    ls) ls ;;
    cd) cd ;;
    pwd) pwd ;;
    cat) cat ;;
    rm) rm ;;
    mv) mv ;;
    chmod) chmod ;;
    man) man ;;
    touch) touch ;;
    grep) grep ;;
    *) echo "Comando não consta";;
esac

