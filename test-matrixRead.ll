; ModuleID = 'Pixl'
source_filename = "Pixl"

@fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.8 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.16 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.18 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.22 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.24 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.26 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.28 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.30 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.31 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.34 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.35 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.36 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.37 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.38 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.39 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.40 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.42 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.43 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.44 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@fmt.46 = private unnamed_addr constant [4 x i8] c"%d\0A\00"
@fmt.47 = private unnamed_addr constant [4 x i8] c"%s\0A\00"
@strptr = private unnamed_addr constant [9 x i8] c"test.png\00"
@strptr.48 = private unnamed_addr constant [9 x i8] c"test.jpg\00"

declare i32 @printf(i8*, ...)

declare i64* @read_img(i8*, ...)

declare i64 @write_img(i64*, i8*, i8*, ...)

declare i8* @str_of_int(i64, ...)

declare i8* @str_con(i8*, i8*, ...)

define i64* @enhanceBlueMatrix(i64* %m, i64 %amount) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %i = alloca i64
  %j = alloca i64
  %p = alloca i64*
  %blue = alloca i64
  %pm = alloca i64*
  %m3 = load i64*, i64** %m1
  store i64* %m3, i64** %pm
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i54 = load i64, i64* %i
  %m55 = load i64*, i64** %m1
  %pixel756 = getelementptr i64, i64* %m55, i64 0
  %Access157 = load i64, i64* %pixel756
  %tmp58 = icmp slt i64 %i54, %Access157
  br i1 %tmp58, label %while_body, label %merge59

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %while_body5, %while_body
  %j48 = load i64, i64* %j
  %m49 = load i64*, i64** %m1
  %pixel7 = getelementptr i64, i64* %m49, i64 1
  %Access150 = load i64, i64* %pixel7
  %tmp51 = icmp slt i64 %j48, %Access150
  br i1 %tmp51, label %while_body5, label %merge

while_body5:                                      ; preds = %while4
  %pm6 = load i64*, i64** %pm
  %matrix7 = getelementptr i64, i64* %pm6, i64 1
  %Access2 = load i64, i64* %matrix7
  %i7 = load i64, i64* %i
  %j8 = load i64, i64* %j
  %left = mul i64 %Access2, %i7
  %left2 = add i64 %left, %j8
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm6, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix89 = getelementptr i64, i64* %pm6, i64 %add1
  %Access310 = load i64, i64* %matrix89
  %add2 = add i64 %right, 2
  %matrix811 = getelementptr i64, i64* %pm6, i64 %add2
  %Access312 = load i64, i64* %matrix811
  %add3 = add i64 %right, 3
  %matrix813 = getelementptr i64, i64* %pm6, i64 %add3
  %Access314 = load i64, i64* %matrix813
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access310, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access312, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access314, i64* %pixel6
  store i64* %pixel2, i64** %p
  %p15 = load i64*, i64** %p
  %pixelBlue = getelementptr i64, i64* %p15, i64 2
  %Access1 = load i64, i64* %pixelBlue
  store i64 %Access1, i64* %blue
  %blue16 = load i64, i64* %blue
  %amount17 = load i64, i64* %amount2
  %tmp = add i64 %blue16, %amount17
  store i64 %tmp, i64* %blue
  %p18 = load i64*, i64** %p
  %blue19 = load i64, i64* %blue
  %pixel320 = getelementptr i64, i64* %p18, i64 2
  store i64 %blue19, i64* %pixel320
  %pm21 = load i64*, i64** %pm
  %p22 = load i64*, i64** %p
  %matrix723 = getelementptr i64, i64* %pm21, i64 1
  %Access224 = load i64, i64* %matrix723
  %i25 = load i64, i64* %i
  %j26 = load i64, i64* %j
  %left27 = mul i64 %Access224, %i25
  %left228 = add i64 %left27, %j26
  %left329 = mul i64 %left228, 4
  %right30 = add i64 %left329, 2
  %matrix831 = getelementptr i64, i64* %p22, i64 0
  %Access332 = load i64, i64* %matrix831
  %matrix833 = getelementptr i64, i64* %p22, i64 1
  %Access334 = load i64, i64* %matrix833
  %matrix835 = getelementptr i64, i64* %p22, i64 2
  %Access336 = load i64, i64* %matrix835
  %matrix837 = getelementptr i64, i64* %p22, i64 3
  %Access338 = load i64, i64* %matrix837
  %pixel339 = getelementptr i64, i64* %pm21, i64 %right30
  store i64 %Access332, i64* %pixel339
  %add140 = add i64 %right30, 1
  %pixel441 = getelementptr i64, i64* %pm21, i64 %add140
  store i64 %Access334, i64* %pixel441
  %add242 = add i64 %right30, 2
  %pixel543 = getelementptr i64, i64* %pm21, i64 %add242
  store i64 %Access336, i64* %pixel543
  %add344 = add i64 %right30, 3
  %pixel645 = getelementptr i64, i64* %pm21, i64 %add344
  store i64 %Access338, i64* %pixel645
  %j46 = load i64, i64* %j
  %tmp47 = add i64 %j46, 1
  store i64 %tmp47, i64* %j
  br label %while4

merge:                                            ; preds = %while4
  %i52 = load i64, i64* %i
  %tmp53 = add i64 %i52, 1
  store i64 %tmp53, i64* %i
  br label %while

merge59:                                          ; preds = %while
  %pm60 = load i64*, i64** %pm
  ret i64* %pm60
}

define i64* @enhanceGreenMatrix(i64* %m, i64 %amount) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %i = alloca i64
  %j = alloca i64
  %p = alloca i64*
  %green = alloca i64
  %pm = alloca i64*
  %m3 = load i64*, i64** %m1
  store i64* %m3, i64** %pm
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i54 = load i64, i64* %i
  %m55 = load i64*, i64** %m1
  %pixel756 = getelementptr i64, i64* %m55, i64 0
  %Access157 = load i64, i64* %pixel756
  %tmp58 = icmp slt i64 %i54, %Access157
  br i1 %tmp58, label %while_body, label %merge59

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %while_body5, %while_body
  %j48 = load i64, i64* %j
  %m49 = load i64*, i64** %m1
  %pixel7 = getelementptr i64, i64* %m49, i64 1
  %Access150 = load i64, i64* %pixel7
  %tmp51 = icmp slt i64 %j48, %Access150
  br i1 %tmp51, label %while_body5, label %merge

while_body5:                                      ; preds = %while4
  %pm6 = load i64*, i64** %pm
  %matrix7 = getelementptr i64, i64* %pm6, i64 1
  %Access2 = load i64, i64* %matrix7
  %i7 = load i64, i64* %i
  %j8 = load i64, i64* %j
  %left = mul i64 %Access2, %i7
  %left2 = add i64 %left, %j8
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm6, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix89 = getelementptr i64, i64* %pm6, i64 %add1
  %Access310 = load i64, i64* %matrix89
  %add2 = add i64 %right, 2
  %matrix811 = getelementptr i64, i64* %pm6, i64 %add2
  %Access312 = load i64, i64* %matrix811
  %add3 = add i64 %right, 3
  %matrix813 = getelementptr i64, i64* %pm6, i64 %add3
  %Access314 = load i64, i64* %matrix813
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access310, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access312, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access314, i64* %pixel6
  store i64* %pixel2, i64** %p
  %p15 = load i64*, i64** %p
  %pixelGreen = getelementptr i64, i64* %p15, i64 1
  %Access1 = load i64, i64* %pixelGreen
  store i64 %Access1, i64* %green
  %green16 = load i64, i64* %green
  %amount17 = load i64, i64* %amount2
  %tmp = add i64 %green16, %amount17
  store i64 %tmp, i64* %green
  %p18 = load i64*, i64** %p
  %green19 = load i64, i64* %green
  %pixel320 = getelementptr i64, i64* %p18, i64 1
  store i64 %green19, i64* %pixel320
  %pm21 = load i64*, i64** %pm
  %p22 = load i64*, i64** %p
  %matrix723 = getelementptr i64, i64* %pm21, i64 1
  %Access224 = load i64, i64* %matrix723
  %i25 = load i64, i64* %i
  %j26 = load i64, i64* %j
  %left27 = mul i64 %Access224, %i25
  %left228 = add i64 %left27, %j26
  %left329 = mul i64 %left228, 4
  %right30 = add i64 %left329, 2
  %matrix831 = getelementptr i64, i64* %p22, i64 0
  %Access332 = load i64, i64* %matrix831
  %matrix833 = getelementptr i64, i64* %p22, i64 1
  %Access334 = load i64, i64* %matrix833
  %matrix835 = getelementptr i64, i64* %p22, i64 2
  %Access336 = load i64, i64* %matrix835
  %matrix837 = getelementptr i64, i64* %p22, i64 3
  %Access338 = load i64, i64* %matrix837
  %pixel339 = getelementptr i64, i64* %pm21, i64 %right30
  store i64 %Access332, i64* %pixel339
  %add140 = add i64 %right30, 1
  %pixel441 = getelementptr i64, i64* %pm21, i64 %add140
  store i64 %Access334, i64* %pixel441
  %add242 = add i64 %right30, 2
  %pixel543 = getelementptr i64, i64* %pm21, i64 %add242
  store i64 %Access336, i64* %pixel543
  %add344 = add i64 %right30, 3
  %pixel645 = getelementptr i64, i64* %pm21, i64 %add344
  store i64 %Access338, i64* %pixel645
  %j46 = load i64, i64* %j
  %tmp47 = add i64 %j46, 1
  store i64 %tmp47, i64* %j
  br label %while4

merge:                                            ; preds = %while4
  %i52 = load i64, i64* %i
  %tmp53 = add i64 %i52, 1
  store i64 %tmp53, i64* %i
  br label %while

