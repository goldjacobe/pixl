int main() {
    int amt;    
    pixel matrix inputMatrix;
    pixel matrix outputMatrix;

    amt = -80;

    for (amt=0;amt<10;amt+=10) {
        
    }
    inputMatrix = read("trump.jpg");
    outputMatrix = enhanceRedMatrix(inputMatrix, amt);
    outputMatrix = enhanceGreenMatrix(outputMatrix, amt);
    outputMatrix = enhanceBlueMatrix(outputMatrix, amt);
    write(outputMatrix,"trumpEnhanced","jpg");
}