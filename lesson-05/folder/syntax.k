requires "mult.k"
requires "intager.k"
requires "substr.k"


module HW-02-SYNTAX
    imports INTAGER
    imports SUBSTR
    imports MULT


    syntax priorities digit unary > atom > first > second 
    syntax left first
    syntax left second
endmodule
