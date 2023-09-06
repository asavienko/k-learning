
module SUBSTR
    syntax Number ::= "-" Number [group(unary), function]
                    | Number "+" Number [group(second),function] 
                    | Number "-" Number [group(second),function]

endmodule