merge59:                                          ; preds = %while
  %pm60 = load i64*, i64** %pm
  ret i64* %pm60
}

define i64* @enhanceRedMatrix(i64* %m, i64 %amount) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %i = alloca i64
  %j = alloca i64
  %p = alloca i64*
  %red = alloca i64
  %pm = alloca i64*
  %m3 = load i64*, i64** %m1
  store i64* %m3, i64** %pm
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i54 = load i64, i64* %i
  %m55 = load i64*, i64** %m1
  %pixel756 = getelementptr i64, i64* %m55, i64 0
  %Access157 = load i64, i64* %pixel756
  %tmp58 = icmp slt i64 %i54, %Access157
  br i1 %tmp58, label %while_body, label %merge59

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %while_body5, %while_body
  %j48 = load i64, i64* %j
  %m49 = load i64*, i64** %m1
  %pixel7 = getelementptr i64, i64* %m49, i64 1
  %Access150 = load i64, i64* %pixel7
  %tmp51 = icmp slt i64 %j48, %Access150
  br i1 %tmp51, label %while_body5, label %merge

while_body5:                                      ; preds = %while4
  %pm6 = load i64*, i64** %pm
  %matrix7 = getelementptr i64, i64* %pm6, i64 1
  %Access2 = load i64, i64* %matrix7
  %i7 = load i64, i64* %i
  %j8 = load i64, i64* %j
  %left = mul i64 %Access2, %i7
  %left2 = add i64 %left, %j8
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm6, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix89 = getelementptr i64, i64* %pm6, i64 %add1
  %Access310 = load i64, i64* %matrix89
  %add2 = add i64 %right, 2
  %matrix811 = getelementptr i64, i64* %pm6, i64 %add2
  %Access312 = load i64, i64* %matrix811
  %add3 = add i64 %right, 3
  %matrix813 = getelementptr i64, i64* %pm6, i64 %add3
  %Access314 = load i64, i64* %matrix813
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access310, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access312, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access314, i64* %pixel6
  store i64* %pixel2, i64** %p
  %p15 = load i64*, i64** %p
  %pixelRed = getelementptr i64, i64* %p15, i64 0
  %Access1 = load i64, i64* %pixelRed
  store i64 %Access1, i64* %red
  %red16 = load i64, i64* %red
  %amount17 = load i64, i64* %amount2
  %tmp = add i64 %red16, %amount17
  store i64 %tmp, i64* %red
  %p18 = load i64*, i64** %p
  %red19 = load i64, i64* %red
  %pixel320 = getelementptr i64, i64* %p18, i64 0
  store i64 %red19, i64* %pixel320
  %pm21 = load i64*, i64** %pm
  %p22 = load i64*, i64** %p
  %matrix723 = getelementptr i64, i64* %pm21, i64 1
  %Access224 = load i64, i64* %matrix723
  %i25 = load i64, i64* %i
  %j26 = load i64, i64* %j
  %left27 = mul i64 %Access224, %i25
  %left228 = add i64 %left27, %j26
  %left329 = mul i64 %left228, 4
  %right30 = add i64 %left329, 2
  %matrix831 = getelementptr i64, i64* %p22, i64 0
  %Access332 = load i64, i64* %matrix831
  %matrix833 = getelementptr i64, i64* %p22, i64 1
  %Access334 = load i64, i64* %matrix833
  %matrix835 = getelementptr i64, i64* %p22, i64 2
  %Access336 = load i64, i64* %matrix835
  %matrix837 = getelementptr i64, i64* %p22, i64 3
  %Access338 = load i64, i64* %matrix837
  %pixel339 = getelementptr i64, i64* %pm21, i64 %right30
  store i64 %Access332, i64* %pixel339
  %add140 = add i64 %right30, 1
  %pixel441 = getelementptr i64, i64* %pm21, i64 %add140
  store i64 %Access334, i64* %pixel441
  %add242 = add i64 %right30, 2
  %pixel543 = getelementptr i64, i64* %pm21, i64 %add242
  store i64 %Access336, i64* %pixel543
  %add344 = add i64 %right30, 3
  %pixel645 = getelementptr i64, i64* %pm21, i64 %add344
  store i64 %Access338, i64* %pixel645
  %j46 = load i64, i64* %j
  %tmp47 = add i64 %j46, 1
  store i64 %tmp47, i64* %j
  br label %while4

merge:                                            ; preds = %while4
  %i52 = load i64, i64* %i
  %tmp53 = add i64 %i52, 1
  store i64 %tmp53, i64* %i
  br label %while

merge59:                                          ; preds = %while
  %pm60 = load i64*, i64** %pm
  ret i64* %pm60
}

