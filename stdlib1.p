pixel matrix flip_horizontal(pixel matrix pm) {
    int height;
    int width;
    int i;
    pixel matrix pm2;


    height = pm.rows;
    width = pm.cols;


    for (i = 0; i < )

    
}

pixel flip_vertical(pixel matrix pm) {
    int row;
    int col;
    int i;
    int j;
    int height;
    int width;
	pixel matrix tmp;

    height = pm.cols;
    width = pm.rows;
	
	for(i = 0; i < height/2; row++) {
		for(j=0; j < width; col++) {
			tmp = pm[row, col];
			pm[row, col] = pm[height - row - 1, col];
			pm[height - row - 1, col] = tmp;
		}
	}
	return pm
}

pixel matrix crop(pixel matrix pm1, pixel matrix pm2, int r1, int r2, int c1, int c2) {
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