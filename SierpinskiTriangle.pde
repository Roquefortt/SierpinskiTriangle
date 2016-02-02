public int n = 100;
public void setup()
{
	background(200);
	size(500, 500);
	strokeWeight(0.5);
	stroke(255);
}
public void draw()
{
	sierpinski(0, 500, 500);	
}
public void mouseDragged()//optional
{
	n = n - 10;
	if(n == 0)
	{
		n = 100;
	}	
}
public void sierpinski(int x, int y, int len) 
{
	if(len >= n)    
	{	
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	} 
	else 
	{	
		fill((int)(Math.random()*50)+146, (int)(Math.random()*50)+146, (int)(Math.random()*50)+146);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
}
