*** Comments ***
#    Exercício Argumentos e Retornos + If Simples
#    Criar uma keyword que receba idade e retorne o ano de nascimento
#    Se o ano for menor que 2000, exibir mensagem dizendo que nasceu no século passado


*** Settings ***
Documentation       Exercício Argumentos e Retornos + If Simples

Library             DateTime
Library             String


*** Test Cases ***
Exercício 02
    [Documentation]    Este teste realiza o Exercício 2 referente ao 2º desafio
    Calcular o ano de nascimento a partir da idade    30


*** Keywords ***
Calcular o ano de nascimento a partir da idade
    [Arguments]    ${idade}
    ${date}    Get Current Date
    ${ano_atual}    Fetch From Left    ${date}    -
    Log    ${ano_atual}
    ${ano_nascimento}    Evaluate    ${ano_atual} - ${idade}
    Log    ${ano_nascimento}
    IF    ${ano_nascimento} > ${ano_atual}
        Log    Olá, gostaria de avisa-lo que você nasceu nesse século!
    ELSE IF    ${ano_nascimento} < ${ano_atual}
        Log    Olá, gostaria de avisa-lo que você nasceu no século passado!
    ELSE
        Fail
    END
