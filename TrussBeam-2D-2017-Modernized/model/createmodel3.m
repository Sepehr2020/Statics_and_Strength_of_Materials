
global node;     
global element;  
global material; 
global section;  


%%%%node information:No,DOF, coordinate of node_X,Y, constraint
%%%%information_X,Y,Angle(1 is constraint, 0 is free),force on node
%%%%Fx,_Fy,_Moment
node=...
[ 1   3  0.0  0.0  1  1   1    0       0       0
  2   3  2.0  0.0  0  0   0    0      2000        -1000];

%element information:No,node1,node2,Element Type(1 is Truss,2 is Beam),
%Material No, Cross-Section No
element=...
[   1   1   2    2   1    1    ];

%Material information:Material No, Modulus of elasticity
material=[ 1   2e11];

%Cross-Section No, Cross-sectional area, Moment of Inertia, the Maximum
%distance from Neutral axis
section=...
[   1   0.01  1e-6  0.01  ];
save('model3.mat','node','element','material','section');
