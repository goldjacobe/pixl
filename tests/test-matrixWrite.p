int main() {
    pixel matrix m;
    int i;

    m = read("test.jpg");
    i = write(m, "out", "png");

    print(i);
}
