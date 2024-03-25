%funcion para actualizar los centroides
function nuevos_centroides = actualizar_centroides(datos, asignacion_clusters,num_clusters)
    [num_puntos, num_atributos] = size(datos);
    nuevos_centroides = zeros(num_clusters, num_atributos);

    for i = 1:num_clusters
        % Mapeamos los puntos asignados al cluster I
	puntos_en_cluster = asignacion_clusters == i;
	puntos_mapeados = datos(puntos_en_cluster,:);

        for j=1:num_atributos
	    %Calculamos la posicion conforme al promedio de sus puntos
	    nuevos_centroides(i,j) = mean(datos(puntos_en_cluster, j), 1);
	end
    end
end