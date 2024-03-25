function centroides = generarCentroides (matriz,numCentroides,numCol)
    numCol = size(matriz, 2);
    centroides= zeros(numCentroides, numCol);
    for i=1:numCentroides
        for j=1:numCol
            minimo_valor=min(matriz(:, j));
            rango = max(matriz(:, j)) - minimo_valor;
            valor_aleatorio = minimo_valor + rango * rand;
            centroides(i, j) = valor_aleatorio;
        end
    end    
end