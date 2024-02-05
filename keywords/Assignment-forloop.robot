*** Variables ***
@{hero}    ironman    batman    captain    superman    hulk    shazam    thor    flash    blackwidow    wonder woman    hawkeye

*** Keywords ***
Hero Team
    ${i}    Set Variable    0
    FOR    ${value}    IN    @{hero}
        
        ${num}    Evaluate    ${i}%2

        IF    ${num}==0
            Log To Console     ${value}
        END

        ${i}    Evaluate    ${num}+1
        
        Exit For Loop If    "${value}"=="blackwidow"  
    END

*** Test Cases ***
TC-001 
    Hero Team 