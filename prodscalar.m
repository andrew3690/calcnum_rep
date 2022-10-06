## Copyright (C) 2022 14736466774
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} prodscalar (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: 14736466774 <14736466774@LIICT322348>
## Created: 2022-10-06

function retval = prodscalar (u,v)
n = length(u)
total = 0.0
  for i = 1:n
    total =+ u(i) * v(i);
  endfor
  retval = total;
endfunction
