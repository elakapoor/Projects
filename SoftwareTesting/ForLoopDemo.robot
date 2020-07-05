*** Test Cases ***
#For Loop 1
#  : FOR     ${i}   IN RANGE  1  10
#  \   Log To Console    ${i}

For loop 2
  : FOR     ${i}    IN      1 2 3 4 5 6 7 8 9
  \   Log To Console    ${i}

For loop 3
    : FOR     ${i}    IN    1  2  3  4  5  6  7  8  9
    \   Log To Console    ${i}

For Loop 3 With List
    @{items}    Create List    1  2  3  4  5
    : FOR     ${i}      IN      @{items}
    \   Log To Console    ${i}

For Loop 4
  : FOR    ${i}   IN     Jhon    David   Smith   Scott
  \   Log To Console    ${i}


For Loop 5 With Name List
  @{nameitems}    Create List    Jhon    David   Smith   Scott
  : FOR     ${i}      IN      @{nameitems}
  \   Log To Console    ${i}

For Loop 6 with exit
  @{items}    Create List    1    2   3   4   5   6   7   8   9
  : FOR    ${i}   IN    @{items}
  \   Log To Console    ${i}
  \   Exit For Loop If    ${i} == 5
