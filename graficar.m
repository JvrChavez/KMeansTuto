%Funcion para graficar la comparaciones real y calculada.
function graficar(norm,C,CReal,centroides,centroidesReal)

    tipoLinea='.';
    grosor=20;

    %Se mapean las clases
    map1R=(CReal==1);
    map1C=(C==1);
    map2R=(CReal==2);
    map2C=(C==2);
    map3R=(CReal==3);
    map3C=(C==3);
    %Se filtran los valores por clases
    clase1R=norm(map1R,:);
    clase1C=norm(map1C,:);
    clase2R=norm(map2R,:);
    clase2C=norm(map2C,:);
    clase3R=norm(map3R,:);
    clase3C=norm(map3C,:);
    
    disp("Reales");
    disp(centroidesReal);
    disp("Calculados");
    disp(centroides);
    
    
    %Clases reales
    figure(1)
    clf%limpia la figura antes de usarla
    hold on
    plot(clase1R(:,1),clase1R(:,2), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
    plot(clase2R(:,1),clase2R(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
    plot(clase3R(:,1),clase3R(:,2), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
    plot(centroidesReal(:,1),centroidesReal(:,2), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);
    hold off
    figure(2)
    clf%limpia la figura antes de usarla
    hold on
    plot(clase1R(:,3),clase1R(:,4), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
    plot(clase2R(:,3),clase2R(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
    plot(clase3R(:,3),clase3R(:,4), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
    plot(centroidesReal(:,3),centroidesReal(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);
    hold off

    %Clases calculadas
    figure(3)
    clf%limpia la figura antes de usarla
    hold on
    plot(clase1C(:,1),clase1C(:,2), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
    plot(clase2C(:,1),clase2C(:,2), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
    plot(clase3C(:,1),clase3C(:,2), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
    plot(centroides(:,1),centroides(:,2), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);
    hold off
    figure(4)
    clf%limpia la figura antes de usarla
    hold on
    plot(clase1C(:,3),clase1C(:,4), tipoLinea, 'color', 'blue', 'MarkerFaceColor', 'blue', 'MarkerSize', grosor);
    plot(clase2C(:,3),clase2C(:,4), tipoLinea, 'color', 'red', 'MarkerFaceColor', 'red', 'MarkerSize', grosor);
    plot(clase3C(:,3),clase3C(:,4), tipoLinea, 'color', 'magenta', 'MarkerFaceColor', 'magenta', 'MarkerSize', grosor);
    plot(centroides(:,3),centroides(:,4), tipoLinea, 'color', 'green', 'MarkerFaceColor', 'green', 'MarkerSize', grosor);
    hold off
end