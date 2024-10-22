
function Q = Dmasterslave(clk,D)
persistent state;
if isempty(state)
    state = 0;
end

if (clk == 1)
    state = Dflipflop(clk,D);
    state = Dflipflop(clk,state);   
end

Q = state;
end