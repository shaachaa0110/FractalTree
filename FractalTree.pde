private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .5;  
public void setup() 
{   
	size(800,800);    
	noLoop(); 
} 
public void draw() 
{   
	background(171, 209, 222);   
	stroke(195, 171, 222);
	strokeWeight(10);   
	line(400,800,400,700);
	drawBranches(400, 700, 100, 3*Math.PI/2, 5);
} 
public void drawBranches(int x,int y, double branchLength, double angle, int strokeWeight) 
{   
	strokeWeight(strokeWeight);
	double angle1 = angle - branchAngle;
	double angle2 = angle;
	double angle3 = angle + branchAngle;
	branchLength*=fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3) + x);
	int endY3 = (int)(branchLength*Math.sin(angle3) + y);
	line(x, y, endX1, endY1);
	line(x, y, endX2, endY2);
	line(x, y, endX3, endY3);
	if(strokeWeight > 0){
		strokeWeight--;
	}
	if(branchLength > smallestBranch){
		drawBranches(endX1, endY1, branchLength, angle1, strokeWeight);
		drawBranches(endX2, endY2, branchLength, angle2, strokeWeight);
		drawBranches(endX3, endY3, branchLength, angle3, strokeWeight);
	}
} 
