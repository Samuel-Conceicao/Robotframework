*** Comments ***
# 1 - Exercício Dicionário
#    Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário


*** Settings ***
Documentation       Exercício Dicionário


*** Variables ***
# Tipo Dicionário
&{PESSOA}
...    nome1=Alice Oliveira
...    idade1=18
...    rua1=Rua Frederico Hildebrand
...    numero1=100
...    cep1=13610-370
...    bairro1=Jardim Amália
...    cidade1=Leme
...    estado1=São Paulo
...    nome2=José da Silva
...    idade2=21
...    rua2=Rua Serra do Roncador
...    numero2=100
...    cep2=86065-590
...    bairro2=Bandeirantes
...    cidade2=Londrina
...    estado2=Paraná


*** Test Cases ***
Exercício 01
    [Documentation]    Este teste realiza o Exercício 1 referente ao 2º desafio
    Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário


*** Keywords ***
Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário
    # Dicionário
    Log
    ...    Olá, meu nome é ${PESSOA.nome1}, tenho ${Pessoa.idade1} anos e o meu endereço é ${Pessoa.rua1}, nº ${Pessoa.numero1}, cep ${Pessoa.cep1}, bairro ${Pessoa.bairro1}, cidade ${Pessoa.cidade1}, estado ${Pessoa.estado1}
    Log
    ...    Olá, meu nome é ${PESSOA.nome2}, tenho ${Pessoa.idade2} anos e o meu endereço é ${Pessoa.rua2}, nº ${Pessoa.numero2}, cep ${Pessoa.cep2}, bairro ${Pessoa.bairro2}, cidade ${Pessoa.cidade2}, estado ${Pessoa.estado2}
