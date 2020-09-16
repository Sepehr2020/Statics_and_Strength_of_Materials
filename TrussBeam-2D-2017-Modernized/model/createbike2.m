% bike with mixed truss and beam

global node;     
global element;  
global material; 
global section;  


% node information: Node No., Degree of Freedom (DOF), X coordinate, Y
% coordinate, constraint along x,  constraint along y, constraint on 
% rotation(1 means constrained; 0 is free), load on the node Fx, Fy, and Moment

node=...
[ 1   3   0.0    0.0   1  1   0    0    0      0
  2   3   6.0     0    0  0   0    0    0      0
  3   2  10.0    0.0   0  1   0    0    0      0
  4   2   7       3    0  0   0    -50    -100   150
  5   2   3       3    0  0   0    50    -100   50];

%element information: Element No., node1, node2, Element Type(1 is Truss,2
%is Beam), Material No., Cross-Section No.

element=...
[   1   1   2       1   1    1
    2   3   4       2   1    1
    3   2   4       2   1    1
    4   2   5       2   1    1
    5   1   5       1   1    1];

%Material information:Material No, Modulus of elasticity
material=[ 1   1];

%Cross-Section No, Cross-sectional area, Moment of Inertia, the Maximum
%distance from Neutral axis
section=...
[   1   1  1  1];
save('modelbike2.mat','node','element','material','section');
