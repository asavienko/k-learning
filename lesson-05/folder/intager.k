module INTAGER
    syntax Number ::= r"[0-9]+" [token, group(digit)] 
                    | "(" Number ")" [group(atom), bracket] 

endmodule
