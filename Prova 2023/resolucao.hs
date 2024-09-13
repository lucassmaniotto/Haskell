-- Questão 1
-- d. 155

-- Questão 2
-- c. 180

-- Questão 3
-- d. [6,7]

-- Questão 4
-- c. 105

-- Questão 5
-- c. -4

-- Questão 6
data DescMov = Sangria 
             | PgtoDinheiro 
             | PgtoCartao
             deriving (Show, Eq)

type Data = String
type Movimento = (Data, DescMov, Double, Double)
type Relatorio = [Movimento]
-- c.
type Filial = (Int, Relatorio)

exemplo :: Relatorio
exemplo = [ ("1/10/23", PgtoDinheiro, 100, 1000)
          , ("1/10/23", PgtoCartao, 20, 1100)
          , ("2/10/23", Sangria, 500, 1120)
          , ("3/10/23", PgtoDinheiro, 50, 620)
          , ("5/10/23", PgtoDinheiro, 10, 670)
          , ("5/10/23", PgtoCartao, 100, 680)
          ]

exemploFilial :: Filial
exemploFilial = (1, exemplo)

-- a.
-- Recebe um relatório de movimento e resulta na soma de todos os pagamentos em dinheiro
somaPgtoDinheiro :: Relatorio -> Double
somaPgtoDinheiro [] = 0
somaPgtoDinheiro ((_, PgtoDinheiro, valor, _):ms) = valor + somaPgtoDinheiro ms -- Se o movimento for um pagamento em dinheiro, 
                                                                                -- soma o valor com o restante da lista
somaPgtoDinheiro (_:ms) = somaPgtoDinheiro ms -- Se não for um pagamento em dinheiro, ignora o movimento e chama a função recursivamente

-- b.
-- Recebe um relatório e retorna todos os movimentos de pagamento em cartão
retornaPgtoCartao :: Relatorio -> Relatorio
retornaPgtoCartao = filter (\(_, desc, _, _) -> desc == PgtoCartao)

-- d.
-- Soma todos pagamentos exceto sangrias
somaPgtos :: Relatorio -> Double
somaPgtos [] = 0
somaPgtos ((_, Sangria, _, _):ms) = somaPgtos ms
somaPgtos ((_, _, valor, _):ms) = valor + somaPgtos ms


-- Recebe uma filial e retorna a diferença entre o total de pagamentos e o total de sangrias
diffPgtoSangria :: Filial -> Double
diffPgtoSangria (f, rel) = abs (somaPgtos rel - somaSangrias rel)
  where
    somaSangrias [] = 0
    somaSangrias ((_, Sangria, valor, _):ms) = valor + somaSangrias ms
    somaSangrias (_:ms) = somaSangrias ms