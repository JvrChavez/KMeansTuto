%Funcion para normalizar los datos
function norm=normalizar(matriz)
    norm=zeros(size(matriz));
    for i=1:size(matriz,2)
        min_val = min(matriz(:, i));
        max_val = max(matriz(:, i));
        norm(:, i) = (matriz(:, i) - min_val) / (max_val - min_val);
    end
end