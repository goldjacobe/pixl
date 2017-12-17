int main() {
        pixel[2,2] m;
        pixel a; 
        pixel b;
        int c;
        a = (1,2,3,4);
        b = (5,6,7,8);
        m = [a,b;a,b];
        b = m[1][1];
        c = b[3];  
        print(c); 
}
