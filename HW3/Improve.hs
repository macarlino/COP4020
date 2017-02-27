module Improve where
import StatementsExpressions

improve :: Statement -> Statement
improve (ExpStmt e) = ExpStmt (expSimp e)
improve (AssignStmt s e) = AssignStmt s (expSimp e)
improve (IfStmt (VarExp "true") stmt) = improve stmt
improve (IfStmt e stmt) = IfStmt (expSimp e) (improve stmt)
 
expSimp :: Expression -> Expression
expSimp (VarExp s) = (VarExp s)
expSimp (NumExp n) = (NumExp n)
expSimp (EqualsExp e1 e2) =
    if bothVarExpp e1 e2
    then VarExp "true"
    else EqualsExp (expSimp e1) (expSimp e2)
         where bothVarExpp _ _ = False
expSimp (BeginExp [] e) = (expSimp e)
expSimp (BeginExp stmt e) = (BeginExp(map improve stmt) (expSimp e))
