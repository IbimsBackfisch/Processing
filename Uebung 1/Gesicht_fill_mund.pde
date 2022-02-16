

fill(0);
ellipse(50, 50, 70, 70);


fill(255);
ellipse(60, 40, 20, 20);
ellipse(40, 40, 20, 20);

fill(0);
ellipse(60, 40, 5, 5);
ellipse(40, 40, 5, 5);


noStroke();
fill(255);
//rectMode(CORNERS);
rect(35, 60, 30, 12);

arc(36, 66, 12, 12, radians(90), radians(270));
ellipse(66, 66, 12, 12);
noStroke();


fill(0);
stroke(0);
strokeWeight(1);
beginShape();
vertex(25, 66);
vertex(77, 66);
endShape(CLOSE);

beginShape();
vertex(40, 50);
vertex(40, 80);
endShape(CLOSE);

beginShape();
vertex(60, 50);
vertex(60, 80);
endShape(CLOSE);

beginShape();
vertex(50, 50);
vertex(50, 80);
endShape(CLOSE);
