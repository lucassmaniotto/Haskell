# Haskell

Linguagem funcional pura, fortemente tipada e com inferência de tipos.

## Instalação
### Linux
```bash
apt install haskell-platform
```

### Windows
[Download](https://www.haskell.org/platform/windows.html) do instalador .exe

## Interpretador
```bash
ghci
```
- Interpretador interativo de Haskell que permite a execução de comandos e funções.
- Comandos úteis:
  ![ghci-commands](./images/ghci-commands.png)

## Tipos de Dados
### Caracteres
```haskell
'a' -- Char
```

#### Strings
- Lista de caracteres
```haskell
"Hello" -- [Char]
```

### Números
```haskell
1 -- Int e Integer (inteiro sem limite)
1.0 -- Float e Double
1 % 2 -- Ratio
```

### Listas
```haskell
[1, 2, 3] -- [Int]
[1,2,3,'a'] -- Listas são homogêneas
-- [1,2,3,'a'] -- Erro
```
#### Listas dentro de listas
```haskell
[[1,2],[3,4]] -- [[Int]]
```

#### Funções sobre Listas
- `head` - Retorna o primeiro elemento da lista
- `tail` - Retorna a lista sem o primeiro elemento
- `null` - Verifica se a lista está vazia
- `reverse` - Inverte a lista
- `++` - Concatena duas listas

### Booleanos
```haskell
True -- Bool
False -- Bool
```

#### Funções para trabalhar com booleanos
```haskell
(&&) -- E
(||) -- OU
not -- Negação

-- Estes últimos estão disponíveis no Prelude
```

### Condicionais
```haskell
if 1 == 1 then "Igual" else "Diferente"
-- then e else são obrigatórios
```

## Funções
- Por convenção os arquivos tem extensão `.hs`
- Funções são definidas com `=` e não utilizam parênteses
- Quando não especificamos o tipo da função, Haskell infere o tipo
  - É uma boa prática especificar o tipo das funções
```haskell
-- Função que soma dois números
soma :: Int -> Int -> Int
soma a b = a + b
```

### Condicionais com Guardas
```haskell
-- Função que retorna o maior de dois números
maior :: Int -> Int -> Int
maior a b
  | a > b = a
  | otherwise = b
```

### Definições locais em equações
- `where` é utilizado para definir variáveis locais
```haskell
-- Função que calcula o IMC
imc :: Float -> Float -> String
imc peso altura
  | valor <= 18.5 = "Abaixo do peso"
  | valor <= 25.0 = "Peso normal"
  | valor <= 30.0 = "Sobrepeso"
  | otherwise = "Obesidade"
  where valor = peso / (altura ^ 2)
```
- `let` é utilizado para definir variáveis locais
```haskell
-- Função que calcula área do triangulo
areaTriangulo a b c = let s = (a + b + c) / 2
                          in sqrt (s * (s - a) * (s - b) * (s - c))
```
- Diferença entre `let` e `where`
  - `let` é uma expressão, pode ser utilizada em qualquer lugar
  - `where` é uma definição, deve ser utilizada no final da função (apenas para definições locais)

### Funções com Listas
```haskell
-- Dada uma lista de strings, a função deve retornar a primeira string ou "empty" se a lista for vazia
firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst =  if not (null lst) 
                    then head lst 
                    else "empty"
```

### Entrada e Saída
```haskell
module Main (main) where

main :: IO ()
main = do
  putStrLn "Digite seu nome: "
  nome <- getLine
  putStrLn ("Olá, " ++ nome)
```

```haskell
module Main (main) where

main :: IO ()
main = do putStrLn "Digite um número: "
            n1 <- readLn
            putStrLn "Digite outro número: "
            n2 <- readLn
            putStrLn ("A soma é: " ++ show (n1 + n2))
```