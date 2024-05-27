*** Settings ***
Resource    ../base.robot


*** Variables ***
${BOTAO_0}                  id=${PREFIXO}/digit_0
${BOTAO_PONTO}              id=${PREFIXO}/dec_point
${BOTAO_1}                  id=${PREFIXO}/digit_1
${BOTAO_2}                  id=${PREFIXO}/digit_2
${BOTAO_3}                  id=${PREFIXO}/digit_3
${BOTAO_4}                  id=${PREFIXO}/digit_4
${BOTAO_5}                  id=${PREFIXO}/digit_5
${BOTAO_6}                  id=${PREFIXO}/digit_6
${BOTAO_7}                  id=${PREFIXO}/digit_7
${BOTAO_8}                  id=${PREFIXO}/digit_8
${BOTAO_9}                  id=${PREFIXO}/digit_9
${BOTAO_ADICIONA}           id=${PREFIXO}/op_add
${BOTAO_SUBTRAI}            id=${PREFIXO}/op_sub
${BOTAO_DIVISAO}            id=${PREFIXO}/op_div
${BOTAO_MULTIPLICACAO}      id=${PREFIXO}/op_mul
${BOTAO_RAIZ_QUADRADA}      id=${PREFIXO}/op_sqrt
${BOTAO_PORCENTAGEM}        id=${PREFIXO}/op_pct
${BOTAO_IGUAL}              id=${PREFIXO}/eq
${BOTAO_PI}                 id=${PREFIXO}/const_pi
${CAMPO_RESULTADO}          id=${PREFIXO}/result_final
${CAMPO_FORMULA}            id=${PREFIXO}/formula


*** Keywords ***
Adicionando 25+25 - Soma
    Click Element    ${BOTAO_2}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_ADICIONA}
    Click Element    ${BOTAO_2}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Aguarda o elemento carregar e verifica o texto
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Element Should Contain Text    ${elemento}    ${texto}

Adiciona um valor de 0 a 9
    [Arguments]    ${elemento}
    Click Element    ${elemento}

Adiciona outro valor de 0 a 9
    [Arguments]    ${elemento}
    Click Element    ${elemento}
    Click Element    ${BOTAO_IGUAL}

Escolha o tipo de operação
    [Arguments]    ${elemento}
    Click Element    ${elemento}

Testando qual o valor de 500 - 57
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_SUBTRAI}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_7}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Testando qual o valor de 500 vezes 5
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_MULTIPLICACAO}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Testando qual o valor de Pi
    Click Element    ${BOTAO_PI}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Testando a raiz quadrada de 81
    Click Element    ${BOTAO_RAIZ_QUADRADA}
    Click Element    ${BOTAO_8}
    Click Element    ${BOTAO_1}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Testando qual o valor de 10% de 149
    Click Element    ${BOTAO_1}
    Click Element    ${BOTAO_4}
    Click Element    ${BOTAO_9}
    Click Element    ${BOTAO_SUBTRAI}
    Click Element    ${BOTAO_1}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_PORCENTAGEM}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}

Testando qual o valor de 500 dividido por 5
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_0}
    Click Element    ${BOTAO_DIVISAO}
    Click Element    ${BOTAO_5}
    Click Element    ${BOTAO_IGUAL}
    Wait Until Element Is Visible    ${CAMPO_RESULTADO}
