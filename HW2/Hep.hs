hep :: [String] -> [String]

hep [] = []
-- hep ([]:[]) = []
-- hep ([]:[]:[]) = []
-- hep ([]:[]:[]:[]) = []

-- hep (x:txt) 
--   | x == "your"                                    = "ur"   : hep (txt)
--   | x == "you"                                     = "u"    : hep (txt)
--   | x == "boyfriend"                               = "bf"   : hep (txt)
--   | x == "girlfriend"                              = "gf"   : hep (txt)
--   | x == "great"                                   = "gr8"  : hep (txt)
--   | x == "are"                                     = "r"    : hep (txt)
--   | otherwise                                      = x      : hep (txt)

hep (x:y:txt)
   | (x, y) == ("see", "you")                       = "cya"  : hep (txt)
   | (x, y) == ("I", "will")                        = "I'll" : hep (txt)
   | otherwise                                      = if not (null y) then x : hep(y:txt) else []

-- hep (x:y:z:txt)
--   | (x, y, z) == ("for", "your", "information")    = "fyi"  : hep txt
--   | (x, y, z) == ("laughing", "out", "loud")       = "lol"  : hep txt
--   | (x, y, z) == ("be", "right", "back")           = "brb"  : hep txt
--   | (x, y, z) == ("by", "the", "way")              = "btw"  : hep txt
--   | otherwise                                      = x        : hep (y:z:txt)

-- ["you","know","I","will","see","you","soon"]  "==" ["u","know","I'll","cya","soon"]
