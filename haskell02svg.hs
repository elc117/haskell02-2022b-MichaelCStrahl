import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String
svgCircle x y r style =
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll =
  svgBegin 500 500
    ++ (svgCircle 60 60 50 "rgb(10, 145, 32, 0.4)")
    ++ (svgCircle 70 130 50 "rgb(132, 132, 132, 0.3)")
    ++ (svgCircle 230 230 50 "rgb(212, 0, 0, 0.7)")
    ++ (svgCircle 30 30 50 "rgb(9, 255, 0, 0.5)")
    ++ (svgCircle 350 90 50 "rgb(255, 162, 0, 0.7)")
    ++ svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll