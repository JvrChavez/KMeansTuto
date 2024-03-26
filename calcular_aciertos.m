%Funcion para calcular aciertos
function calcular_aciertos(claseReal,clasePredicha,numCent)
    %Acumulador de aciertos totales
    total_TP=0;
    % Calcularemos para cada clase específica
    for i=1:numCent
        j=0;
        if i == 1
            j = 2;
        elseif i == 2
            j = 1;
        elseif i == 3
            j = 3;
        end

        % Verdaderos positivos (TP)
        TP = sum(claseReal == i & clasePredicha == j);

        %Acumulando aciertos totales de todas las clases
        total_TP = total_TP + TP;

        % Falsos positivos (FP)
        FP = sum(claseReal ~= i & clasePredicha == j);

        % Verdaderos negativos (TN)
        TN = sum(claseReal ~= i & clasePredicha ~= j);

        % Falsos negativos (FN)
        FN = sum(claseReal == i & clasePredicha ~= j);

        % Calcular precisión, recall y F-score
        precision = TP / (TP + FP);
        recall = TP / (TP + FN);
        F_score = 2 * ((precision * recall) / (precision + recall));

        % Calcular porcentaje de aciertos totales
        total_clase=claseReal == i;
        total_aciertos = sum(claseReal == i & clasePredicha == j) / sum(claseReal == i) * 100;

        disp(['El resultado de la clase ', num2str(i)]);
        disp(['Porcentaje de aciertos: ', num2str(total_aciertos)]);
        disp(['Precision: ', num2str(precision)]);
        disp(['Recall: ', num2str(recall)]);
        disp(['F-Score: ', num2str(F_score)]);

    end
    % Calcular el porcentaje de aciertos totales de todas las clases
    total_aciertos = total_TP / numel(claseReal) * 100;
    disp(["Porcentaje de aciertos totales: ",num2str(total_aciertos)]);
end
