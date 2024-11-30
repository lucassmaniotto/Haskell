module TypeChecker where 

import Lexer 

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty 
typeof _ (Num _) = Just TNum 
typeof _ BTrue = Just TBool
typeof _ BFalse = Just TBool
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TNum, Just TNum) -> Just TNum
                       _ -> Nothing 
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                       (Just TBool, Just TBool) -> Just TBool
                       _ -> Nothing
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just TBool, Just TBool) -> Just TBool
                        _ -> Nothing
typeof ctx (Not e) = case typeof ctx e of
                    Just TBool -> Just TBool
                    _ -> Nothing
typeof ctx (Eq e1 e2) = case (typeof ctx e1, typeof ctx e2) of 
                      (Just t1, Just t2) | t1 == t2 -> Just TBool 
                                         | otherwise -> Nothing 
                      _ -> Nothing
typeof ctx (If e e1 e2) = case typeof ctx e of 
                        Just TBool -> case (typeof ctx e1, typeof ctx e2) of 
                                        (Just t1, Just t2) | t1 == t2 -> Just t1 
                                                           | otherwise -> Nothing
                                        _ -> Nothing
                        _ -> Nothing
typeof ctx (Var v) = lookup v ctx
typeof ctx (Lam v t1 b) = let Just t2 = typeof ((v, t1) : ctx) b
                            in Just (TFun t1 t2)
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of
                        (Just (TFun t11 t12), Just t2) | t11 == t2 -> Just t12
                                                       | otherwise -> Nothing
                        _ -> Nothing

typecheck :: Expr -> Expr 
typecheck e = case typeof [] e of 
                (Just _) -> e 
                _        -> error ("Erro verificando tipo da expressão: " ++ show e)