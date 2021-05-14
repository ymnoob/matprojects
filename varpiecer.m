function output= varpiecer( location )
    
    %value extraction
    con=str2sym(extractBetween(location,'{',';'));
    v=str2sym(extractBetween(location,';','}'));
    
    %size
    
    k=size(con,1);
    
    %sizewise execution
    
    syms t
    if k==3
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3));        
    elseif k==4
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4));
    elseif k==5
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5));
    
    elseif k==6
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5),con(6),v(6));
        
    elseif k==7
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5),con(6),v(6),con(7),v(7));    
    elseif k==8
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5),con(6),v(6),con(8),v(8));
    elseif k==9
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5),con(6),v(6),con(8),v(8),con(9),v(9));
    elseif k==10
        f(t)=piecewise(con(1),v(1),con(2),v(2),con(3),v(3),con(4),v(4),con(5),v(5),con(6),v(6),con(8),v(8),con(9),v(9),con(10),v(10));
    else 
        error("Number of condtions are not sufficient");
    end
    
    output=f(t);

end