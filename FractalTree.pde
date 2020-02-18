private double fractionLength1 = .8; 
private int smallestBranch1 = 10; 
private double branchAngle1 = .5;
private double fractionLength2 = .8; 
private int smallestBranch2 = 10; 
private double branchAngle2 = .5;   
public void setup() 
{   
	size(800,800);    
	noLoop(); 
} 
public void draw() 
{   
	background(171, 209, 222);  
	//first tree 
	stroke(195, 171, 222);
	strokeWeight(10);   
	line(200,800,200,700);
	drawBranches(200, 700, 100, 3*Math.PI/2, 5);
	//second tree
	stroke(237, 197, 78);
	strokeWeight(10);
	line(400,800,400,700);
	drawBranches(400, 700, 50, 3*Math.PI/2, 5);
	//third tree
	stroke(240, 141, 105);
	strokeWeight(10);
	line(600,800,600,700);
	drawBranches(600, 700, 125, 3*Math.PI/2, 5);
} 
public void drawBranches(int x,int y, double branchLength, double angle, int strokeWeight) 
{   
	strokeWeight(strokeWeight);
	double angle1 = angle - branchAngle1;
	double angle2 = angle;
	double angle3 = angle + branchAngle1;
	branchLength*=fractionLength1;
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
	if(branchLength > smallestBranch1){
		drawBranches(endX1, endY1, branchLength, angle1, strokeWeight);
		drawBranches(endX2, endY2, branchLength, angle2, strokeWeight);
		drawBranches(endX3, endY3, branchLength, angle3, strokeWeight);
	}
} 
class Snow{
	private int myRad, myColor;
	public Snow(){
		myRad = 5;
		myColor = color(255, 255, 255);
	}
}