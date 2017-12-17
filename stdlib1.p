pixel matrix flip_horizontal(pixel matrix pm) {
    int height;
    int width;
    int i;
    pixel matrix pm2;
    height = pm.rows;
    width = pm.cols;

    pm2 = pm;


    for (i = 0; i < height; i++)
    {
        for (j = 0; j < width; j++)
        {
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


    for (i = 0; i < width; i++)
    {
        for (j = 0; j < height; j++)
        {
            pm2[j][i] = pm[height-1-j][i];
        }
    }

    return pm2;
}

pixel matrix crop(pixel matrix pm, int r1, int r2, int c1, int c2) {
    int i;
    int j;
    // do you have to assign pm2
    pixel[r2-r1, c2-c1] pm2;
    for (i = r1; i < r2; i++)
    {
        for (j = c1; j < c2; j++)
        {
            pm2[i-r1][j-c1] = pm1[i][j];    
        } 
    }

    return pm2;
}