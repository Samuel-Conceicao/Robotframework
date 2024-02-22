*** Comments ***
#    Exercício If Inline + For in Range
#    Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline


*** Settings ***
Documentation       Exercício If Inline + For in Range

Library             DateTime
Library             String
Library             Collections


*** Test Cases ***
Exercício 04
    [Documentation]    Este teste realiza o Exercício 4 referente ao 2º desafio
    Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline


*** Keywords ***
Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline
    @{numeros}    Create List    0    1    2    3    4    5    6    7    8    9    10
    FOR    ${numeros}    IN RANGE    0    10    2
        IF    ${numeros} == ${numeros}    CONTINUE    ELSE    Log    ${numeros}
    END