define i64* @enhanceBlue(i64* %p, i64 %amount) {
entry:
  %p1 = alloca i64*
  store i64* %p, i64** %p1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %currentBlue = alloca i64
  %newBlue = alloca i64
  %p3 = load i64*, i64** %p1
  %pixelBlue = getelementptr i64, i64* %p3, i64 2
  %Access1 = load i64, i64* %pixelBlue
  store i64 %Access1, i64* %currentBlue
  %currentBlue4 = load i64, i64* %currentBlue
  %amount5 = load i64, i64* %amount2
  %tmp = add i64 %currentBlue4, %amount5
  store i64 %tmp, i64* %newBlue
  %newBlue6 = load i64, i64* %newBlue
  %tmp7 = icmp sge i64 %newBlue6, 255
  br i1 %tmp7, label %then, label %else

merge:                                            ; preds = %else, %then
  %p8 = load i64*, i64** %p1
  %newBlue9 = load i64, i64* %newBlue
  %pixel3 = getelementptr i64, i64* %p8, i64 2
  store i64 %newBlue9, i64* %pixel3
  %p10 = load i64*, i64** %p1
  ret i64* %p10

then:                                             ; preds = %entry
  store i64 255, i64* %newBlue
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i64* @enhanceGreen(i64* %p, i64 %amount) {
entry:
  %p1 = alloca i64*
  store i64* %p, i64** %p1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %currentGreen = alloca i64
  %newGreen = alloca i64
  %p3 = load i64*, i64** %p1
  %pixelGreen = getelementptr i64, i64* %p3, i64 1
  %Access1 = load i64, i64* %pixelGreen
  store i64 %Access1, i64* %currentGreen
  %currentGreen4 = load i64, i64* %currentGreen
  %amount5 = load i64, i64* %amount2
  %tmp = add i64 %currentGreen4, %amount5
  store i64 %tmp, i64* %newGreen
  %newGreen6 = load i64, i64* %newGreen
  %tmp7 = icmp sge i64 %newGreen6, 255
  br i1 %tmp7, label %then, label %else

merge:                                            ; preds = %else, %then
  %p8 = load i64*, i64** %p1
  %newGreen9 = load i64, i64* %newGreen
  %pixel3 = getelementptr i64, i64* %p8, i64 1
  store i64 %newGreen9, i64* %pixel3
  %p10 = load i64*, i64** %p1
  ret i64* %p10

then:                                             ; preds = %entry
  store i64 255, i64* %newGreen
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i64* @enhanceRed(i64* %p, i64 %amount) {
entry:
  %p1 = alloca i64*
  store i64* %p, i64** %p1
  %amount2 = alloca i64
  store i64 %amount, i64* %amount2
  %currentRed = alloca i64
  %newRed = alloca i64
  %p3 = load i64*, i64** %p1
  %pixelRed = getelementptr i64, i64* %p3, i64 0
  %Access1 = load i64, i64* %pixelRed
  store i64 %Access1, i64* %currentRed
  %currentRed4 = load i64, i64* %currentRed
  %amount5 = load i64, i64* %amount2
  %tmp = add i64 %currentRed4, %amount5
  store i64 %tmp, i64* %newRed
  %newRed6 = load i64, i64* %newRed
  %tmp7 = icmp sge i64 %newRed6, 255
  br i1 %tmp7, label %then, label %else

merge:                                            ; preds = %else, %then
  %p8 = load i64*, i64** %p1
  %newRed9 = load i64, i64* %newRed
  %pixel3 = getelementptr i64, i64* %p8, i64 0
  store i64 %newRed9, i64* %pixel3
  %p10 = load i64*, i64** %p1
  ret i64* %p10

then:                                             ; preds = %entry
  store i64 255, i64* %newRed
  br label %merge

else:                                             ; preds = %entry
  br label %merge
}

define i64* @subtractIntMatrix(i64* %a, i64* %b) {
entry:
  %a1 = alloca i64*
  store i64* %a, i64** %a1
  %b2 = alloca i64*
  store i64* %b, i64** %b2
  %m = alloca i64*
  %i = alloca i64
  %j = alloca i64
  %a3 = load i64*, i64** %a1
  store i64* %a3, i64** %m
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i35 = load i64, i64* %i
  %a36 = load i64*, i64** %a1
  %pixel737 = getelementptr i64, i64* %a36, i64 0
  %Access138 = load i64, i64* %pixel737
  %tmp39 = icmp slt i64 %i35, %Access138
  br i1 %tmp39, label %while_body, label %merge40

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %while_body5, %while_body
  %j30 = load i64, i64* %j
  %a31 = load i64*, i64** %a1
  %pixel7 = getelementptr i64, i64* %a31, i64 1
  %Access1 = load i64, i64* %pixel7
  %tmp32 = icmp slt i64 %j30, %Access1
  br i1 %tmp32, label %while_body5, label %merge

while_body5:                                      ; preds = %while4
  %m6 = load i64*, i64** %m
  %a7 = load i64*, i64** %a1
  %matrix7 = getelementptr i64, i64* %a7, i64 1
  %Access2 = load i64, i64* %matrix7
  %i8 = load i64, i64* %i
  %j9 = load i64, i64* %j
  %left = mul i64 %Access2, %i8
  %right = add i64 %j9, 2
  %add = add i64 %left, %right
  %matrix8 = getelementptr i64, i64* %a7, i64 %add
  %Access3 = load i64, i64* %matrix8
  %b10 = load i64*, i64** %b2
  %matrix711 = getelementptr i64, i64* %b10, i64 1
  %Access212 = load i64, i64* %matrix711
  %i13 = load i64, i64* %i
  %j14 = load i64, i64* %j
  %left15 = mul i64 %Access212, %i13
  %right16 = add i64 %j14, 2
  %add17 = add i64 %left15, %right16
  %matrix818 = getelementptr i64, i64* %b10, i64 %add17
  %Access319 = load i64, i64* %matrix818
  %tmp = sub i64 %Access3, %Access319
  %matrix720 = getelementptr i64, i64* %m6, i64 1
  %Access221 = load i64, i64* %matrix720
  %i22 = load i64, i64* %i
  %j23 = load i64, i64* %j
  %left24 = mul i64 %Access221, %i22
  %right25 = add i64 %j23, 2
  %add26 = add i64 %left24, %right25
  %matrix827 = getelementptr i64, i64* %m6, i64 %add26
  store i64 %tmp, i64* %matrix827
  %j28 = load i64, i64* %j
  %tmp29 = add i64 %j28, 1
  store i64 %tmp29, i64* %j
  br label %while4

merge:                                            ; preds = %while4
  %i33 = load i64, i64* %i
  %tmp34 = add i64 %i33, 1
  store i64 %tmp34, i64* %i
  br label %while

merge40:                                          ; preds = %while
  %m41 = load i64*, i64** %m
  ret i64* %m41
}

define i64* @addIntMatrix(i64* %a, i64* %b) {
entry:
  %a1 = alloca i64*
  store i64* %a, i64** %a1
  %b2 = alloca i64*
  store i64* %b, i64** %b2
  %m = alloca i64*
  %i = alloca i64
  %j = alloca i64
  %a3 = load i64*, i64** %a1
  store i64* %a3, i64** %m
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i35 = load i64, i64* %i
  %a36 = load i64*, i64** %a1
  %pixel737 = getelementptr i64, i64* %a36, i64 0
  %Access138 = load i64, i64* %pixel737
  %tmp39 = icmp slt i64 %i35, %Access138
  br i1 %tmp39, label %while_body, label %merge40

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %while_body5, %while_body
  %j30 = load i64, i64* %j
  %a31 = load i64*, i64** %a1
  %pixel7 = getelementptr i64, i64* %a31, i64 1
  %Access1 = load i64, i64* %pixel7
  %tmp32 = icmp slt i64 %j30, %Access1
  br i1 %tmp32, label %while_body5, label %merge

while_body5:                                      ; preds = %while4
  %m6 = load i64*, i64** %m
  %a7 = load i64*, i64** %a1
  %matrix7 = getelementptr i64, i64* %a7, i64 1
  %Access2 = load i64, i64* %matrix7
  %i8 = load i64, i64* %i
  %j9 = load i64, i64* %j
  %left = mul i64 %Access2, %i8
  %right = add i64 %j9, 2
  %add = add i64 %left, %right
  %matrix8 = getelementptr i64, i64* %a7, i64 %add
  %Access3 = load i64, i64* %matrix8
  %b10 = load i64*, i64** %b2
  %matrix711 = getelementptr i64, i64* %b10, i64 1
  %Access212 = load i64, i64* %matrix711
  %i13 = load i64, i64* %i
  %j14 = load i64, i64* %j
  %left15 = mul i64 %Access212, %i13
  %right16 = add i64 %j14, 2
  %add17 = add i64 %left15, %right16
  %matrix818 = getelementptr i64, i64* %b10, i64 %add17
  %Access319 = load i64, i64* %matrix818
  %tmp = add i64 %Access3, %Access319
  %matrix720 = getelementptr i64, i64* %m6, i64 1
  %Access221 = load i64, i64* %matrix720
  %i22 = load i64, i64* %i
  %j23 = load i64, i64* %j
  %left24 = mul i64 %Access221, %i22
  %right25 = add i64 %j23, 2
  %add26 = add i64 %left24, %right25
  %matrix827 = getelementptr i64, i64* %m6, i64 %add26
  store i64 %tmp, i64* %matrix827
  %j28 = load i64, i64* %j
  %tmp29 = add i64 %j28, 1
  store i64 %tmp29, i64* %j
  br label %while4

merge:                                            ; preds = %while4
  %i33 = load i64, i64* %i
  %tmp34 = add i64 %i33, 1
  store i64 %tmp34, i64* %i
  br label %while

merge40:                                          ; preds = %while
  %m41 = load i64*, i64** %m
  ret i64* %m41
}

define i64* @subtractPixel(i64* %p1, i64* %p2) {
entry:
  %p11 = alloca i64*
  store i64* %p1, i64** %p11
  %p22 = alloca i64*
  store i64* %p2, i64** %p22
  %p3 = alloca i64*
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 0, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 0, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 0, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 0, i64* %pixel6
  store i64* %pixel2, i64** %p3
  %p33 = load i64*, i64** %p3
  %p14 = load i64*, i64** %p11
  %pixelRed = getelementptr i64, i64* %p14, i64 0
  %Access1 = load i64, i64* %pixelRed
  %p25 = load i64*, i64** %p22
  %pixelRed6 = getelementptr i64, i64* %p25, i64 0
  %Access17 = load i64, i64* %pixelRed6
  %tmp = sub i64 %Access1, %Access17
  %abs_result = call i64 @abs(i64 %tmp)
  %pixel38 = getelementptr i64, i64* %p33, i64 0
  store i64 %abs_result, i64* %pixel38
  %p39 = load i64*, i64** %p3
  %p110 = load i64*, i64** %p11
  %pixelGreen = getelementptr i64, i64* %p110, i64 1
  %Access111 = load i64, i64* %pixelGreen
  %p212 = load i64*, i64** %p22
  %pixelGreen13 = getelementptr i64, i64* %p212, i64 1
  %Access114 = load i64, i64* %pixelGreen13
  %tmp15 = sub i64 %Access111, %Access114
  %abs_result16 = call i64 @abs(i64 %tmp15)
  %pixel317 = getelementptr i64, i64* %p39, i64 1
  store i64 %abs_result16, i64* %pixel317
  %p318 = load i64*, i64** %p3
  %p119 = load i64*, i64** %p11
  %pixelBlue = getelementptr i64, i64* %p119, i64 2
  %Access120 = load i64, i64* %pixelBlue
  %p221 = load i64*, i64** %p22
  %pixelBlue22 = getelementptr i64, i64* %p221, i64 2
  %Access123 = load i64, i64* %pixelBlue22
  %tmp24 = sub i64 %Access120, %Access123
  %abs_result25 = call i64 @abs(i64 %tmp24)
  %pixel326 = getelementptr i64, i64* %p318, i64 2
  store i64 %abs_result25, i64* %pixel326
  %p327 = load i64*, i64** %p3
  %p228 = load i64*, i64** %p22
  %pixelAlpha = getelementptr i64, i64* %p228, i64 3
  %Access129 = load i64, i64* %pixelAlpha
  %p130 = load i64*, i64** %p11
  %pixelAlpha31 = getelementptr i64, i64* %p130, i64 3
  %Access132 = load i64, i64* %pixelAlpha31
  %max_result = call i64 @max(i64 %Access132, i64 %Access129)
  %pixel333 = getelementptr i64, i64* %p327, i64 3
  store i64 %max_result, i64* %pixel333
  %p334 = load i64*, i64** %p3
  ret i64* %p334
}

define i64* @grayscale(i64* %pm) {
entry:
  %pm1 = alloca i64*
  store i64* %pm, i64** %pm1
  %i = alloca i64
  %j = alloca i64
  %average = alloca i64
  %p = alloca i64*
  %pmGray = alloca i64*
  %pm2 = load i64*, i64** %pm1
  store i64* %pm2, i64** %pmGray
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i66 = load i64, i64* %i
  %pm67 = load i64*, i64** %pm1
  %pixel768 = getelementptr i64, i64* %pm67, i64 0
  %Access169 = load i64, i64* %pixel768
  %tmp70 = icmp slt i64 %i66, %Access169
  br i1 %tmp70, label %while_body, label %merge71

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while3

while3:                                           ; preds = %while_body4, %while_body
  %j60 = load i64, i64* %j
  %pm61 = load i64*, i64** %pm1
  %pixel7 = getelementptr i64, i64* %pm61, i64 1
  %Access162 = load i64, i64* %pixel7
  %tmp63 = icmp slt i64 %j60, %Access162
  br i1 %tmp63, label %while_body4, label %merge

while_body4:                                      ; preds = %while3
  %pm5 = load i64*, i64** %pm1
  %matrix7 = getelementptr i64, i64* %pm5, i64 1
  %Access2 = load i64, i64* %matrix7
  %i6 = load i64, i64* %i
  %j7 = load i64, i64* %j
  %left = mul i64 %Access2, %i6
  %left2 = add i64 %left, %j7
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm5, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix88 = getelementptr i64, i64* %pm5, i64 %add1
  %Access39 = load i64, i64* %matrix88
  %add2 = add i64 %right, 2
  %matrix810 = getelementptr i64, i64* %pm5, i64 %add2
  %Access311 = load i64, i64* %matrix810
  %add3 = add i64 %right, 3
  %matrix812 = getelementptr i64, i64* %pm5, i64 %add3
  %Access313 = load i64, i64* %matrix812
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access39, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access311, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access313, i64* %pixel6
  store i64* %pixel2, i64** %p
  %p14 = load i64*, i64** %p
  %pixelRed = getelementptr i64, i64* %p14, i64 0
  %Access1 = load i64, i64* %pixelRed
  %p15 = load i64*, i64** %p
  %pixelGreen = getelementptr i64, i64* %p15, i64 1
  %Access116 = load i64, i64* %pixelGreen
  %tmp = add i64 %Access1, %Access116
  %p17 = load i64*, i64** %p
  %pixelBlue = getelementptr i64, i64* %p17, i64 2
  %Access118 = load i64, i64* %pixelBlue
  %tmp19 = add i64 %tmp, %Access118
  %tmp20 = sdiv i64 %tmp19, 3
  store i64 %tmp20, i64* %average
  %pmGray21 = load i64*, i64** %pmGray
  %1 = trunc i64 4 to i32
  %mallocsize22 = mul i32 %1, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall23 = tail call i8* @malloc(i32 %mallocsize22)
  %pixel124 = bitcast i8* %malloccall23 to i64**
  %pixel225 = bitcast i64** %pixel124 to i64*
  %average26 = load i64, i64* %average
  %average27 = load i64, i64* %average
  %average28 = load i64, i64* %average
  %p29 = load i64*, i64** %p
  %pixelAlpha = getelementptr i64, i64* %p29, i64 3
  %Access130 = load i64, i64* %pixelAlpha
  %pixel331 = getelementptr i64, i64* %pixel225, i64 0
  store i64 %average26, i64* %pixel331
  %pixel432 = getelementptr i64, i64* %pixel225, i64 1
  store i64 %average27, i64* %pixel432
  %pixel533 = getelementptr i64, i64* %pixel225, i64 2
  store i64 %average28, i64* %pixel533
  %pixel634 = getelementptr i64, i64* %pixel225, i64 3
  store i64 %Access130, i64* %pixel634
  %matrix735 = getelementptr i64, i64* %pmGray21, i64 1
  %Access236 = load i64, i64* %matrix735
  %i37 = load i64, i64* %i
  %j38 = load i64, i64* %j
  %left39 = mul i64 %Access236, %i37
  %left240 = add i64 %left39, %j38
  %left341 = mul i64 %left240, 4
  %right42 = add i64 %left341, 2
  %matrix843 = getelementptr i64, i64* %pixel225, i64 0
  %Access344 = load i64, i64* %matrix843
  %matrix845 = getelementptr i64, i64* %pixel225, i64 1
  %Access346 = load i64, i64* %matrix845
  %matrix847 = getelementptr i64, i64* %pixel225, i64 2
  %Access348 = load i64, i64* %matrix847
  %matrix849 = getelementptr i64, i64* %pixel225, i64 3
  %Access350 = load i64, i64* %matrix849
  %pixel351 = getelementptr i64, i64* %pmGray21, i64 %right42
  store i64 %Access344, i64* %pixel351
  %add152 = add i64 %right42, 1
  %pixel453 = getelementptr i64, i64* %pmGray21, i64 %add152
  store i64 %Access346, i64* %pixel453
  %add254 = add i64 %right42, 2
  %pixel555 = getelementptr i64, i64* %pmGray21, i64 %add254
  store i64 %Access348, i64* %pixel555
  %add356 = add i64 %right42, 3
  %pixel657 = getelementptr i64, i64* %pmGray21, i64 %add356
  store i64 %Access350, i64* %pixel657
  %j58 = load i64, i64* %j
  %tmp59 = add i64 %j58, 1
  store i64 %tmp59, i64* %j
  br label %while3

merge:                                            ; preds = %while3
  %i64 = load i64, i64* %i
  %tmp65 = add i64 %i64, 1
  store i64 %tmp65, i64* %i
  br label %while

merge71:                                          ; preds = %while
  %pmGray72 = load i64*, i64** %pmGray
  ret i64* %pmGray72
}

define i64* @addPixel(i64* %p1, i64* %p2) {
entry:
  %p11 = alloca i64*
  store i64* %p1, i64** %p11
  %p22 = alloca i64*
  store i64* %p2, i64** %p22
  %p3 = alloca i64*
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 0, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 0, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 0, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 0, i64* %pixel6
  store i64* %pixel2, i64** %p3
  %p33 = load i64*, i64** %p3
  %p14 = load i64*, i64** %p11
  %pixelRed = getelementptr i64, i64* %p14, i64 0
  %Access1 = load i64, i64* %pixelRed
  %p25 = load i64*, i64** %p22
  %pixelRed6 = getelementptr i64, i64* %p25, i64 0
  %Access17 = load i64, i64* %pixelRed6
  %tmp = add i64 %Access1, %Access17
  %pixel38 = getelementptr i64, i64* %p33, i64 0
  store i64 %tmp, i64* %pixel38
  %p39 = load i64*, i64** %p3
  %p110 = load i64*, i64** %p11
  %pixelGreen = getelementptr i64, i64* %p110, i64 1
  %Access111 = load i64, i64* %pixelGreen
  %p212 = load i64*, i64** %p22
  %pixelGreen13 = getelementptr i64, i64* %p212, i64 1
  %Access114 = load i64, i64* %pixelGreen13
  %tmp15 = add i64 %Access111, %Access114
  %pixel316 = getelementptr i64, i64* %p39, i64 1
  store i64 %tmp15, i64* %pixel316
  %p317 = load i64*, i64** %p3
  %p118 = load i64*, i64** %p11
  %pixelBlue = getelementptr i64, i64* %p118, i64 2
  %Access119 = load i64, i64* %pixelBlue
  %p220 = load i64*, i64** %p22
  %pixelBlue21 = getelementptr i64, i64* %p220, i64 2
  %Access122 = load i64, i64* %pixelBlue21
  %tmp23 = add i64 %Access119, %Access122
  %pixel324 = getelementptr i64, i64* %p317, i64 2
  store i64 %tmp23, i64* %pixel324
  %p325 = load i64*, i64** %p3
  %p226 = load i64*, i64** %p22
  %pixelAlpha = getelementptr i64, i64* %p226, i64 3
  %Access127 = load i64, i64* %pixelAlpha
  %p128 = load i64*, i64** %p11
  %pixelAlpha29 = getelementptr i64, i64* %p128, i64 3
  %Access130 = load i64, i64* %pixelAlpha29
  %max_result = call i64 @max(i64 %Access130, i64 %Access127)
  %pixel331 = getelementptr i64, i64* %p325, i64 3
  store i64 %max_result, i64* %pixel331
  %p332 = load i64*, i64** %p3
  ret i64* %p332
}

define i64* @matrixAnd(i64* %pm1, i64* %pm2) {
entry:
  %pm11 = alloca i64*
  store i64* %pm1, i64** %pm11
  %pm22 = alloca i64*
  store i64* %pm2, i64** %pm22
  %i = alloca i64
  %j = alloca i64
  %pm3 = alloca i64*
  %pm13 = load i64*, i64** %pm11
  store i64* %pm13, i64** %pm3
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge131, %entry
  %i134 = load i64, i64* %i
  %pm1135 = load i64*, i64** %pm11
  %pixel7136 = getelementptr i64, i64* %pm1135, i64 0
  %Access1137 = load i64, i64* %pixel7136
  %tmp138 = icmp slt i64 %i134, %Access1137
  br i1 %tmp138, label %while_body, label %merge139

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while4

while4:                                           ; preds = %merge, %while_body
  %j128 = load i64, i64* %j
  %pm1129 = load i64*, i64** %pm11
  %pixel7 = getelementptr i64, i64* %pm1129, i64 1
  %Access1 = load i64, i64* %pixel7
  %tmp130 = icmp slt i64 %j128, %Access1
  br i1 %tmp130, label %while_body5, label %merge131

while_body5:                                      ; preds = %while4
  %pm26 = load i64*, i64** %pm22
  %matrix7 = getelementptr i64, i64* %pm26, i64 1
  %Access2 = load i64, i64* %matrix7
  %i7 = load i64, i64* %i
  %j8 = load i64, i64* %j
  %left = mul i64 %Access2, %i7
  %left2 = add i64 %left, %j8
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm26, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix89 = getelementptr i64, i64* %pm26, i64 %add1
  %Access310 = load i64, i64* %matrix89
  %add2 = add i64 %right, 2
  %matrix811 = getelementptr i64, i64* %pm26, i64 %add2
  %Access312 = load i64, i64* %matrix811
  %add3 = add i64 %right, 3
  %matrix813 = getelementptr i64, i64* %pm26, i64 %add3
  %Access314 = load i64, i64* %matrix813
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access310, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access312, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access314, i64* %pixel6
  %pm115 = load i64*, i64** %pm11
  %matrix716 = getelementptr i64, i64* %pm115, i64 1
  %Access217 = load i64, i64* %matrix716
  %i18 = load i64, i64* %i
  %j19 = load i64, i64* %j
  %left20 = mul i64 %Access217, %i18
  %left221 = add i64 %left20, %j19
  %left322 = mul i64 %left221, 4
  %right23 = add i64 %left322, 2
  %1 = trunc i64 4 to i32
  %mallocsize24 = mul i32 %1, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall25 = tail call i8* @malloc(i32 %mallocsize24)
  %pixel126 = bitcast i8* %malloccall25 to i64**
  %pixel227 = bitcast i64** %pixel126 to i64*
  %matrix828 = getelementptr i64, i64* %pm115, i64 %right23
  %Access329 = load i64, i64* %matrix828
  %add130 = add i64 %right23, 1
  %matrix831 = getelementptr i64, i64* %pm115, i64 %add130
  %Access332 = load i64, i64* %matrix831
  %add233 = add i64 %right23, 2
  %matrix834 = getelementptr i64, i64* %pm115, i64 %add233
  %Access335 = load i64, i64* %matrix834
  %add336 = add i64 %right23, 3
  %matrix837 = getelementptr i64, i64* %pm115, i64 %add336
  %Access338 = load i64, i64* %matrix837
  %pixel339 = getelementptr i64, i64* %pixel227, i64 0
  store i64 %Access329, i64* %pixel339
  %pixel440 = getelementptr i64, i64* %pixel227, i64 1
  store i64 %Access332, i64* %pixel440
  %pixel541 = getelementptr i64, i64* %pixel227, i64 2
  store i64 %Access335, i64* %pixel541
  %pixel642 = getelementptr i64, i64* %pixel227, i64 3
  store i64 %Access338, i64* %pixel642
  %pixelEquality_result = call i1 @pixelEquality(i64* %pixel227, i64* %pixel2)
  br i1 %pixelEquality_result, label %then, label %else

merge:                                            ; preds = %else, %then
  %j127 = load i64, i64* %j
  %tmp = add i64 %j127, 1
  store i64 %tmp, i64* %j
  br label %while4

then:                                             ; preds = %while_body5
  %pm343 = load i64*, i64** %pm3
  %pm144 = load i64*, i64** %pm11
  %matrix745 = getelementptr i64, i64* %pm144, i64 1
  %Access246 = load i64, i64* %matrix745
  %i47 = load i64, i64* %i
  %j48 = load i64, i64* %j
  %left49 = mul i64 %Access246, %i47
  %left250 = add i64 %left49, %j48
  %left351 = mul i64 %left250, 4
  %right52 = add i64 %left351, 2
  %2 = trunc i64 4 to i32
  %mallocsize53 = mul i32 %2, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall54 = tail call i8* @malloc(i32 %mallocsize53)
  %pixel155 = bitcast i8* %malloccall54 to i64**
  %pixel256 = bitcast i64** %pixel155 to i64*
  %matrix857 = getelementptr i64, i64* %pm144, i64 %right52
  %Access358 = load i64, i64* %matrix857
  %add159 = add i64 %right52, 1
  %matrix860 = getelementptr i64, i64* %pm144, i64 %add159
  %Access361 = load i64, i64* %matrix860
  %add262 = add i64 %right52, 2
  %matrix863 = getelementptr i64, i64* %pm144, i64 %add262
  %Access364 = load i64, i64* %matrix863
  %add365 = add i64 %right52, 3
  %matrix866 = getelementptr i64, i64* %pm144, i64 %add365
  %Access367 = load i64, i64* %matrix866
  %pixel368 = getelementptr i64, i64* %pixel256, i64 0
  store i64 %Access358, i64* %pixel368
  %pixel469 = getelementptr i64, i64* %pixel256, i64 1
  store i64 %Access361, i64* %pixel469
  %pixel570 = getelementptr i64, i64* %pixel256, i64 2
  store i64 %Access364, i64* %pixel570
  %pixel671 = getelementptr i64, i64* %pixel256, i64 3
  store i64 %Access367, i64* %pixel671
  %matrix772 = getelementptr i64, i64* %pm343, i64 1
  %Access273 = load i64, i64* %matrix772
  %i74 = load i64, i64* %i
  %j75 = load i64, i64* %j
  %left76 = mul i64 %Access273, %i74
  %left277 = add i64 %left76, %j75
  %left378 = mul i64 %left277, 4
  %right79 = add i64 %left378, 2
  %matrix880 = getelementptr i64, i64* %pixel256, i64 0
  %Access381 = load i64, i64* %matrix880
  %matrix882 = getelementptr i64, i64* %pixel256, i64 1
  %Access383 = load i64, i64* %matrix882
  %matrix884 = getelementptr i64, i64* %pixel256, i64 2
  %Access385 = load i64, i64* %matrix884
  %matrix886 = getelementptr i64, i64* %pixel256, i64 3
  %Access387 = load i64, i64* %matrix886
  %pixel388 = getelementptr i64, i64* %pm343, i64 %right79
  store i64 %Access381, i64* %pixel388
  %add189 = add i64 %right79, 1
  %pixel490 = getelementptr i64, i64* %pm343, i64 %add189
  store i64 %Access383, i64* %pixel490
  %add291 = add i64 %right79, 2
  %pixel592 = getelementptr i64, i64* %pm343, i64 %add291
  store i64 %Access385, i64* %pixel592
  %add393 = add i64 %right79, 3
  %pixel694 = getelementptr i64, i64* %pm343, i64 %add393
  store i64 %Access387, i64* %pixel694
  br label %merge

else:                                             ; preds = %while_body5
  %pm395 = load i64*, i64** %pm3
  %3 = trunc i64 4 to i32
  %mallocsize96 = mul i32 %3, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall97 = tail call i8* @malloc(i32 %mallocsize96)
  %pixel198 = bitcast i8* %malloccall97 to i64**
  %pixel299 = bitcast i64** %pixel198 to i64*
  %pixel3100 = getelementptr i64, i64* %pixel299, i64 0
  store i64 255, i64* %pixel3100
  %pixel4101 = getelementptr i64, i64* %pixel299, i64 1
  store i64 255, i64* %pixel4101
  %pixel5102 = getelementptr i64, i64* %pixel299, i64 2
  store i64 255, i64* %pixel5102
  %pixel6103 = getelementptr i64, i64* %pixel299, i64 3
  store i64 255, i64* %pixel6103
  %matrix7104 = getelementptr i64, i64* %pm395, i64 1
  %Access2105 = load i64, i64* %matrix7104
  %i106 = load i64, i64* %i
  %j107 = load i64, i64* %j
  %left108 = mul i64 %Access2105, %i106
  %left2109 = add i64 %left108, %j107
  %left3110 = mul i64 %left2109, 4
  %right111 = add i64 %left3110, 2
  %matrix8112 = getelementptr i64, i64* %pixel299, i64 0
  %Access3113 = load i64, i64* %matrix8112
  %matrix8114 = getelementptr i64, i64* %pixel299, i64 1
  %Access3115 = load i64, i64* %matrix8114
  %matrix8116 = getelementptr i64, i64* %pixel299, i64 2
  %Access3117 = load i64, i64* %matrix8116
  %matrix8118 = getelementptr i64, i64* %pixel299, i64 3
  %Access3119 = load i64, i64* %matrix8118
  %pixel3120 = getelementptr i64, i64* %pm395, i64 %right111
  store i64 %Access3113, i64* %pixel3120
  %add1121 = add i64 %right111, 1
  %pixel4122 = getelementptr i64, i64* %pm395, i64 %add1121
  store i64 %Access3115, i64* %pixel4122
  %add2123 = add i64 %right111, 2
  %pixel5124 = getelementptr i64, i64* %pm395, i64 %add2123
  store i64 %Access3117, i64* %pixel5124
  %add3125 = add i64 %right111, 3
  %pixel6126 = getelementptr i64, i64* %pm395, i64 %add3125
  store i64 %Access3119, i64* %pixel6126
  br label %merge

merge131:                                         ; preds = %while4
  %i132 = load i64, i64* %i
  %tmp133 = add i64 %i132, 1
  store i64 %tmp133, i64* %i
  br label %while

merge139:                                         ; preds = %while
  %pm3140 = load i64*, i64** %pm3
  ret i64* %pm3140
}

define i1 @pixelEquality(i64* %p1, i64* %p2) {
entry:
  %p11 = alloca i64*
  store i64* %p1, i64** %p11
  %p22 = alloca i64*
  store i64* %p2, i64** %p22
  %p13 = load i64*, i64** %p11
  %pixelRed = getelementptr i64, i64* %p13, i64 0
  %Access1 = load i64, i64* %pixelRed
  %p24 = load i64*, i64** %p22
  %pixelRed5 = getelementptr i64, i64* %p24, i64 0
  %Access16 = load i64, i64* %pixelRed5
  %tmp = icmp eq i64 %Access1, %Access16
  %p17 = load i64*, i64** %p11
  %pixelGreen = getelementptr i64, i64* %p17, i64 1
  %Access18 = load i64, i64* %pixelGreen
  %p29 = load i64*, i64** %p22
  %pixelGreen10 = getelementptr i64, i64* %p29, i64 1
  %Access111 = load i64, i64* %pixelGreen10
  %tmp12 = icmp eq i64 %Access18, %Access111
  %tmp13 = and i1 %tmp, %tmp12
  %p114 = load i64*, i64** %p11
  %pixelBlue = getelementptr i64, i64* %p114, i64 2
  %Access115 = load i64, i64* %pixelBlue
  %p216 = load i64*, i64** %p22
  %pixelBlue17 = getelementptr i64, i64* %p216, i64 2
  %Access118 = load i64, i64* %pixelBlue17
  %tmp19 = icmp eq i64 %Access115, %Access118
  %tmp20 = and i1 %tmp13, %tmp19
  %p121 = load i64*, i64** %p11
  %pixelAlpha = getelementptr i64, i64* %p121, i64 3
  %Access122 = load i64, i64* %pixelAlpha
  %p223 = load i64*, i64** %p22
  %pixelAlpha24 = getelementptr i64, i64* %p223, i64 3
  %Access125 = load i64, i64* %pixelAlpha24
  %tmp26 = icmp eq i64 %Access122, %Access125
  %tmp27 = and i1 %tmp20, %tmp26
  br i1 %tmp27, label %then, label %else

merge:                                            ; No predecessors!
  ret i1 false

then:                                             ; preds = %entry
  ret i1 true

else:                                             ; preds = %entry
  ret i1 false
}

define i64* @flipPixelMatrixV(i64* %pm) {
entry:
  %pm1 = alloca i64*
  store i64* %pm, i64** %pm1
  %height = alloca i64
  %width = alloca i64
  %i = alloca i64
  %j = alloca i64
  %pm2 = alloca i64*
  %pm3 = load i64*, i64** %pm1
  %pixel7 = getelementptr i64, i64* %pm3, i64 0
  %Access1 = load i64, i64* %pixel7
  store i64 %Access1, i64* %height
  %pm4 = load i64*, i64** %pm1
  %pixel75 = getelementptr i64, i64* %pm4, i64 1
  %Access16 = load i64, i64* %pixel75
  store i64 %Access16, i64* %width
  %pm7 = load i64*, i64** %pm1
  store i64* %pm7, i64** %pm2
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i52 = load i64, i64* %i
  %width53 = load i64, i64* %width
  %tmp54 = icmp slt i64 %i52, %width53
  br i1 %tmp54, label %while_body, label %merge55

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while8

while8:                                           ; preds = %while_body9, %while_body
  %j47 = load i64, i64* %j
  %height48 = load i64, i64* %height
  %tmp49 = icmp slt i64 %j47, %height48
  br i1 %tmp49, label %while_body9, label %merge

while_body9:                                      ; preds = %while8
  %pm210 = load i64*, i64** %pm2
  %pm11 = load i64*, i64** %pm1
  %matrix7 = getelementptr i64, i64* %pm11, i64 1
  %Access2 = load i64, i64* %matrix7
  %height12 = load i64, i64* %height
  %tmp = sub i64 %height12, 1
  %j13 = load i64, i64* %j
  %tmp14 = sub i64 %tmp, %j13
  %i15 = load i64, i64* %i
  %left = mul i64 %Access2, %tmp14
  %left2 = add i64 %left, %i15
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm11, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix816 = getelementptr i64, i64* %pm11, i64 %add1
  %Access317 = load i64, i64* %matrix816
  %add2 = add i64 %right, 2
  %matrix818 = getelementptr i64, i64* %pm11, i64 %add2
  %Access319 = load i64, i64* %matrix818
  %add3 = add i64 %right, 3
  %matrix820 = getelementptr i64, i64* %pm11, i64 %add3
  %Access321 = load i64, i64* %matrix820
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access317, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access319, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access321, i64* %pixel6
  %matrix722 = getelementptr i64, i64* %pm210, i64 1
  %Access223 = load i64, i64* %matrix722
  %j24 = load i64, i64* %j
  %i25 = load i64, i64* %i
  %left26 = mul i64 %Access223, %j24
  %left227 = add i64 %left26, %i25
  %left328 = mul i64 %left227, 4
  %right29 = add i64 %left328, 2
  %matrix830 = getelementptr i64, i64* %pixel2, i64 0
  %Access331 = load i64, i64* %matrix830
  %matrix832 = getelementptr i64, i64* %pixel2, i64 1
  %Access333 = load i64, i64* %matrix832
  %matrix834 = getelementptr i64, i64* %pixel2, i64 2
  %Access335 = load i64, i64* %matrix834
  %matrix836 = getelementptr i64, i64* %pixel2, i64 3
  %Access337 = load i64, i64* %matrix836
  %pixel338 = getelementptr i64, i64* %pm210, i64 %right29
  store i64 %Access331, i64* %pixel338
  %add139 = add i64 %right29, 1
  %pixel440 = getelementptr i64, i64* %pm210, i64 %add139
  store i64 %Access333, i64* %pixel440
  %add241 = add i64 %right29, 2
  %pixel542 = getelementptr i64, i64* %pm210, i64 %add241
  store i64 %Access335, i64* %pixel542
  %add343 = add i64 %right29, 3
  %pixel644 = getelementptr i64, i64* %pm210, i64 %add343
  store i64 %Access337, i64* %pixel644
  %j45 = load i64, i64* %j
  %tmp46 = add i64 %j45, 1
  store i64 %tmp46, i64* %j
  br label %while8

merge:                                            ; preds = %while8
  %i50 = load i64, i64* %i
  %tmp51 = add i64 %i50, 1
  store i64 %tmp51, i64* %i
  br label %while

merge55:                                          ; preds = %while
  %pm256 = load i64*, i64** %pm2
  ret i64* %pm256
}

define i64* @flipIntMatrixV(i64* %m) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %height = alloca i64
  %width = alloca i64
  %i = alloca i64
  %j = alloca i64
  %m2 = alloca i64*
  %m3 = load i64*, i64** %m1
  %pixel7 = getelementptr i64, i64* %m3, i64 0
  %Access1 = load i64, i64* %pixel7
  store i64 %Access1, i64* %height
  %m4 = load i64*, i64** %m1
  %pixel75 = getelementptr i64, i64* %m4, i64 1
  %Access16 = load i64, i64* %pixel75
  store i64 %Access16, i64* %width
  %m7 = load i64*, i64** %m1
  store i64* %m7, i64** %m2
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i31 = load i64, i64* %i
  %width32 = load i64, i64* %width
  %tmp33 = icmp slt i64 %i31, %width32
  br i1 %tmp33, label %while_body, label %merge34

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while8

while8:                                           ; preds = %while_body9, %while_body
  %j26 = load i64, i64* %j
  %height27 = load i64, i64* %height
  %tmp28 = icmp slt i64 %j26, %height27
  br i1 %tmp28, label %while_body9, label %merge

while_body9:                                      ; preds = %while8
  %m210 = load i64*, i64** %m2
  %m11 = load i64*, i64** %m1
  %matrix7 = getelementptr i64, i64* %m11, i64 1
  %Access2 = load i64, i64* %matrix7
  %height12 = load i64, i64* %height
  %tmp = sub i64 %height12, 1
  %j13 = load i64, i64* %j
  %tmp14 = sub i64 %tmp, %j13
  %i15 = load i64, i64* %i
  %left = mul i64 %Access2, %tmp14
  %right = add i64 %i15, 2
  %add = add i64 %left, %right
  %matrix8 = getelementptr i64, i64* %m11, i64 %add
  %Access3 = load i64, i64* %matrix8
  %matrix716 = getelementptr i64, i64* %m210, i64 1
  %Access217 = load i64, i64* %matrix716
  %j18 = load i64, i64* %j
  %i19 = load i64, i64* %i
  %left20 = mul i64 %Access217, %j18
  %right21 = add i64 %i19, 2
  %add22 = add i64 %left20, %right21
  %matrix823 = getelementptr i64, i64* %m210, i64 %add22
  store i64 %Access3, i64* %matrix823
  %j24 = load i64, i64* %j
  %tmp25 = add i64 %j24, 1
  store i64 %tmp25, i64* %j
  br label %while8

merge:                                            ; preds = %while8
  %i29 = load i64, i64* %i
  %tmp30 = add i64 %i29, 1
  store i64 %tmp30, i64* %i
  br label %while

merge34:                                          ; preds = %while
  %m235 = load i64*, i64** %m2
  ret i64* %m235
}

define i64* @flipPixelMatrixH(i64* %pm) {
entry:
  %pm1 = alloca i64*
  store i64* %pm, i64** %pm1
  %height = alloca i64
  %width = alloca i64
  %i = alloca i64
  %j = alloca i64
  %pm2 = alloca i64*
  %pm3 = load i64*, i64** %pm1
  %pixel7 = getelementptr i64, i64* %pm3, i64 0
  %Access1 = load i64, i64* %pixel7
  store i64 %Access1, i64* %height
  %pm4 = load i64*, i64** %pm1
  %pixel75 = getelementptr i64, i64* %pm4, i64 1
  %Access16 = load i64, i64* %pixel75
  store i64 %Access16, i64* %width
  %pm7 = load i64*, i64** %pm1
  store i64* %pm7, i64** %pm2
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i52 = load i64, i64* %i
  %height53 = load i64, i64* %height
  %tmp54 = icmp slt i64 %i52, %height53
  br i1 %tmp54, label %while_body, label %merge55

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while8

while8:                                           ; preds = %while_body9, %while_body
  %j47 = load i64, i64* %j
  %width48 = load i64, i64* %width
  %tmp49 = icmp slt i64 %j47, %width48
  br i1 %tmp49, label %while_body9, label %merge

while_body9:                                      ; preds = %while8
  %pm210 = load i64*, i64** %pm2
  %pm11 = load i64*, i64** %pm1
  %matrix7 = getelementptr i64, i64* %pm11, i64 1
  %Access2 = load i64, i64* %matrix7
  %i12 = load i64, i64* %i
  %width13 = load i64, i64* %width
  %tmp = sub i64 %width13, 1
  %j14 = load i64, i64* %j
  %tmp15 = sub i64 %tmp, %j14
  %left = mul i64 %Access2, %i12
  %left2 = add i64 %left, %tmp15
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm11, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix816 = getelementptr i64, i64* %pm11, i64 %add1
  %Access317 = load i64, i64* %matrix816
  %add2 = add i64 %right, 2
  %matrix818 = getelementptr i64, i64* %pm11, i64 %add2
  %Access319 = load i64, i64* %matrix818
  %add3 = add i64 %right, 3
  %matrix820 = getelementptr i64, i64* %pm11, i64 %add3
  %Access321 = load i64, i64* %matrix820
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access317, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access319, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access321, i64* %pixel6
  %matrix722 = getelementptr i64, i64* %pm210, i64 1
  %Access223 = load i64, i64* %matrix722
  %i24 = load i64, i64* %i
  %j25 = load i64, i64* %j
  %left26 = mul i64 %Access223, %i24
  %left227 = add i64 %left26, %j25
  %left328 = mul i64 %left227, 4
  %right29 = add i64 %left328, 2
  %matrix830 = getelementptr i64, i64* %pixel2, i64 0
  %Access331 = load i64, i64* %matrix830
  %matrix832 = getelementptr i64, i64* %pixel2, i64 1
  %Access333 = load i64, i64* %matrix832
  %matrix834 = getelementptr i64, i64* %pixel2, i64 2
  %Access335 = load i64, i64* %matrix834
  %matrix836 = getelementptr i64, i64* %pixel2, i64 3
  %Access337 = load i64, i64* %matrix836
  %pixel338 = getelementptr i64, i64* %pm210, i64 %right29
  store i64 %Access331, i64* %pixel338
  %add139 = add i64 %right29, 1
  %pixel440 = getelementptr i64, i64* %pm210, i64 %add139
  store i64 %Access333, i64* %pixel440
  %add241 = add i64 %right29, 2
  %pixel542 = getelementptr i64, i64* %pm210, i64 %add241
  store i64 %Access335, i64* %pixel542
  %add343 = add i64 %right29, 3
  %pixel644 = getelementptr i64, i64* %pm210, i64 %add343
  store i64 %Access337, i64* %pixel644
  %j45 = load i64, i64* %j
  %tmp46 = add i64 %j45, 1
  store i64 %tmp46, i64* %j
  br label %while8

merge:                                            ; preds = %while8
  %i50 = load i64, i64* %i
  %tmp51 = add i64 %i50, 1
  store i64 %tmp51, i64* %i
  br label %while

merge55:                                          ; preds = %while
  %pm256 = load i64*, i64** %pm2
  ret i64* %pm256
}

define i64* @flipIntMatrixH(i64* %m) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %height = alloca i64
  %width = alloca i64
  %i = alloca i64
  %j = alloca i64
  %m2 = alloca i64*
  %m3 = load i64*, i64** %m1
  %pixel7 = getelementptr i64, i64* %m3, i64 0
  %Access1 = load i64, i64* %pixel7
  store i64 %Access1, i64* %height
  %m4 = load i64*, i64** %m1
  %pixel75 = getelementptr i64, i64* %m4, i64 1
  %Access16 = load i64, i64* %pixel75
  store i64 %Access16, i64* %width
  %m7 = load i64*, i64** %m1
  store i64* %m7, i64** %m2
  store i64 0, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i31 = load i64, i64* %i
  %height32 = load i64, i64* %height
  %tmp33 = icmp slt i64 %i31, %height32
  br i1 %tmp33, label %while_body, label %merge34

while_body:                                       ; preds = %while
  store i64 0, i64* %j
  br label %while8

while8:                                           ; preds = %while_body9, %while_body
  %j26 = load i64, i64* %j
  %width27 = load i64, i64* %width
  %tmp28 = icmp slt i64 %j26, %width27
  br i1 %tmp28, label %while_body9, label %merge

while_body9:                                      ; preds = %while8
  %m210 = load i64*, i64** %m2
  %m11 = load i64*, i64** %m1
  %matrix7 = getelementptr i64, i64* %m11, i64 1
  %Access2 = load i64, i64* %matrix7
  %i12 = load i64, i64* %i
  %width13 = load i64, i64* %width
  %tmp = sub i64 %width13, 1
  %j14 = load i64, i64* %j
  %tmp15 = sub i64 %tmp, %j14
  %left = mul i64 %Access2, %i12
  %right = add i64 %tmp15, 2
  %add = add i64 %left, %right
  %matrix8 = getelementptr i64, i64* %m11, i64 %add
  %Access3 = load i64, i64* %matrix8
  %matrix716 = getelementptr i64, i64* %m210, i64 1
  %Access217 = load i64, i64* %matrix716
  %i18 = load i64, i64* %i
  %j19 = load i64, i64* %j
  %left20 = mul i64 %Access217, %i18
  %right21 = add i64 %j19, 2
  %add22 = add i64 %left20, %right21
  %matrix823 = getelementptr i64, i64* %m210, i64 %add22
  store i64 %Access3, i64* %matrix823
  %j24 = load i64, i64* %j
  %tmp25 = add i64 %j24, 1
  store i64 %tmp25, i64* %j
  br label %while8

merge:                                            ; preds = %while8
  %i29 = load i64, i64* %i
  %tmp30 = add i64 %i29, 1
  store i64 %tmp30, i64* %i
  br label %while

merge34:                                          ; preds = %while
  %m235 = load i64*, i64** %m2
  ret i64* %m235
}

