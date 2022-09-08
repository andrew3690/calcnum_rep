function retval = bipart (a, b,maxerror,f)
  # f(a) * f(b) < 0
  while(b -a > maxerror)
    x = (a+b)/2;

    if(abs(f(x)) < maxerror)
      break;
    endif

    if f(a) * f(x) <= 0
      printf("deu boa,tem raiz entre %f e %f\n",a,x)
      b = x;
    else
      printf("deu ruim, não tem raiz entre %f, %f\n",a,x)
      a = x;
    end
  printf("a = %f,b = %f",a,b);
endwhile

    retval = x;
endfunction
