module HW-1
  imports BOOL

  syntax Fruit ::= Blueberry() | Banana() | Grape()
  syntax Bool ::= isBlue(Fruit) [function]

  rule isBlue(Blueberry()) => true
  rule isBlue(Banana()) => false
  rule isBlue(Grape()) => true

  syntax Bool ::= isYellow(Fruit) [function]
                | isBlueOrYellow(Fruit) [function]
                | isBlueAndNotYellow(Fruit) [function]

  rule isYellow(Banana()) => true
  rule isYellow(Blueberry()) => false
  rule isYellow(Grape()) => true

  rule isBlueAndNotYellow(F) => isBlue(F) andBool notBool isYellow(F)
  rule isBlueOrYellow(F) => isBlue(F) orBool isYellow(F)
endmodule