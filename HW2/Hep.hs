hep :: [String] -> [String]

hep [] = []
-- hep (t:txt) = r : hep txt

hep (t:txt) 
   | "for your information" ==  t   = "fyi"  : hep txt
   | "boyfriend" == t               = "bf"   : hep txt
   | "girlfriend" == t              = "gf"   : hep txt
   | "laughing out loud" == t       = "lol"  : hep txt
   | "be right back" == t           = "brb"  : hep txt
   | "great" == t                   = "gr8"  : hep txt
   | "I will" == t                  = "I'll" : hep txt
   | "by the way" == t              = "btw"  : hep txt
   | "see you" == t                 = "cya"  : hep txt
   | "your" == t                    = "ur"   : hep txt
   | "are" == t                     = "r"    : hep txt
   | "you" == t                     = "u"    : hep txt
   | otherwise                      = t : hep txt
