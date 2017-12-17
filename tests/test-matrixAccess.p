int main() {
    pixel matrix m;
    pixel p;
    pixel a;
    p = (1,2,3,5);
    m = [p,p;p,p];
    m[0][0] = (20,20,20,20);
    a = m[0][1];
    print(a.B);
    
}
