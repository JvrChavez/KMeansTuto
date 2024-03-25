%Funcion que manda a llamar a las demas funciones :matriz, numCentroides
function [clusters,asignacion]= procesoKMeans(datos,numCent)

    %Mandamos a llamar la funcion generarCentroides: matriz, numCent
    centroides=generarCentroides(datos,numCent);

    move=true; %Flag para saber si cambiaron de lugar los centroides
    newcentroides=[]; %Declaramos la matriz vacia
    conteo=0;
    while move
        
        %Asi mandamos a llamar a la funcion asignarClusters:datos, centroides
        C=asignarClusters(datos, centroides);

        %Asi mandamos a llamar a la funcion actualizar_centroides:datos, asignacion_clusters
        newcentroides = actualizar_centroides(datos, C,numCent);

        %Corroboramos si se movieron los centroides
        move = any(centroides(:) ~= newcentroides(:));
        centroides=newcentroides;

        conteo++;
    end
    disp(['Numero de ciclos: ', num2str(conteo)]);
    clusters=newcentroides;
    asignacion=C;
end