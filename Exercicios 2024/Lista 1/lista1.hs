-- 1
salarioLiquido :: Float -> Float
salarioLiquido salario =
    let gratificacao = 0.1 * salario
        imposto = 0.07 * salario
        salarioLiquido = salario + gratificacao - imposto
    in salarioLiquido

-- 2
notaFinal :: Float -> Float -> Float -> Char
notaFinal n1 n2 n3 =
    let mediaPond = (n1 * 2 + n2 * 3 + n3 * 5) / 10
    in
        if mediaPond >= 8.0 then 'A'
        else if mediaPond >= 7.0 && mediaPond < 8.0 then 'B'
        else if mediaPond >= 6.0 && mediaPond < 7.0 then 'C'
        else if mediaPond >= 5.0 && mediaPond < 6.0 then 'D'
        else 'E'

-- 3
precoRetrato :: Integer -> String -> Double
precoRetrato qtdPessoas dia =
    let
        precoBase = if qtdPessoas == 1 then 100.0
                    else if qtdPessoas == 2 then 130.0
                    else if qtdPessoas == 3 then 150.0
                    else if qtdPessoas == 4 then 165.0
                    else if qtdPessoas == 5 then 175.0
                    else if qtdPessoas == 6 then 180.0
                    else if qtdPessoas >= 7 then 185.0
                    else 0.0
    in
        if dia == "sabado" || dia == "domingo" then 1.2 * precoBase
        else precoBase

-- 4
fatorialDuplo :: Integer -> Integer
fatorialDuplo n
    | n <= 1    = 1
    | otherwise = n * fatorialDuplo (n - 2)


-- 5
potencia :: Integer -> Integer -> Integer
potencia x n
    | n == 0    = 1
    | otherwise = x * potencia x (n - 1)

-- 6
aumentoSalarioAno :: Float -> Integer -> Integer -> Float
aumentoSalarioAno salario anoContratacao anoAtual = aumentoSalarioAux salario anoContratacao anoAtual 0.015

aumentoSalarioAux :: Float -> Integer -> Integer -> Float -> Float
aumentoSalarioAux salario anoContratacao anoAtual percentual
    | anoContratacao == anoAtual = salario
    | otherwise = aumentoSalarioAux (salario + percentual * salario) (anoContratacao + 1) anoAtual (percentual * 2)

-- 7
ultimo :: [Int] -> Int
ultimo [x] = x
ultimo (x:xs) = ultimo xs -- desestrutura a lista e chama a função novamente, removendo o primeiro elemento

-- 8 
primeiros :: [Int] -> [Int]
primeiros [] = []
primeiros [x] = []
primeiros (x:xs) = x : primeiros xs -- seleciona todos os elementos de uma lista não vazia, exceto o ultimo

-- 9
produtoListas :: [Int] -> [Int] -> [Int]
produtoListas [] _ = []
produtoListas _ [] = []
produtoListas (x:xs) (y:ys) = (x * y) : produtoListas xs ys 
    -- multiplica os elementos de duas listas, 
    -- removendo um elemento de cada uma a cada chamada e concatenando o resultado

-- 10
data Produto = Perecivel Integer String Int Bool Comercializacao       -- codigo, descricao, ano de validade, comestivel
             | NaoPerecivel Integer String String Int Comercializacao  -- codigo, descricao, fabricante, ano de fabricacao
             deriving Show

-- 11
data Comercializacao = Unidade Int
                     | Peso Float
                     deriving Show

-- 12
ehValido ::  Produto -> Int -> Bool
ehValido (Perecivel _ _ ano _ _) anoAtual = ano >= anoAtual
ehValido (NaoPerecivel _ _ _ ano _) anoAtual = True

-- 13
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd(False:_) = False
myAnd(True:xs) = myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr(True:_) = True
myOr(False:xs) = myOr xs

-- 14
verificaLista :: [Int] -> Int
verificaLista [] = 0 -- Caso c.
verificaLista [x] = x -- Caso b.
verificaLista (x:y:_) = x + y -- Caso a.

-- 15
contador :: [Int] -> Int
contador = foldr (\_ acc -> acc + 1) 0

-- 16
{- 
a. Correta, resultado: ['d', 'e', 'f']
b. Correta, resultado: 64
c. Erro de tipo -> não retorna um mesmo tipo de dado
d. Correta, resultado: [6, 8] * Filter não altera os dados, apenas filtra
e. Correta, resultado: 9.0
f. Correta, resultado: 60
 -}