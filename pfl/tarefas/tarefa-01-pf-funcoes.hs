-------------------------------------------------------
-- Aula 3 - FUNÇÕES - Exercicios Laboratorio Haskell --
-------------------------------------------------------

-- 1. Implemente uma função fatorial e teste a sua avaliação
-- Q: o que ocorre durante uma avaliação quando a sua função fatorial não considera 
--    todos os padrões de parâmetros possíveis (certos parâmetros que não podem ser
--    casados com nenhuma definição)?

-------------------------------------------------------------------
-- 2. Implemente duas funções raiz1 e raiz2 que calculam as duas raízes de uma 
--    equação de segundo grau. A raiz quadrada é implementada na função
--    sqrt, e a exponenciação no operador ^.
--    
--    Cálculo do Delta: https://brasilescola.uol.com.br/matematica/equacao-2-grau.htm
--    Exemplo: a = 1, b = -2 e c = -3
--             raiz1 = 3 w raiz2 = -1
--
-- a = 1, b = 2 e c = 1
-- r1 = -1, r2 = -1
-- a = -1, b = 1 e c = 1
-- r1 = -0.6180339887498949	r2 = 1.618033988749895
-- a = 1, b = 1 e c = 1
--
-- A raiz sempre existe? Caso não exista, experimente retornar `undefined`. 


-- Q: Qual o valor é retornado nas chamadas abaixo de foo (slides da aula) utilizando guardas?

foo (-3)
foo 0
foo 1
foo 36
foo 38

-- 3. Aproveitando a implementação do cálculo das raízes anterior (2),
--    e usando guardas ou if-then-else:
--    
--    (a) Implemente uma função a função maiorRaiz que retorna a maior 
--        raiz de uma equação de segundo grau e
--    (b) O cálculo das raízes retorne undefined caso uma raiz não exista.


-- 4. Implemente uma função maiorTres que recebe três parâmetros e retorna o maior
--    entre eles.

