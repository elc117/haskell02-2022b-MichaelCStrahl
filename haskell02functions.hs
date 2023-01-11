-- Verifica se a temperatura é > 37,8
fever :: Float -> Bool
fever x = x > 37.8

hasFever :: [Float] -> [Float]
hasFever list = filter fever list

-- Verifica se a temperatura é > 37,8 utilizando a função lambda
hasFeverLambda :: [Float] -> [Float]
hasFeverLambda list = filter (\x -> x > 37.8) list

-- Adicionar tag <li> em string
itemize :: [String] -> [String]
itemize list = map (\l -> "<li>" ++ l ++ "</li>") list

-- Recebe um número e uma lista com raios de circulo, retorna somente os maiores que o número informado
bigCircles :: Float -> [Float] -> [Float]
bigCircles x y = filter (\r -> r ^ 2 * pi > x) y

-- Recebe tuplas com nomes e suas temperaturas, selecionando aquelas que têm febre
quarentine :: [(String, Float)] -> [(String, Float)]
quarentine people = filter (\(_, temp) -> temp > 37.8) people

-- Recebe uma lista com anos de nascimento e um ano de referência, retorna idades calculadas
agesIn :: [Int] -> Int -> [Int]
agesIn ages y = map (\ages -> y - ages) ages

-- Adicionar "Super " aos nomes recebidos de uma lista que iniciarem com o caractere 'A'
superNames :: [String] -> [String]
superNames names = map (\x -> if head x == 'A' then "Super " ++ x else x) names

-- Retornar string que seja menor que 5
onlyShorts :: [String] -> [String]
onlyShorts list = filter (\x -> length x < 5) list

main = do
  print ("Function hasFever: inputs [34, 37, 39, 37.9], result " ++ show (hasFever [34, 37, 39, 37.9]))
  print ("Function hasFeverLambda: inputs [34, 37, 39, 37.9], result " ++ show (hasFeverLambda [34, 37, 39, 37.9]))
  print ("Function itemize: inputs ['asd', 'qdjqd', 'wefw', 'teste'], result " ++ show (itemize ["asd", "qdjqd", "wefw", "teste"]))
  print ("Function bigCircles: inputs 13 [2, 3, 4, 1], result " ++ show (bigCircles 13 [2, 3, 4, 1]))
  print ("Function quarentine: inputs [('Michael', 38.5), ('Caetano', 37)], result " ++ show (quarentine [("Michael", 38.5), ("Caetano", 37)]))
  print ("Function agesIn: inputs [1996, 2005, 1998, 1987] 2023, result " ++ show (agesIn [1996, 2005, 1998, 1987] 2023))
  print ("Function superNames: inputs ['Michael', 'Abcd', 'abcd', 'Teste'], result " ++ show (superNames ["Michael", "Abcd", "abcd", "Teste"]))
  print ("Function onlyShorts: inputs ['teste', 'adasdasd', 'qijndqidnqi', 'qwe'], result " ++ show (onlyShorts ["teste", "adasdasd", "qijndqidnqi", "qwe"]))