int main() {
    pixel matrix m;
    pixel matrix n;
    pixel p;

    m = read("test.png");
    n = read("test.jpg");
    
    p = m[0][0];
    print(p.R);
    p = n[0][0];
    print(p.R);
}
