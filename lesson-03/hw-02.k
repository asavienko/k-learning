module HW-02

    
    syntax Number ::= "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" | "0" 
                    | Number Number
                    | "-" Number [function]
                    | "(" Number ")" [function] 
                    | Number "+" Number [function] 
                    | Number "-" Number [function]
                    | Number "*" Number [function]
                    | Number "/" Number [function]



endmodule