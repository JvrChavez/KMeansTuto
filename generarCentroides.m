function centroides = generarCentroides (matriz,numCentroides,numCol)
    %Damos tamaño a la matriz
    numCol = size(matriz, 2);
    centroides= zeros(numCentroides, numCol);
    for i=1:numCentroides
        for j=1:numCol
            %Se genera el centroide de manera random dentro del rango de valores
            minimo_valor=min(matriz(:, j));
            rango = max(matriz(:, j)) - minimo_valor;
            valor_aleatorio = minimo_valor + rango * rand;
            centroides(i, j) = valor_aleatorio;
        end
    end    
end