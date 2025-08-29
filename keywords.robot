*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}        headlesschrome
${URL}            https://www.amazon.com.br/
${SEARCH_TERM}    celulares

*** Keywords ***
Acessar a página inicial
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    id:twotabsearchtextbox    10s

Pesquisar por celulares e validar o resultado
    Input Text    id:twotabsearchtextbox    ${SEARCH_TERM}
    Click Button    id:nav-search-submit-button

Validar Resultados
    # Espera um container de resultados (slot principal)
    Wait Until Page Contains Element    css:div.s-main-slot    10s
    Page Should Contain    ${SEARCH_TERM}
    [Teardown]    Close All Browsers
