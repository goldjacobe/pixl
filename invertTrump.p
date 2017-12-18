int main() {
    pixel matrix inputMatrix;
    pixel matrix outputMatrix;
    inputMatrix = read("trump.jpg");

    outputMatrix = invert(inputMatrix);
    write(outputMatrix,"enhancedTrump","jpg");
}