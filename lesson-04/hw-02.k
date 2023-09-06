module HW-02

    
    syntax Number ::= r"[0-9]" [token, group(digit)] 
                    | "-" Number [group(unary), function]
                    | "(" Number ")" [group(atom), bracket] 
                    | Number "*" Number [group(first),function]
                    | Number "/" Number [group(first),function]
                    | Number "+" Number [group(second),function] 
                    | Number "-" Number [group(second),function]

    syntax priorities digit unary > atom > first > second 
    syntax left first
    syntax left second


endmodule