.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    const/16 v0, 0x40

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lokio/Base64;->MAP:[B

    .line 117
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lokio/Base64;->URL_MAP:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14
    .param p0, "in"    # Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "limit":I
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    const/16 v3, 0xd

    const/16 v4, 0xa

    if-lez v0, :cond_1

    .line 33
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 34
    .local v5, "c":C
    const/16 v6, 0x3d

    if-eq v5, v6, :cond_0

    if-eq v5, v4, :cond_0

    if-eq v5, v3, :cond_0

    if-eq v5, v2, :cond_0

    if-eq v5, v1, :cond_0

    .line 35
    goto :goto_1

    .line 34
    :cond_0
    nop

    .line 32
    .end local v5    # "c":C
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 40
    :cond_1
    :goto_1
    int-to-long v5, v0

    const-wide/16 v7, 0x6

    mul-long v5, v5, v7

    const-wide/16 v7, 0x8

    div-long/2addr v5, v7

    long-to-int v6, v5

    new-array v5, v6, [B

    .line 41
    .local v5, "out":[B
    const/4 v6, 0x0

    .line 42
    .local v6, "outCount":I
    const/4 v7, 0x0

    .line 44
    .local v7, "inCount":I
    const/4 v8, 0x0

    .line 45
    .local v8, "word":I
    const/4 v9, 0x0

    .local v9, "pos":I
    :goto_2
    const/4 v10, 0x0

    if-ge v9, v0, :cond_c

    .line 46
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 49
    .local v11, "c":C
    const/16 v12, 0x41

    if-lt v11, v12, :cond_2

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_2

    .line 53
    add-int/lit8 v10, v11, -0x41

    goto :goto_5

    .line 49
    :cond_2
    nop

    .line 54
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x7a

    if-gt v11, v12, :cond_3

    .line 58
    add-int/lit8 v10, v11, -0x47

    goto :goto_5

    .line 54
    :cond_3
    nop

    .line 59
    const/16 v12, 0x30

    if-lt v11, v12, :cond_4

    const/16 v12, 0x39

    if-gt v11, v12, :cond_4

    .line 63
    add-int/lit8 v10, v11, 0x4

    goto :goto_5

    .line 59
    :cond_4
    nop

    .line 64
    const/16 v12, 0x2b

    if-eq v11, v12, :cond_a

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_5

    goto :goto_4

    .line 66
    :cond_5
    const/16 v12, 0x2f

    if-eq v11, v12, :cond_9

    const/16 v12, 0x5f

    if-ne v11, v12, :cond_6

    goto :goto_3

    .line 68
    :cond_6
    if-eq v11, v4, :cond_8

    if-eq v11, v3, :cond_8

    if-eq v11, v2, :cond_8

    if-ne v11, v1, :cond_7

    .line 69
    goto :goto_6

    .line 71
    :cond_7
    return-object v10

    .line 68
    :cond_8
    goto :goto_6

    .line 66
    :cond_9
    :goto_3
    nop

    .line 67
    const/16 v10, 0x3f

    goto :goto_5

    .line 64
    :cond_a
    :goto_4
    nop

    .line 65
    const/16 v10, 0x3e

    .line 75
    .local v10, "bits":I
    :goto_5
    shl-int/lit8 v12, v8, 0x6

    int-to-byte v13, v10

    or-int v8, v12, v13

    .line 78
    add-int/lit8 v7, v7, 0x1

    .line 79
    rem-int/lit8 v12, v7, 0x4

    if-nez v12, :cond_b

    .line 80
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "outCount":I
    .local v12, "outCount":I
    shr-int/lit8 v13, v8, 0x10

    int-to-byte v13, v13

    aput-byte v13, v5, v6

    .line 81
    add-int/lit8 v6, v12, 0x1

    .end local v12    # "outCount":I
    .restart local v6    # "outCount":I
    shr-int/lit8 v13, v8, 0x8

    int-to-byte v13, v13

    aput-byte v13, v5, v12

    .line 82
    add-int/lit8 v12, v6, 0x1

    .end local v6    # "outCount":I
    .restart local v12    # "outCount":I
    int-to-byte v13, v8

    aput-byte v13, v5, v6

    move v6, v12

    goto :goto_6

    .line 79
    .end local v12    # "outCount":I
    .restart local v6    # "outCount":I
    :cond_b
    nop

    .line 45
    .end local v10    # "bits":I
    .end local v11    # "c":C
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 86
    .end local v9    # "pos":I
    :cond_c
    rem-int/lit8 v1, v7, 0x4

    .line 87
    .local v1, "lastWordChars":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 89
    return-object v10

    .line 90
    :cond_d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 92
    shl-int/lit8 v8, v8, 0xc

    .line 93
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outCount":I
    .local v2, "outCount":I
    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    move v6, v2

    goto :goto_7

    .line 94
    .end local v2    # "outCount":I
    .restart local v6    # "outCount":I
    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 96
    shl-int/lit8 v8, v8, 0x6

    .line 97
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outCount":I
    .restart local v2    # "outCount":I
    shr-int/lit8 v3, v8, 0x10

    int-to-byte v3, v3

    aput-byte v3, v5, v6

    .line 98
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outCount":I
    .restart local v6    # "outCount":I
    shr-int/lit8 v3, v8, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    goto :goto_7

    .line 94
    :cond_f
    nop

    .line 102
    :goto_7
    array-length v2, v5

    if-ne v6, v2, :cond_10

    return-object v5

    .line 105
    :cond_10
    new-array v2, v6, [B

    .line 106
    .local v2, "prefix":[B
    const/4 v3, 0x0

    invoke-static {v5, v3, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v2
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [B

    .line 125
    sget-object v0, Lokio/Base64;->MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 8
    .param p0, "in"    # [B
    .param p1, "map"    # [B

    .line 133
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    .line 134
    .local v0, "length":I
    new-array v1, v0, [B

    .line 135
    .local v1, "out":[B
    const/4 v2, 0x0

    .local v2, "index":I
    array-length v3, p0

    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    .line 136
    .local v3, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 137
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    aput-byte v6, v1, v2

    .line 138
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "index":I
    .restart local v2    # "index":I
    aget-byte v6, p0, v4

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v1, v5

    .line 139
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .restart local v5    # "index":I
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v1, v2

    .line 140
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v4, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p1, v6

    aput-byte v6, v1, v5

    .line 136
    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 142
    .end local v4    # "i":I
    :cond_0
    array-length v4, p0

    rem-int/lit8 v4, v4, 0x3

    const/16 v5, 0x3d

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .local v4, "index":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    aput-byte v6, v1, v2

    .line 151
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "index":I
    .restart local v2    # "index":I
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    aget-byte v6, p1, v6

    aput-byte v6, v1, v4

    .line 152
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .restart local v4    # "index":I
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, p0, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    aput-byte v6, v1, v2

    .line 153
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "index":I
    .restart local v2    # "index":I
    aput-byte v5, v1, v4

    goto :goto_1

    .line 144
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .restart local v4    # "index":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    aget-byte v6, p1, v6

    aput-byte v6, v1, v2

    .line 145
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "index":I
    .restart local v2    # "index":I
    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    aget-byte v6, p1, v6

    aput-byte v6, v1, v4

    .line 146
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "index":I
    .restart local v4    # "index":I
    aput-byte v5, v1, v2

    .line 147
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "index":I
    .restart local v2    # "index":I
    aput-byte v5, v1, v4

    .line 148
    nop

    .line 157
    :goto_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "US-ASCII"

    invoke-direct {v4, v1, v5, v2, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [B

    .line 129
    sget-object v0, Lokio/Base64;->URL_MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
