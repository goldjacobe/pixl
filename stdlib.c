#include <stdio.h>
#include <string.h>
#define STB_IMAGE_IMPLEMENTATION
#define STBI_ASSERT(x)
#include "stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"

unsigned long* read_img(char* filename) {
    int w, h;
    unsigned char *data = stbi_load(filename, &w, &h, NULL, 4);
    size_t matrix_size = sizeof(long) * (2 + w * h * 4);
    unsigned long *img = malloc(matrix_size); //rip ram
    *img = (unsigned long)h;
    *(img + 1) = (unsigned long)w;
    unsigned long *data_start = img + 2;
    for (int i = 0; i < h * w * 4; i++) {
        *(data_start + i) = (unsigned long)(*(data + i));
    }
    stbi_image_free(data);
    return img;
}

int write_img(unsigned long* img, char* filename, char* extension) {
    int h = (int)(*img);
    int w = (int)(*(img + 1));
    unsigned long *data_start = img + 2;
    unsigned char *data = malloc(sizeof(char) * 4 * w * h); //gonna free this time!
    for (int i = 0; i < h * w * 4; i++) {
        unsigned long val = *(data_start + i);
        if ((long)val < 0l)
            val = 0ul;
        if (val > 255ul)
            val = 255ul;
        *(data + i) = (unsigned char)val;
    }
    int out;
    char* name = malloc(strlen(filename) + 5);
    strcpy(name, filename);
    strcat(name, ".");
    strcat(name, extension);
    if (!strcmp(extension, "png")) {
        out = stbi_write_png(name, w, h, 4, data, 0);
    } else if (!strcmp(extension, "bmp")) {
        out = stbi_write_bmp(name, w, h, 4, data);
    } else if (!strcmp(extension, "tga")) {
        out = stbi_write_tga(name, w, h, 4, data);
    } else if (!strcmp(extension, "jpg")) {
        out = stbi_write_jpg(name, w, h, 4, data, 100);
    } else {
        printf("hi\n");
        return 1;
    }
    printf("%d\n", out);
    free(name);
    free(data);
    if (out) {
        return 0;
    }
    return 1;
}