define i64* @cropIntMatrix(i64* %m, i64 %r1, i64 %r2, i64 %c1, i64 %c2) {
entry:
  %m1 = alloca i64*
  store i64* %m, i64** %m1
  %r12 = alloca i64
  store i64 %r1, i64* %r12
  %r23 = alloca i64
  store i64 %r2, i64* %r23
  %c14 = alloca i64
  store i64 %c1, i64* %c14
  %c25 = alloca i64
  store i64 %c2, i64* %c25
  %i = alloca i64
  %j = alloca i64
  %a = alloca i64
  %m2 = alloca i64*
  %r26 = load i64, i64* %r23
  %r17 = load i64, i64* %r12
  %tmp = sub i64 %r26, %r17
  %c28 = load i64, i64* %c25
  %c19 = load i64, i64* %c14
  %tmp10 = sub i64 %c28, %c19
  %left = mul i64 %tmp10, %tmp
  %mat = add i64 %left, 2
  %0 = trunc i64 %mat to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %matrix1 = bitcast i8* %malloccall to i64**
  %matrix2 = bitcast i64** %matrix1 to i64*
  %pixel3 = getelementptr i64, i64* %matrix2, i64 0
  store i64 %tmp, i64* %pixel3
  %pixel311 = getelementptr i64, i64* %matrix2, i64 1
  store i64 %tmp10, i64* %pixel311
  store i64* %matrix2, i64** %m2
  %r112 = load i64, i64* %r12
  store i64 %r112, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i40 = load i64, i64* %i
  %r241 = load i64, i64* %r23
  %tmp42 = icmp slt i64 %i40, %r241
  br i1 %tmp42, label %while_body, label %merge43

while_body:                                       ; preds = %while
  %c113 = load i64, i64* %c14
  store i64 %c113, i64* %j
  br label %while14

while14:                                          ; preds = %while_body15, %while_body
  %j35 = load i64, i64* %j
  %c236 = load i64, i64* %c25
  %tmp37 = icmp slt i64 %j35, %c236
  br i1 %tmp37, label %while_body15, label %merge

while_body15:                                     ; preds = %while14
  %m216 = load i64*, i64** %m2
  %m17 = load i64*, i64** %m1
  %matrix7 = getelementptr i64, i64* %m17, i64 1
  %Access2 = load i64, i64* %matrix7
  %i18 = load i64, i64* %i
  %j19 = load i64, i64* %j
  %left20 = mul i64 %Access2, %i18
  %right = add i64 %j19, 2
  %add = add i64 %left20, %right
  %matrix8 = getelementptr i64, i64* %m17, i64 %add
  %Access3 = load i64, i64* %matrix8
  %matrix721 = getelementptr i64, i64* %m216, i64 1
  %Access222 = load i64, i64* %matrix721
  %i23 = load i64, i64* %i
  %r124 = load i64, i64* %r12
  %tmp25 = sub i64 %i23, %r124
  %j26 = load i64, i64* %j
  %c127 = load i64, i64* %c14
  %tmp28 = sub i64 %j26, %c127
  %left29 = mul i64 %Access222, %tmp25
  %right30 = add i64 %tmp28, 2
  %add31 = add i64 %left29, %right30
  %matrix832 = getelementptr i64, i64* %m216, i64 %add31
  store i64 %Access3, i64* %matrix832
  %j33 = load i64, i64* %j
  %tmp34 = add i64 %j33, 1
  store i64 %tmp34, i64* %j
  br label %while14

merge:                                            ; preds = %while14
  %i38 = load i64, i64* %i
  %tmp39 = add i64 %i38, 1
  store i64 %tmp39, i64* %i
  br label %while

merge43:                                          ; preds = %while
  %m244 = load i64*, i64** %m2
  ret i64* %m244
}

