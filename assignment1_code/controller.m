function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

%u=0;
%z_a = u/params.mass - params.gravity;
e = s_des - s ;
kp = 135;
kv = 20;
u = (params.mass)*(1+kp*e(1)+kv*e(2)+params.gravity);
u = min(u, params.u_max);



% FILL IN YOUR CODE HERE


end

