# creative-coding_homework
size(640, 360);
noStroke();
background(60, 0, 0);

color inside = color(105, 55, 0);
color middle = color(126, 100, 0);
color outside = color(180, 150, 0);

pushMatrix();
translate(80, 80);
fill(outside);
rect(0, 0, 100, 200);
fill(middle);
rect(40, 60, 120, 120);
fill(inside);
rect(60, 90, 80, 80);
popMatrix();

pushMatrix();
translate(360, 80);
fill(inside);
rect(100, 0, 100, 200);
fill(outside);
rect(40, 60, 120, 120);
fill(middle);
rect(60, 90, 80, 80);
popMatrix();
