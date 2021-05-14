function Out= convo(fun1,fun2)

syms x t;
Out=int(fun1(x)*fun2(t-x),x,-inf,inf);

end