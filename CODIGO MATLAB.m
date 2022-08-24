syms y(t) P K c
eqn = diff(y,t) == (c/P)*y*(P-y);
cond = y(0) == K;
ySol(t) = dsolve(eqn,cond)
K=50;
P=300000;
c=0.85;
fplot(subs(ySol(t)),[0,25]);
grid on
round(subs(ySol(t)))
round(subs(ySol(12)))
