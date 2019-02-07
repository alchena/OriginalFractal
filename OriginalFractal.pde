public void setup(){
	size(500, 500);
	fractal(0, 500, 500);
}
public void draw(){
}

public void fractal(int x, int y, int len){
	if(len <= 10){
		rect(x, y, len, len);
	} else {
		fractal(x + (len/2), y, len/2);
		fractal(x + (len/2), y - (len/2), len/2);
		fractal(x, y - (len/2), len/2);
		fractal(x, y, len/2);
	}
}