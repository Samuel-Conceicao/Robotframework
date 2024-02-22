*** Comments ***
#    Exercício For Simples + Lista
#    Exiba cada uma das frutas de uma lista usando um For Simples


*** Settings ***
Documentation       Exercício For Simples + Lista

Library             DateTime
Library             String


*** Test Cases ***
Exercício 03
    [Documentation]    Este teste realiza o Exercício 2 referente ao 2º desafio
    Exiba cada uma das frutas de uma lista usando um For Simples


*** Keywords ***
Exiba cada uma das frutas de uma lista usando um For Simples
    @{FRUTAS}    Create List
    ...    morango
    ...    banana
    ...    maça
    ...    uva
    ...    açaí
    ...    manga
    ...    melancia
    ...    laranja
    ...    ameixa
    ...    pera
    FOR    ${FRUTA}    IN    @{FRUTAS}
        Log    ${FRUTA}
    END
