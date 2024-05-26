*** Settings ***
Resource            ../base.robot

Test Setup          Abrir App
Test Teardown       Teardown


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_VERSION}     14
${APP_PACKAGE}                  com.google.android.calculator
${ANDROID_ACTIVITY}             com.android.calculator2.Calculator
${ANDROID_PLATFORM_NAME}        Android


*** Test Cases ***
Teste de Soma
    Adicionando 25+25 - Soma
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    50

Teste Keyword Arguments
    Adiciona um valor de 0 a 9    ${BOTAO_9}
    Escolha o tipo de operação    ${BOTAO_ADICIONA}
    Adiciona outro valor de 0 a 9    ${BOTAO_9}
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    18

Teste de Subtração
    Testando qual o valor de 500 - 57
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    443

Teste de Divisão
    Click Element    com.google.android.calculator:id/digit_5
    Click Element    com.google.android.calculator:id/digit_0
    Click Element    com.google.android.calculator:id/digit_0
    Click Element    com.google.android.calculator:id/op_div
    Click Element    com.google.android.calculator:id/digit_5
    Click Element    com.google.android.calculator:id/eq
    Wait Until Element Is Visible    com.google.android.calculator:id/result_final
    Element Should Contain Text    com.google.android.calculator:id/result_final    100

Teste de Multiplicação
    Testando qual o valor de 500 vezes 5
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    2500

Obter o valor de Pi
    Testando qual o valor de Pi
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    3,14159265

Raiz Quadrada de 81
    Testando a raiz quadrada de 81
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    9

Obter o valor de 10% de 149
    Testando qual o valor de 10% de 149
    Aguarda o elemento carregar e verifica o texto    ${CAMPO_RESULTADO}    134,1
