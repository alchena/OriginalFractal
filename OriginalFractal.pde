public void setup(){
	size(500,500);
}
public void draw(){
	fractal(250, 250, 500);
	fill(160,90);
}

public void fractal(int x, int y, int len){
	rect(x,y,len,len);
	if(len > 10){
		fractal(x + len/2, y + len/2, len/2);
		fractal(x + len/2, y - len/2, len/2);
		fractal(x - len/2, y - len/2, len/2);
		fractal(x - len/2, y + len/2, len/2);
	}
}
