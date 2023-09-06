module HW-03

    
    syntax Number ::= r"[0-9]" [token, group(digit)] 
                    | "-" Number [group(unary), function]
                    | "(" Number ")" [group(atom), bracket] 
                    | Number "*" Number [group(first),function, prefer]
                    | Number "/" Number [group(first),function]
                    | Number "+" Number [group(second),function] 
                    | Number "-" Number [group(second),function]



endmodule