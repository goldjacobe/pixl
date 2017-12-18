pixel matrix cropPixelMatrix(pixel matrix pm, int r1, int r2, int c1, int c2) {
    int i;
    int j;
    pixel p;
    pixel matrix pm2;

    pm2 = matrix(r2-r1, c2-c1, pixel);

    for (i = r1; i < r2; i=i+1)
    {
        for (j = c1; j < c2; j=j+1)
        {
            pm2[i-r1][j-c1] = pm[i][j];
        }
    }

    return pm2;
}

int matrix cropIntMatrix(int matrix m, int r1, int r2, int c1, int c2) {
    int i;
    int j;
    int a;
    int matrix m2;

    m2 = matrix(r2-r1, c2-c1, int);

    for (i = r1; i < r2; i=i+1)
    {
        for (j = c1; j < c2; j=j+1)
        {
            m2[i-r1][j-c1] = m[i][j];
        }
    }

    return m2;
}