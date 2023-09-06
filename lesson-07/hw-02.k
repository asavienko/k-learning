module HW-02-SYNTAX
    imports INT-SYNTAX
     imports BOOL-SYNTAX
    syntax Int ::=  "Infinityy" [group(dig), token]
                    | "-" Int [group(unary), function]
                    | "(" Int ")" [group(atom), bracket] 
                    | Int "*" Int [group(first),function]
                    | Int "/" Int [group(first),function]
                    | Int "+" Int [group(second),function] 
                    | Int "-" Int [group(second),function]

    syntax priorities unary dig > atom > first > second 
    syntax left first
    syntax left second
  
  syntax Generic ::= Bool | Int

  syntax Bool ::= "(" Bool ")" [bracket]
                > "!" Bool [function]
                > left:
                  Bool "&&" Bool [function]
                | Bool "^" Bool [function]
                | Bool "||" Bool [function]
                | Bool "->" Bool [function]
                | Generic "==" Generic [function]
                | Generic "!=" Generic [function]
                | Generic "<" Generic [function]
                | Generic "<=" Generic [function]
                | Generic ">" Generic [function]
                | Generic ">=" Generic [function]
endmodule

module HW-02
    imports HW-02-SYNTAX
    imports INT
    
    rule A * B => A *Int B 
    rule A + B => A +Int B
    rule A - B => A -Int B
    rule A != B => A =/=Int B
    rule A / B => A divInt B requires B =/=Int 0
    rule _A / B => Infinityy requires B ==Int 0
    rule A == B => true requires A -Int B ==Int 0
    rule _A == _B => false [owise]
    rule A <= B => true requires A == B
    rule A <=B => true requires A /Int B ==Int 0 
    rule _A <= _B => false [owise]
    rule A < B => true requires A /Int B ==Int 0
    rule _A < _B => false [owise]
    rule A > B => true requires B /Int A ==Int 0
    rule _A > _B => false [owise]
    rule A >= B => true requires A == B
    rule A >= B => true requires B /Int A ==Int 0
    rule _A >= _B => false [owise]

endmodule