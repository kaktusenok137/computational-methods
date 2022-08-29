function [yy y0] = newton(x, y, xx)
% Вычисление интерполяционного полинома в форме Ньютона
% x – массив с абсциссами точек, через которые должен проходить интерполяционный полином
% y – массив ординат точек, через которые должен проходить интерполяционный полином
% xx – массив значений независимой переменной,
% для которых надо вычислить интерполяционный полином
% yy – вычисленные значения интерполяционного полинома
% определяем число точек
N = length(x);
% вычисляем разделенные разности
y0 = y;
for k = 1 : N-1
    for i = 1: N - k
        y0(i) = (y0(i+1) - y0(i)) / (x(i+k) - x(i));
    end
end
% вычисляем значения интерполяционного полинома в точках xx
% с использованием операции поэлементного умножения .*
% для получения сразу всех значений полинома yy
yy = y0(1) * ones(size(xx));
for k = 2 : N
    yy = y0(k) + (xx - x(k)) .* yy;
end