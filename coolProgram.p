int main() {
    int i;
    int j;
    pixel matrix cropped;
    pixel matrix flipped;

    pixel matrix img; 
    img = read("penguin.jpg");
    for (i = 0; i < 32; i=i+5) {
        for (j = 0; j < 32; j=j+5) {
    	    cropped = img<<i:i+244,j:j+244>>;
            write(cropped, "img" + str_of_int(i) + "_" + str_of_int(j), "jpg");
            flipped = ~cropped;
            write(flipped, "img" + str_of_int(i) + "_" + str_of_int(j) + "f", "jpg");
        }
    }
    return 0;
}
