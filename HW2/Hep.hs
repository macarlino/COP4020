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
   | x == "your"                                    = "ur"   : hep (txt)
   | x == "you"                                     = "u"    : hep (txt)
   | x == "boyfriend"                               = "bf"   : hep (txt)
   | x == "girlfriend"                              = "gf"   : hep (txt)
   | x == "great"                                   = "gr8"  : hep (txt)
   | x == "are"                                     = "r"    : hep (txt)
   | (x, y) == ("see", "you")                       = "cya"  : hep (txt)
   | (x, y) == ("I", "will")                        = "I'll" : hep (txt)
   | not (null (y:z:txt))                           = "heee" : hep (y:z:txt) 
--   | not (null (y:z))                               = x      : hep (y:z)
--   | not (null y)                                   = x      : hep (y)
   | otherwise                                      = x      : [] 
 

-- ["you","know","I","will","see","you","soon"]  "==" ["u","know","I'll","cya","soon"]