define i64* @cropPixelMatrix(i64* %pm, i64 %r1, i64 %r2, i64 %c1, i64 %c2) {
entry:
  %pm1 = alloca i64*
  store i64* %pm, i64** %pm1
  %r12 = alloca i64
  store i64 %r1, i64* %r12
  %r23 = alloca i64
  store i64 %r2, i64* %r23
  %c14 = alloca i64
  store i64 %c1, i64* %c14
  %c25 = alloca i64
  store i64 %c2, i64* %c25
  %i = alloca i64
  %j = alloca i64
  %p = alloca i64*
  %pm2 = alloca i64*
  %r26 = load i64, i64* %r23
  %r17 = load i64, i64* %r12
  %tmp = sub i64 %r26, %r17
  %c28 = load i64, i64* %c25
  %c19 = load i64, i64* %c14
  %tmp10 = sub i64 %c28, %c19
  %left = mul i64 %tmp10, %tmp
  %left11 = mul i64 %left, 4
  %mat = add i64 %left11, 2
  %0 = trunc i64 %mat to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %matrix1 = bitcast i8* %malloccall to i64**
  %matrix2 = bitcast i64** %matrix1 to i64*
  %pixel3 = getelementptr i64, i64* %matrix2, i64 0
  store i64 %tmp, i64* %pixel3
  %pixel312 = getelementptr i64, i64* %matrix2, i64 1
  store i64 %tmp10, i64* %pixel312
  store i64* %matrix2, i64** %pm2
  %r113 = load i64, i64* %r12
  store i64 %r113, i64* %i
  br label %while

while:                                            ; preds = %merge, %entry
  %i65 = load i64, i64* %i
  %r266 = load i64, i64* %r23
  %tmp67 = icmp slt i64 %i65, %r266
  br i1 %tmp67, label %while_body, label %merge68

while_body:                                       ; preds = %while
  %c114 = load i64, i64* %c14
  store i64 %c114, i64* %j
  br label %while15

while15:                                          ; preds = %while_body16, %while_body
  %j60 = load i64, i64* %j
  %c261 = load i64, i64* %c25
  %tmp62 = icmp slt i64 %j60, %c261
  br i1 %tmp62, label %while_body16, label %merge

while_body16:                                     ; preds = %while15
  %pm217 = load i64*, i64** %pm2
  %pm18 = load i64*, i64** %pm1
  %matrix7 = getelementptr i64, i64* %pm18, i64 1
  %Access2 = load i64, i64* %matrix7
  %i19 = load i64, i64* %i
  %j20 = load i64, i64* %j
  %left21 = mul i64 %Access2, %i19
  %left2 = add i64 %left21, %j20
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %1 = trunc i64 4 to i32
  %mallocsize22 = mul i32 %1, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall23 = tail call i8* @malloc(i32 %mallocsize22)
  %pixel1 = bitcast i8* %malloccall23 to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %pm18, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix824 = getelementptr i64, i64* %pm18, i64 %add1
  %Access325 = load i64, i64* %matrix824
  %add2 = add i64 %right, 2
  %matrix826 = getelementptr i64, i64* %pm18, i64 %add2
  %Access327 = load i64, i64* %matrix826
  %add3 = add i64 %right, 3
  %matrix828 = getelementptr i64, i64* %pm18, i64 %add3
  %Access329 = load i64, i64* %matrix828
  %pixel330 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel330
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access325, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access327, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access329, i64* %pixel6
  %matrix731 = getelementptr i64, i64* %pm217, i64 1
  %Access232 = load i64, i64* %matrix731
  %i33 = load i64, i64* %i
  %r134 = load i64, i64* %r12
  %tmp35 = sub i64 %i33, %r134
  %j36 = load i64, i64* %j
  %c137 = load i64, i64* %c14
  %tmp38 = sub i64 %j36, %c137
  %left39 = mul i64 %Access232, %tmp35
  %left240 = add i64 %left39, %tmp38
  %left341 = mul i64 %left240, 4
  %right42 = add i64 %left341, 2
  %matrix843 = getelementptr i64, i64* %pixel2, i64 0
  %Access344 = load i64, i64* %matrix843
  %matrix845 = getelementptr i64, i64* %pixel2, i64 1
  %Access346 = load i64, i64* %matrix845
  %matrix847 = getelementptr i64, i64* %pixel2, i64 2
  %Access348 = load i64, i64* %matrix847
  %matrix849 = getelementptr i64, i64* %pixel2, i64 3
  %Access350 = load i64, i64* %matrix849
  %pixel351 = getelementptr i64, i64* %pm217, i64 %right42
  store i64 %Access344, i64* %pixel351
  %add152 = add i64 %right42, 1
  %pixel453 = getelementptr i64, i64* %pm217, i64 %add152
  store i64 %Access346, i64* %pixel453
  %add254 = add i64 %right42, 2
  %pixel555 = getelementptr i64, i64* %pm217, i64 %add254
  store i64 %Access348, i64* %pixel555
  %add356 = add i64 %right42, 3
  %pixel657 = getelementptr i64, i64* %pm217, i64 %add356
  store i64 %Access350, i64* %pixel657
  %j58 = load i64, i64* %j
  %tmp59 = add i64 %j58, 1
  store i64 %tmp59, i64* %j
  br label %while15

merge:                                            ; preds = %while15
  %i63 = load i64, i64* %i
  %tmp64 = add i64 %i63, 1
  store i64 %tmp64, i64* %i
  br label %while

merge68:                                          ; preds = %while
  %pm269 = load i64*, i64** %pm2
  ret i64* %pm269
}

