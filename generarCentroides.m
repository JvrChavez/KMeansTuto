function centroides = generarCentroides(matriz,numCentroides,numCol)
	centroides= zeros(numCentroides, numCol);
	for i=1:numCentroides
		for j=1:numCol
			rango = max(matriz(:, j)) - min(matriz(:, j));
			valor_aleatorio = min(matriz(:, j)) + rango * rand;
			centroides(i, j) = valor_aleatorio;
		end
	end    
end