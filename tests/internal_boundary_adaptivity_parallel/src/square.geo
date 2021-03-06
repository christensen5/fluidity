dx=0.05;
Point  (1) = {0.,  0.,   0., dx};
Point  (2) = {0.5, 0.,   0., dx};
Point  (3) = {1.,  0.,   0., dx};
Point  (4) = {0.,  0.5,  0., dx};
Point  (5) = {0.5, 0.5,  0., dx};
Point  (6) = {1.,  0.5,  0., dx};
Point  (7) = {0.,  1.,   0., dx};
Point  (8) = {0.5, 1.,   0., dx};
Point  (9) = {1.,  1.,   0., dx};
Point (10) = {0.5, 0.25, 0., dx};
Point (11) = {0.5, 0.75, 0., dx};
Line  (1) = {1,2};
Line  (2) = {2,3};
Line  (3) = {4,5};
Line  (4) = {5,6};
Line  (5) = {7,8};
Line  (6) = {8,9};
Line  (7) = {1,4};
Line  (8) = {4,7};
Line  (9) = {3,6};
Line (10) = {6,9};
Line (11) = {2,10};
Line (12) = {10,5};
Line (13) = {5,11};
Line (14) = {11,8};
Physical Line (1) = {1,2}; // Bottom
Physical Line (2) = {5,6}; // Top
Physical Line (3) = {7}; // Bottom Left side
Physical Line (4) = {8}; // Top Left side
Physical Line (5) = {9}; // Bottom Right side
Physical Line (6) = {10}; // Top Right side
Physical Line (7) = {3,4}; // internal horizontal boundary
//Physical Line (8) = {11,12,13,14}; // partial internal vertical boundary
Physical Line (8) = {12,13}; // partial internal vertical boundary
// my suspicion is libmba2d doesn't seem to like dangling internal boundaries (ones that end in the interior)
// so just adding some extra, unused surface ids to avoid that
Physical Line (9) = {11,14}; // partial internal vertical boundary
Line Loop(15) = {7, 3, -12, -11, -1};
Plane Surface(16) = {15};
Line Loop(17) = {11, 12, 4, -9, -2};
Plane Surface(18) = {17};
Line Loop(19) = {4, 10, -6, -14, -13};
Plane Surface(20) = {19};
Line Loop(21) = {3, 13, 14, -5, -8};
Plane Surface(22) = {21};
Physical Surface(1) = {16, 18}; // Bottom region
Physical Surface(2) = {22, 20}; // Top region
