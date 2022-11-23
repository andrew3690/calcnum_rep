function [retval, iter] = jacobi_func (x, A, b, gamma, stop_error, max_iter);
  % Parâmetros de entrada para o método de Jacobi para solução do sistema Ax = b.
  % gamma: o fator de sobre (ou sub) relaxação a ser utilizado.
  % stop_error: valor para o maior erro aceitável
  % max_iter: número máximo de iterações.
  % retval: o valor da solução aproximada após as iterações
  % iter: número de iterações do método.

  # Variáveis do programa
  # n obtém a quantidade de linhas da matriz A
  n = size(A,1);
  # Valor incial do vetor utilizado
  x0 = x;
  #Iteração inicial inciada em 1
  iter = 1;

  # iterações do método de jacobi, enquanto as interações estão dentro do limite aceitável.....
  while iter <= max_iter
    # ...realiza-se o loop para obter todas as linhas de A...
    for i = 1:n
      # ...passo de iteração sendo realizado...
      x(i) = (b(i) - A(i,[1:i-1.i+1:n]) *x0([1:i-1,i+1:n]))/A(i,i);
    endfor
    # ...condições de parada....
      # ....via resíduos, verifica se o resíduo calculado é menor que o erro de parada aceitável...
      if get_residuos(x,A,b) < stop_error
        return;
      endif

    #nova iteração
    x0 = x;
    iter += 1;
  endwhile
endfunction
