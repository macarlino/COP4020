module Hep where
hep :: [String] -> [String]

hep [] = []

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
   | x == "your"                                    = "ur"   : hep (y:[]) 
   | x == "you"                                     = "u"    : hep (y:[])
   | x == "boyfriend"                               = "bf"   : hep (y:[])
   | x == "girlfriend"                              = "gf"   : hep (y:[])
   | x == "great"                                   = "gr8"  : hep (y:[])
   | x == "are"                                     = "r"    : hep (y:[])
   | otherwise                                      = x      : hep (y:[])

hep (x:y:z:[])
   | (x, y, z) == ("for", "your", "information")    = "t"  : []
   | (x, y, z) == ("laughing", "out", "loud")       = "lol"  : []
   | (x, y, z) == ("be", "right", "back")           = "brb"  : []
   | (x, y, z) == ("by", "the", "way")              = "btw"  : []
   | (x, y) == ("see", "you")                       = "cya"  : hep (z:[])
   | (x, y) == ("I", "will")                        = "I'll" : hep (z:[])
   | x == "your"                                    = "ur"   : hep (y:z:[])
   | x == "you"                                     = "u"    : hep (y:z:[])
   | x == "boyfriend"                               = "bf"   : hep (y:z:[])
   | x == "girlfriend"                              = "gf"   : hep (y:z:[])
   | x == "great"                                   = "gr8"  : hep (y:z:[])
   | x == "are"                                     = "r"    : hep (y:z:[])
   | otherwise                                      = x      : hep (y:z:[]) 
 

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
