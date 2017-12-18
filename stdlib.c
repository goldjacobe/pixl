#include <stdio.h>
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
