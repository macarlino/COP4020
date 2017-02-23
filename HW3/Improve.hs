module StatementsExpressions where

data Statement = ExpStmt Expression                
               | AssignStmt String Expression
               | IfStmt Expression Statement
               deriving (Eq, Show) 

data Expression = VarExp String
                | NumExp Integer    
                | EqualsExp Expression Expression
                | BeginExp [Statement] Expression
                deriving (Eq, Show)

improve :: Statement -> Statement
