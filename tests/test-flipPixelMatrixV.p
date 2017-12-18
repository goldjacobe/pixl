int main() {
	pixel matrix pm;
	pixel matrix pm2;
	pixel p1;
	pixel p2;
	pixel p3;

	p1 = (0,0,0,0);
	p2 = (255,255,255,255);


	pm = [p1,p1;p2,p2];
    pm2 = |pm;

    print(pm2[0][0]);
}