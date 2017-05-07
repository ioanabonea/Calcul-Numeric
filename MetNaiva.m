function polNaiva = MetNaiva(f,a, b, n, x)

    polNaiva = [num2str(0)];
    for i = 1:n+1
        polNaiva = [polNaiva '+' num2str(x(i)) '*x^' num2str(i-1)];
    end

    polNaiva = inline(polNaiva,'x');
end