hep :: [String] -> [String]

hep [] = []

-- hep (_:_:_:[]) = []

hep (x:[])  
   | x == "your"                                    = "ur"   : [] 
   | x == "you"                                     = "u"    : []
   | x == "boyfriend"                               = "bf"   : []
   | x == "girlfriend"                              = "gf"   : []
   | x == "great"                                   = "gr8"  : []
   | x == "are"                                     = "r"    : []
   | otherwise                                      = x      : [] 

hep (x:y:[])
   | (x, y) == ("see", "you")                       = "cya"  : [] 
   | (x, y) == ("I", "will")                        = "I'll" : []
   | x == "your"                                    = "ur"   : []
   | x == "you"                                     = "u"    : []
   | x == "boyfriend"                               = "bf"   : []
   | x == "girlfriend"                              = "gf"   : []
   | x == "great"                                   = "gr8"  : []
   | x == "are"                                     = "r"    : []
   | otherwise                                      = x      : []

hep (x:y:z:txt)
   | (x, y, z) == ("for", "your", "information")    = "fyi"  : hep txt 
   | (x, y, z) == ("laughing", "out", "loud")       = "lol"  : hep txt
   | (x, y, z) == ("be", "right", "back")           = "brb"  : hep txt
   | (x, y, z) == ("by", "the", "way")              = "btw"  : hep txt
   | (x, y) == ("see", "you")                       = "cya"  : hep (z:txt)
   | (x, y) == ("I", "will")                        = "I'll" : hep (z:txt)
   | x == "your"                                    = "ur"   : hep (y:z:txt)
   | x == "you"                                     = "u"    : hep (y:z:txt)
   | x == "boyfriend"                               = "bf"   : hep (y:z:txt)
   | x == "girlfriend"                              = "gf"   : hep (y:z:txt)
   | x == "great"                                   = "gr8"  : hep (y:z:txt)
   | x == "are"                                     = "r"    : hep (y:z:txt)
   | not (null (y:z:txt))                           = x      : hep (y:z:txt) 
   | otherwise                                      = x      : [] 

-- hep ["you","you","you","you"]
-- hep ["you","know","I","will","see","you","soon"]
-- hep ["by","the","way","you","must","see","my","girlfriend","she","is","great"]
-- hep (["for","your","information","you","are","a","pig"] ++ ["see","you","later","when","you","find","me","a","boyfriend"]) 
-- hep ["by","the","way","I","will","be","right","back"]


















