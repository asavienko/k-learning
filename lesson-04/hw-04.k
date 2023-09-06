module HW-04

syntax Expr ::= "a" Expr "b" [prefer]
              | "a" "b" "b"
              | "b"

endmodule