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

int matrix flipIntMatrixH(int matrix m) {
    int height;
    int width;
    int i;
    int j;
    int matrix m2;
    height = m.rows;
    width = m.cols;

    m2 = m;

    for (i = 0; i < height; i=i+1)
    {
        for (j = 0; j < width; j=j+1)
        {
            m2[i][j] = m[i][width-1-j];
        }
    }

    return m2;
}

pixel matrix flipPixelMatrixH(pixel matrix pm) {
    int height;
    int width;
    int i;
    int j;
    pixel matrix pm2;
    height = pm.rows;
    width = pm.cols;

    pm2 = pm;

    for (i = 0; i < height; i=i+1)
    {
        for (j = 0; j < width; j=j+1)
        {
            pm2[i][j] = pm[i][width-1-j];
        }
    }

    return pm2;
}

int matrix flipIntMatrixV(int matrix m) {
    int height;
    int width;
    int i;
    int j;
    int matrix m2;
    height = m.rows;
    width = m.cols;

    m2 = m;

    for (i = 0; i < width; i=i+1)
    {
        for (j = 0; j < height; j=j+1)
        {
            m2[j][i] = m[height-1-j][i];
        }
    }

    return m2;
}

pixel matrix flipPixelMatrixV(pixel matrix pm) {
    int height;
    int width;
    int i;
    int j;
    pixel matrix pm2;
    height = pm.rows;
    width = pm.cols;

    pm2 = pm;


    for (i = 0; i < width; i=i+1)
    {
        for (j = 0; j < height; j=j+1)
        {
            pm2[j][i] = pm[height-1-j][i];
        }
    }

    return pm2;
}

bool pixelEquality(pixel p1, pixel p2) {
    if ((p1.R == p2.R) && (p1.G == p2.G) && (p1.B == p2.B) && (p1.A == p2.A))
    {
        return true;
    }
    else
    {
        return false;
    }
}

pixel matrix matrixAnd(pixel matrix pm1, pixel matrix pm2) {
    int i;
    int j;

    pixel matrix pm3;

    pm3 = pm1;

    for (i = 0; i < pm1.rows; i=i+1)
    {
        for (j = 0; j < pm1.cols; j=j+1)
        {
            if (pixelEquality(pm1[i][j], pm2[i][j]))
            {
                pm3[i][j] = pm1[i][j];
            }

            else
            {
                pm3[i][j] = (255,255,255,255);
            }
        }
    }

    return pm3;
}

pixel addPixel(pixel p1, pixel p2) {
    pixel p3;
    p3 = (0,0,0,0);
    p3.R = p1.R + p2.R;
    p3.G = p1.G + p2.G;
    p3.B = p1.B + p2.B;
    
    if (p1.A > p2.A) {
        p3.A = p1.A;
    }
    else {
        p3.A = p2.A;
    }

    return p3;
}

pixel matrix grayscale(pixel matrix pm) {
    int i;
    int j;
    int average;
    pixel p;
    pixel matrix pmGray;

    pmGray = pm;

    for (i = 0; i < pm.rows; i=i+1)
    {
        for (j = 0; j < pm.cols; j=j+1)
        {
            p = pm[i][j];
            average = (p.R + p.G + p.B)/3;
            pmGray[i][j] = (average, average, average, p.A);
        }
    }

    return pmGray;
}


int abs(int x) {
    if (x > 0) {
        return x;
    }
    else {
        return -x;
    }
}

pixel subtractPixel(pixel p1, pixel p2) {
    pixel p3;
    p3 = (0,0,0,0);
    p3.R = abs(p1.R - p2.R);
    p3.G = abs(p1.G - p2.G);
    p3.B = abs(p1.B - p2.B);
    
    if (p1.A > p2.A) {
        p3.A = p1.A;
    }
    else {
        p3.A = p2.A;
    }

    return p3;
}

int matrix addIntMatrix(int matrix a, int matrix b) {
    int matrix m;
    int i;
    int j;
    m=a;
    for (i = 0; i < a.rows; i=i+1)
    {
        for (j = 0; j < a.cols; j=j+1)
        {
            m[i][j] = a[i][j] + b[i][j];
        }
    }

    return m;
}

int matrix subtractIntMatrix(int matrix a, int matrix b) {
    int matrix m;
    int i;
    int j;
    m=a;
    for (i = 0; i < a.rows; i=i+1)
    {
        for (j = 0; j < a.cols; j=j+1)
        {
            m[i][j] = a[i][j] - b[i][j];
        }
    }

    return m;
}