define i64 @abs(i64 %x) {
entry:
  %x1 = alloca i64
  store i64 %x, i64* %x1
  %x2 = load i64, i64* %x1
  %tmp = icmp sgt i64 %x2, 0
  br i1 %tmp, label %then, label %else

merge:                                            ; No predecessors!
  ret i64 0

then:                                             ; preds = %entry
  %x3 = load i64, i64* %x1
  ret i64 %x3

else:                                             ; preds = %entry
  %x4 = load i64, i64* %x1
  %tmp5 = sub i64 0, %x4
  ret i64 %tmp5
}

define i64 @max(i64 %a, i64 %b) {
entry:
  %a1 = alloca i64
  store i64 %a, i64* %a1
  %b2 = alloca i64
  store i64 %b, i64* %b2
  %a3 = load i64, i64* %a1
  %b4 = load i64, i64* %b2
  %tmp = icmp slt i64 %a3, %b4
  br i1 %tmp, label %then, label %else

merge:                                            ; No predecessors!
  ret i64 0

then:                                             ; preds = %entry
  %b5 = load i64, i64* %b2
  ret i64 %b5

else:                                             ; preds = %entry
  %a6 = load i64, i64* %a1
  ret i64 %a6
}

define i64 @decrement(i64 %a) {
entry:
  %a1 = alloca i64
  store i64 %a, i64* %a1
  %a2 = load i64, i64* %a1
  %tmp = sub i64 %a2, 1
  ret i64 %tmp
}

