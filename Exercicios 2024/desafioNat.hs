{- 
    Implementar o tipo algébrico Nat para representar números naturais.
    - Deve possuir construtores de tipo: Zero e o sucessor de um número
    - Este tipo deve ser recursivo
    - Exemplo:
        - Zero representa o número 0
        - Suc Zero representa o número 1
        - Suc (Suc Zero) representa o número 2
    
    - Implementar:
        - Represntação dos números 1 a 4
        - Conversões de Nat para Integer e de Integer para Nat
        - Funções de soma, subtração e multiplicação de números naturais
 
 -}

module Nat where

-- Definição do tipo algébrico Nat
data Nat = Zero
         | Suc Nat 
         deriving Show

-- Representação dos números 1 a 4
one = Suc Zero
two = Suc one
three = Suc two
four = Suc three

-- Conversões de Nat para Integer e de Integer para Nat
nat2int :: Nat -> Integer
nat2int Zero = 0
nat2int (Suc n) = 1 + nat2int n

int2nat :: Integer -> Nat
int2nat 0 = Zero
int2nat n = Suc (int2nat (n-1))

natAdd :: Nat -> Nat -> Nat
natAdd n Zero = n
natAdd n (Suc m) = natAdd (Suc n) m

natSub :: Nat -> Nat -> Nat
natSub x Zero = x
natSub Zero _ = Zero
natSub (Suc x) (Suc y) = natSub x y

natMult :: Nat -> Nat -> Nat
natMult x Zero = Zero
natMult Zero y = Zero
natMult x (Suc y) = natAdd x (natMult x y)

main :: IO ()
main = undefined