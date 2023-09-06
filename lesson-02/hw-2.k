module HW-2

    syntax Boolean ::= true() | false()
    syntax Outfit ::= Hat() | Shirt() | Pants() | Shoes() | Socks() | Jacket() | Scarf() | Gloves() | Umbrella()
    syntax Color ::= Black()| White()
    syntax Boolean ::= outfitMatching(Outfit, Outfit) [function]

    rule outfitMatching(Hat(), Shirt()) => true()

endmodule