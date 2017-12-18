int main() {
    pixel matrix img = read("original256.jpg");
    int i;
    int j;
    pixel matrix cropped;
    pixel matrix flipped;

    for (i = 0; i < 32; i++) {
        for (j = 0; j < 32; j++) {
            cropped = img<<i:i+244,j:j+244>>;
            write(cropped, "img" + i + "_" + j + ".jpg");
            flipped = #cropped;
            write(flipped, "img" + i + "" + j + ".jpg");
        }
    }
    return 0;
}