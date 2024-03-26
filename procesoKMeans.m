%Funcion que manda a llamar a las demas funciones :matriz, numCentroides
function [clusters,C]= procesoKMeans(datos,numCent,max_iter,CReal,centroidesReal)

    %Se manda a llamar la normalizacion de los datos
    norm=normalizar(datos);

    %Mandamos a llamar la funcion generarCentroides: matriz, numCent
    centroides=generarCentroides(norm,numCent);

    move=true; %Flag para saber si cambiaron de lugar los centroides
    newcentroides=[]; %Declaramos la matriz vacia
    conteo=0;
    
    %max_iter es la clausula de escape para que no sea infinito por algun error
    while move && conteo < max_iter
        
        %Asi mandamos a llamar a la funcion asignarClusters:datos, centroides
        C=asignarClusters(norm, centroides);

        %Asi mandamos a llamar a la funcion actualizar_centroides:datos, asignacion_clusters
        newcentroides = actualizar_centroides(norm, C,numCent);

        %Corroboramos si se movieron los centroides
        move = any(centroides(:) ~= newcentroides(:));
        centroides=newcentroides;

        conteo++;
        disp(['Ciclo #', num2str(conteo)]);
    end

     if conteo == max_iter
        disp('Se alcanzó el número máximo de iteraciones.');
    else
        disp(['Numero de ciclos: ', num2str(conteo)]);
    end

    %Se declara a la variable de salida
    clusters=newcentroides;

    %por ultimo se grafica
    graficar(norm,C,CReal,clusters,centroidesReal);
end