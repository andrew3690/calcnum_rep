function [retval, iter] = gauss_seidel_func (x, A, b, gamma, stop_error, max_iter)
  % Parâmetros de entrada para o método de Gauss-Seidel para solução do sistema Ax = b.
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

  while iter <= max_iter
    for i = 1:n
      x(i) = (b(i) - A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/A(i,i);
    endfor
    if norm(x-x0,'inf') < stop_error || get_residuos(x,A,b) < stop_error
      return
    endif

    x0 =x;
    iter += 1;
  endwhile
endfunction
