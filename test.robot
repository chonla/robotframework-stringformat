*** Settings ***
Library    StringFormat

*** Test Cases ***
Test Format
    ${output}=    Format String    Test{0} this is a {1} for {0}.    1    cat
    Should Be Equal    ${output}    Test1 this is a cat for 1.

Test Dictionary Format
    &{url data}=    Create Dictionary    hostname=myhost    domain=foo.com    port=8080
    ${url}=    Format String    http://{hostname}.{domain}:{port}    &{url data}
    Should Be Equal    ${url}    http://myhost.foo.com:8080