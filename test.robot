*** Settings ***
Library    ./robotframework-stringformat/formatter.py

*** Test Cases ***
Test Format
    ${output}=    Format String    Test{0} this is a {1} for {0}.    1    cat
    Log To Console    ${output}
