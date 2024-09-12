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