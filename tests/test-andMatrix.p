int main() {
	pixel matrix pm1;
	pixel matrix pm2;
	pixel matrix pm3;
    pixel p1;
    pixel p2;
    pixel p3;

    p1 = (10,10,10,10);
    p2 = (20,20,20,20);

    pm1 = [p1,p1,p1;p1,p2,p1;p1,p1,p1];
    pm2 = [p2,p2,p2;p2,p2,p2;p2,p2,p2];

    pm3 = pm1 && pm2;
    p3 = pm3[1][1];
    print(p3.R);
    p3 = pm3[0][0];
    print(p3.R);
}