pixel matrix flip_horizontal(pixel matrix pm) {
    int height;
    int width;
    int i;
    pixel matrix pm2;
    height = pm.rows;
    width = pm.cols;

    pm2 = pm;


    for (i = 0; i < height; i=i+1) {
        for (j = 0; j < width; j=j+1) {
            pm2[i][j] = pm[i][width-1-j];
        }
    }
    return pm2;
}

pixel matrix flip_vertical(pixel matrix pm) {
    int height;
    int width;
    int i;
    pixel matrix pm2;
    height = pm.rows;
    width = pm.cols;

    pm2 = pm;


    for (i = 0; i < width; i=i+1) {
        for (j = 0; j < height; j=j+1) {
            pm2[j][i] = pm[height-1-j][i];
        }
    }
    return pm2;
}

pixel matrix crop(pixel matrix pm, int r1, int r2, int c1, int c2) {
    int i;
    int j;
    pixel p;
    pixel matrix pm2;

    pm2 = matrix(r2-r1, c2-c1, p);

    for (i = r1; i < r2; i=i+1) {
        for (j = c1; j < c2; j=j+1) {
            pm2[i-r1][j-c1] = pm[i][j];
        }
    }
    return pm2;
}

pixel matrix changeRed(pixel matrix pm, int change) {
    int i;
    int j;
    pixel pR;
    pixel matrix pm2;

    pm2 = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            pR = pm[i][j];
            pR.R = pR.R + change;
            pm2[i][j] = pR;
        }
    }
    return pm2;
}

pixel matrix changeGreen(pixel matrix pm, int change) {
    int i;
    int j;
    pixel pG;
    pixel matrix pm2;

    pm2 = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            pG = pm[i][j];
            pG.G = pG.G + change;
            pm2[i][j] = pG;
        }
    }
    return pm2;
}

pixel matrix changeBlue(pixel matrix pm, int change) {
    int i;
    int j;
    pixel pB;
    pixel matrix pm2;

    pm2 = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            pB = pm[i][j];
            pB.B = pB.B + change;
            pm2[i][j] = pB;
        }
    }
    return pm2;
}

pixel matrix changeAlpha(pixel matrix pm, int change) {
    int i;
    int j;
    pixel pA;
    pixel matrix pm2;

    pm2 = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            pA = pm[i][j];
            pA.A = pA.A + change;
            pm2[i][j] = pA;
        }
    }
    return pm2;
}

pixel matrix grayscale(pixel matrix pm) {
    int i;
    int j;
    int average;
    pixel p;
    pixel matrix pmGray;

    pmGray = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            p = pm[i][j];
            average = (p.R + p.G + p.B)/3;
            pmGray[i][j] = (average, average, average, p.A);
        }
    }
    return pmGray;
}

bool pixelEquality(pixel p1, pixel p2) {
    if ((p1.R == p2.R) && (p1.G == p2.G) && (p1.B == p2.B) && (p1.A == p2.A)){
        return true;
    }
    else {
        return false;
    }
}

pixel matrix subtraction(pixel matrix pm1, pixel matrix pm2) {
    int i;
    int j;

    pixel matrix pm3;

    pm3 = pm1;

    for (i = 0; i < pm1.rows; i=i+1) {
        for (j = 0; j < pm1.cols; j=j+1) {
            if (pixelEquality(pm1[i][j], pm2[i][j])) {
                pm3[i][j] = pm1[i][j];
            }
            else {
                pm3 = (255,255,255,255);
            }
        }
    }
    return pm3;
}

pixel matrix normalize(pixel matrix pm) {
    int i;
    int j;
    pixel p;
    pixel matrix pm2;
    pm2 = pm;

    for (i = 0; i < pm.rows; i=i+1) {
        for (j = 0; j < pm.cols; j=j+1) {
            p = pm[i][j];
            if (p.R > 255) {
                p.R = 255;
            }
            else if (p.R < 0) {
                p.R = 0;
            }

            if (p.G > 255) {
                p.G = 255;
            }
            else if (p.G < 0) {
                p.G = 0;
            }

            if (p.B > 255) {
                p.B = 255;
            }
            else if (p.B < 0) {
                p.B = 0;
            }

            if (p.A > 255) {
                p.A = 255;
            }
            else if (p.A < 0) {
                p.A = 0;
            }
            pm2[i][j] = p;
        }
    }
    return pm2;
}