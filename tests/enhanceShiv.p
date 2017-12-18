int main() {
    int amt;    
    pixel matrix inputMatrix;
    pixel matrix outputMatrix;

    amt = 0;
    inputMatrix = read("shiv.png");
    
    for (amt=0;amt<10;amt=amt++) {
        outputMatrix = enhanceRedMatrix(inputMatrix, amt*10);
        write(outputMatrix,"enhancedShiv","png");
    }
}