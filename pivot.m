## Author: 14736466774 <14736466774@LIICT322348>
## Created: 2022-10-06

function retval = pivot (A,i)
# quantidade de linhas da matrix
l = rows(A)
# pivo da diagonal principal da matrix
pivo =A(i,i);
# por default o valor máximo é reconhecido como o pivot
max = pivo;
# indice do maior elemento
max_idx = i;
# loop que percorre a matriz
for j = i+1:l
  # se o valor da diagonal principal for menor que um outro valor da coluna...
  if A(j,i) > max
      #...realiza-se a troca do pivo da coluna pelo valor máximo desta
      max = A(j,i);
      # novo indice de maior elemento
      max_idx = j;
  endif
endfor

# variável auxiliar para realizar a troca dos valores, obtendo a linha do valor de pivot maior
aux = A(max_idx, :);
# coluna de indice que contém o pivot antigo, realiza a troca com a matrix de pivot maior
A(max_idx, :) = A(i, :);
# Novo indice é obtido, indice da diagonal principal recebe o valor da coluna de pivot maior
A(i,:) = aux

endfunction
