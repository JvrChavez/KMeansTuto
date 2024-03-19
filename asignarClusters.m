%Funcion para asignar cluster
function asignacionClusters = asignarClusters(datos, centroides)
    num_puntos = size(datos, 1);
    num_clusters = size(centroides, 1);
    num_atributos = size(centroides, 2);
    
    % Inicializar matriz de asignación de puntos a clusters
    asignacionClusters = zeros(num_puntos, 1);
    
    % Calculamos distancias
    distancias = zeros(num_puntos, num_clusters);
    for i = 1:num_clusters
        for j = 1:num_puntos
            for o = 1:num_atributos
                distancias(j, i) = distancias(j, i) + ((datos(j, o) - centroides(i, o)).^2);
            end
	    end
    end
    
    % Asignar cada punto al cluster más cercano
    [~, asignacionClusters] = min(distancias, [], 2);
end