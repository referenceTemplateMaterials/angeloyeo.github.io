function res = bcfcn(xa, xb)
% xa: 왼쪽 끝 Boundary Value
% xb: 오른쪽 끝 Boundary Value
%
global BoundaryCondition
res = [...
    xa(1) - BoundaryCondition(1)
    xb(1) - BoundaryCondition(2)];
end