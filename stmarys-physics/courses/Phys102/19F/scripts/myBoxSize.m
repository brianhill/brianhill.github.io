% given l, w, and h find the volume and area of box
%

function theSize = myBoxSize(l, w, h)
    V = l*w*h;
    A = 2*l*w + 2*w*h + 2*l*h;
    theSize = [A, V];
end

