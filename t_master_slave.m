function [Q, Q_bar] = t_master_slave(T, Clk)
    persistent state;
    if isempty(state)
        state = 0;
    end
    Q = state;
    if Clk == 1
        if T == 1
            Q_bar = ~state;
            state = Q_bar;
        else
            Q_bar = state;
        end
    else
        Q_bar = state;
    end
end