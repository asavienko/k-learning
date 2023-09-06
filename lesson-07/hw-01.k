module HW-01
    imports INT
    imports BOOL

    syntax Bool ::= isEven(Int) [function]

    rule isEven(I) => true requires I %Int 2 ==Int 0
    rule isEven(I) => false requires I %Int 2 =/=Int 0
endmodule