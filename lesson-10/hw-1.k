module HW-1
  imports STRING-SYNTAX
  imports STRING-COMMON
  imports INT
  imports INT-SYNTAX
  imports K-EQUAL-SYNTAX
  imports INT-COMMON
  imports INT-SYMBOLIC-KORE

  syntax String ::= make(String) [function]
                | firstWord(String) [function]

  rule firstWord(S) => #if findChar(S, " ", 0) ==Int -1 #then S #else #if findChar(S, " ", 0) ==Int 0 #then substrString(S, 1, findChar(S, " ", 1)) #else substrString(S, 0, findChar(S, " ", 1)) #fi #fi
  rule make(S) => #if ( lengthString(S) <=Int 1 )  #then S  #else #if ( findChar(S, ".", 0) ==Int -1 ) #then firstWord(S) #else firstWord(S) +String "," +String make(substrString(S, findChar(S, ".", 0) +Int 1, lengthString(S))) #fi #fi





endmodule