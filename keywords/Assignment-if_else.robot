*** Keywords ***
Basic if else
    [Arguments]    ${grade}
    IF    ${grade}>=90
        Log To Console    A
    ELSE IF    ${grade}>=80
        Log To Console    B
    ELSE IF    ${grade}>=70
        Log To Console    C
    ELSE IF    ${grade}>=60
        Log To Console    D
    ELSE
        Log To Console    F
    END

*** Test Cases ***
TC-01
    Basic if else    71