define i64 @increment(i64 %a) {
entry:
  %a1 = alloca i64
  store i64 %a, i64* %a1
  %a2 = load i64, i64* %a1
  %tmp = add i64 %a2, 1
  ret i64 %tmp
}

define i64 @main() {
entry:
  %m = alloca i64*
  %n = alloca i64*
  %p = alloca i64*
  %read_img = call i64* (i8*, ...) @read_img(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @strptr, i32 0, i32 0))
  store i64* %read_img, i64** %m
  %read_img1 = call i64* (i8*, ...) @read_img(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @strptr.48, i32 0, i32 0))
  store i64* %read_img1, i64** %n
  %m2 = load i64*, i64** %m
  %matrix7 = getelementptr i64, i64* %m2, i64 1
  %Access2 = load i64, i64* %matrix7
  %left = mul i64 %Access2, 0
  %left2 = add i64 %left, 0
  %left3 = mul i64 %left2, 4
  %right = add i64 %left3, 2
  %0 = trunc i64 4 to i32
  %mallocsize = mul i32 %0, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall = tail call i8* @malloc(i32 %mallocsize)
  %pixel1 = bitcast i8* %malloccall to i64**
  %pixel2 = bitcast i64** %pixel1 to i64*
  %matrix8 = getelementptr i64, i64* %m2, i64 %right
  %Access3 = load i64, i64* %matrix8
  %add1 = add i64 %right, 1
  %matrix83 = getelementptr i64, i64* %m2, i64 %add1
  %Access34 = load i64, i64* %matrix83
  %add2 = add i64 %right, 2
  %matrix85 = getelementptr i64, i64* %m2, i64 %add2
  %Access36 = load i64, i64* %matrix85
  %add3 = add i64 %right, 3
  %matrix87 = getelementptr i64, i64* %m2, i64 %add3
  %Access38 = load i64, i64* %matrix87
  %pixel3 = getelementptr i64, i64* %pixel2, i64 0
  store i64 %Access3, i64* %pixel3
  %pixel4 = getelementptr i64, i64* %pixel2, i64 1
  store i64 %Access34, i64* %pixel4
  %pixel5 = getelementptr i64, i64* %pixel2, i64 2
  store i64 %Access36, i64* %pixel5
  %pixel6 = getelementptr i64, i64* %pixel2, i64 3
  store i64 %Access38, i64* %pixel6
  store i64* %pixel2, i64** %p
  %p9 = load i64*, i64** %p
  %pixelRed = getelementptr i64, i64* %p9, i64 0
  %Access1 = load i64, i64* %pixelRed
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.46, i32 0, i32 0), i64 %Access1)
  %n10 = load i64*, i64** %n
  %matrix711 = getelementptr i64, i64* %n10, i64 1
  %Access212 = load i64, i64* %matrix711
  %left13 = mul i64 %Access212, 0
  %left214 = add i64 %left13, 0
  %left315 = mul i64 %left214, 4
  %right16 = add i64 %left315, 2
  %1 = trunc i64 4 to i32
  %mallocsize17 = mul i32 %1, ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i32)
  %malloccall18 = tail call i8* @malloc(i32 %mallocsize17)
  %pixel119 = bitcast i8* %malloccall18 to i64**
  %pixel220 = bitcast i64** %pixel119 to i64*
  %matrix821 = getelementptr i64, i64* %n10, i64 %right16
  %Access322 = load i64, i64* %matrix821
  %add123 = add i64 %right16, 1
  %matrix824 = getelementptr i64, i64* %n10, i64 %add123
  %Access325 = load i64, i64* %matrix824
  %add226 = add i64 %right16, 2
  %matrix827 = getelementptr i64, i64* %n10, i64 %add226
  %Access328 = load i64, i64* %matrix827
  %add329 = add i64 %right16, 3
  %matrix830 = getelementptr i64, i64* %n10, i64 %add329
  %Access331 = load i64, i64* %matrix830
  %pixel332 = getelementptr i64, i64* %pixel220, i64 0
  store i64 %Access322, i64* %pixel332
  %pixel433 = getelementptr i64, i64* %pixel220, i64 1
  store i64 %Access325, i64* %pixel433
  %pixel534 = getelementptr i64, i64* %pixel220, i64 2
  store i64 %Access328, i64* %pixel534
  %pixel635 = getelementptr i64, i64* %pixel220, i64 3
  store i64 %Access331, i64* %pixel635
  store i64* %pixel220, i64** %p
  %p36 = load i64*, i64** %p
  %pixelRed37 = getelementptr i64, i64* %p36, i64 0
  %Access138 = load i64, i64* %pixelRed37
  %printf39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.46, i32 0, i32 0), i64 %Access138)
  %m40 = load i64*, i64** %m
  %pixel7 = getelementptr i64, i64* %m40, i64 0
  %Access141 = load i64, i64* %pixel7
  %printf42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.46, i32 0, i32 0), i64 %Access141)
  %m43 = load i64*, i64** %m
  %pixel744 = getelementptr i64, i64* %m43, i64 1
  %Access145 = load i64, i64* %pixel744
  %printf46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @fmt.46, i32 0, i32 0), i64 %Access145)
  ret i64 0
}

declare noalias i8* @malloc(i32)
