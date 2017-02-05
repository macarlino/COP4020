hep :: [String] -> [String]

hep [] = []
-- hep ([]:[]) = []
-- hep ([]:[]:[]) = []
-- hep ([]:[]:[]:[]) = []

hep (x:y:z:txt)
   | (x, y, z) == ("for", "your", "information")    = "fyi"  : hep txt
   | (x, y, z) == ("laughing", "out", "loud")       = "lol"  : hep txt
   | (x, y, z) == ("be", "right", "back")           = "brb"  : hep txt
   | (x, y, z) == ("by", "the", "way")              = "btw"  : hep txt
   | x == "your"                                    = "ur"   : hep (y:z:txt)
   | x == "you"                                     = "u"    : hep (y:z:txt)
   | x == "boyfriend"                               = "bf"   : hep (y:z:txt)
   | x == "girlfriend"                              = "gf"   : hep (y:z:txt)
   | x == "great"                                   = "gr8"  : hep (y:z:txt)
   | x == "are"                                     = "r"    : hep (y:z:txt)
   | (x, y) == ("see", "you")                       = "cya"  : hep (z:txt)
   | (x, y) == ("I", "will")                        = "I'll" : hep (z:txt)
   | not (null (y:z:txt))                           = x      : hep (y:z:txt) 
--   | not (null (y:z))                             = x      : hep (y:z)
--   | not (null y)                                 = x      : hep (y)
   | otherwise                                      = x      : y : [] 
 

-- ["you","know","I","will","see","you","soon"]  "==" ["u","know","I'll","cya","soon"]
