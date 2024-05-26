*** Settings ***
Resource    ../base.robot


*** Variables ***
${PREFIXO}                      com.google.android.calculator:id
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_VERSION}     14
${APP_PACKAGE}                  com.google.android.calculator
${ANDROID_ACTIVITY}             com.android.calculator2.Calculator
${ANDROID_PLATFORM_NAME}        Android


*** Keywords ***
Abrir App
    Open Application
    ...    http://127.0.0.1:4723
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    platformName=${ANDROID_PLATFORM_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${ANDROID_ACTIVITY}

Teardown
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications
