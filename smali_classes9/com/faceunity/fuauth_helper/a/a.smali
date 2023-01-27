.class public final Lcom/faceunity/fuauth_helper/a/a;
.super Ljava/lang/Object;
.source "authpack.java"


# direct methods
.method private static a([B)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte p0, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v1, p0

    return v1

    :catch_0
    return v0
.end method

.method public static a()[B
    .locals 16

    const/16 v0, 0x664

    new-array v0, v0, [B

    const/16 v1, 0x3b

    :goto_0
    const/16 v2, 0x3d

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x388e21d5

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, -0x67

    :goto_1
    const/16 v2, -0x54

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    int-to-byte v2, v1

    aput-byte v2, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v4, 0x1688e385

    if-eq v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v1, -0x7e

    :goto_2
    const/16 v2, -0x66

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    int-to-byte v4, v1

    aput-byte v4, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v4, 0x17f17a06

    if-eq v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/16 v1, -0x2d

    :goto_3
    const/16 v2, -0x2a

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    int-to-byte v4, v1

    aput-byte v4, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v4, -0x230f3f7a

    if-eq v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x31

    :goto_4
    const/16 v2, 0x3e

    if-ge v1, v2, :cond_4

    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v5, -0x30c7c33

    if-eq v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, -0x1e

    :goto_5
    const/16 v4, -0xb

    if-ge v1, v4, :cond_5

    const/4 v5, 0x5

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, -0x78963408

    if-eq v5, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x32

    :goto_6
    const/16 v5, 0x38

    if-ge v1, v5, :cond_6

    const/4 v5, 0x6

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, 0x447772e

    if-eq v5, v6, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x4

    :goto_7
    const/16 v5, 0x1b

    if-ge v1, v5, :cond_7

    const/4 v5, 0x7

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, -0x2a50ecac

    if-eq v5, v6, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    const/16 v1, 0x6f

    :goto_8
    const/16 v5, 0x7b

    if-ge v1, v5, :cond_8

    const/16 v5, 0x8

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, 0x79442850

    if-eq v5, v6, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    const/16 v1, -0x63

    :goto_9
    const/16 v5, -0x53

    if-ge v1, v5, :cond_9

    const/16 v5, 0x9

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, -0x6187773c

    if-eq v5, v6, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    const/16 v1, -0x9

    :goto_a
    const/4 v5, -0x3

    if-ge v1, v5, :cond_a

    const/16 v5, 0xa

    int-to-byte v6, v1

    aput-byte v6, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v6, -0x2741a4c0

    if-eq v5, v6, :cond_a

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    const/16 v1, 0x5d

    :goto_b
    const/16 v5, 0x65

    if-ge v1, v5, :cond_b

    const/16 v6, 0xb

    int-to-byte v7, v1

    aput-byte v7, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v7, 0x56cbc0c4

    if-eq v6, v7, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    const/16 v1, 0x61

    :goto_c
    const/16 v6, 0x76

    const/16 v7, 0xc

    if-ge v1, v6, :cond_c

    int-to-byte v6, v1

    aput-byte v6, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v8, -0x8b2028d

    if-eq v6, v8, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    const/16 v1, 0x4a

    :goto_d
    const/16 v6, 0x5a

    if-ge v1, v6, :cond_d

    const/16 v6, 0xd

    int-to-byte v8, v1

    aput-byte v8, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v8, 0x2969e20

    if-eq v6, v8, :cond_d

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    const/16 v1, 0x5d

    :goto_e
    const/16 v6, 0x6d

    if-ge v1, v6, :cond_e

    const/16 v6, 0xe

    int-to-byte v8, v1

    aput-byte v8, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v8, -0x29fbfa28

    if-eq v6, v8, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_e
    const/16 v1, 0x43

    move v6, v1

    :goto_f
    const/16 v8, 0x55

    if-ge v6, v8, :cond_f

    const/16 v8, 0xf

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, 0x57f17dae

    if-eq v8, v9, :cond_f

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_f
    const/16 v6, 0x4e

    :goto_10
    const/16 v8, 0x64

    if-ge v6, v8, :cond_10

    const/16 v8, 0x10

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x6036235f

    if-eq v8, v9, :cond_10

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_10
    const/16 v6, -0x13

    :goto_11
    const/4 v8, -0x5

    if-ge v6, v8, :cond_11

    const/16 v8, 0x11

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x711006a8

    if-eq v8, v9, :cond_11

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_11
    const/16 v6, 0x3c

    :goto_12
    const/16 v8, 0x57

    if-ge v6, v8, :cond_12

    const/16 v8, 0x12

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, 0x18b9a261

    if-eq v8, v9, :cond_12

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_12
    const/16 v6, -0x79

    :goto_13
    const/16 v8, -0x62

    if-ge v6, v8, :cond_13

    const/16 v8, 0x13

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x723ed272

    if-eq v8, v9, :cond_13

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_13
    const/16 v6, 0x2e

    :goto_14
    const/16 v8, 0x3c

    if-ge v6, v8, :cond_14

    const/16 v8, 0x14

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x2cd5d783

    if-eq v8, v9, :cond_14

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_14
    const/16 v6, -0x2c

    :goto_15
    const/16 v8, -0x19

    if-ge v6, v8, :cond_15

    const/16 v8, 0x15

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x47d3204c

    if-eq v8, v9, :cond_15

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_15
    const/16 v6, -0x25

    :goto_16
    const/16 v8, -0x18

    if-ge v6, v8, :cond_16

    const/16 v8, 0x16

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x3d6b4ad7

    if-eq v8, v9, :cond_16

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_16
    const/4 v6, 0x0

    :goto_17
    const/16 v8, 0x12

    if-ge v6, v8, :cond_17

    const/16 v8, 0x17

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, 0x6b51426d

    if-eq v8, v9, :cond_17

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_17
    const/16 v6, -0x52

    :goto_18
    const/16 v8, -0x34

    if-ge v6, v8, :cond_18

    const/16 v8, 0x18

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x65da3a9d

    if-eq v8, v9, :cond_18

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_18
    const/16 v6, -0x60

    :goto_19
    const/16 v8, -0x59

    if-ge v6, v8, :cond_19

    const/16 v8, 0x19

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, 0x7244b288

    if-eq v8, v9, :cond_19

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_19
    move v6, v2

    :goto_1a
    const/16 v8, 0x58

    if-ge v6, v8, :cond_1a

    const/16 v8, 0x1a

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x17848d40

    if-eq v8, v9, :cond_1a

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_1a
    const/16 v6, 0x34

    :goto_1b
    const/16 v8, 0x3d

    if-ge v6, v8, :cond_1b

    const/16 v8, 0x1b

    int-to-byte v9, v6

    aput-byte v9, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v8

    const v9, -0x56339b6a

    if-eq v8, v9, :cond_1b

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_1b
    const/16 v6, 0x22

    :goto_1c
    const/16 v8, 0x33

    if-ge v6, v8, :cond_1c

    const/16 v9, 0x1c

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0x5e879c79

    if-eq v9, v10, :cond_1c

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_1c
    const/16 v6, 0x74

    :goto_1d
    const/16 v9, 0x75

    if-ge v6, v9, :cond_1d

    const/16 v9, 0x1d

    const/16 v10, 0x74

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0x5844bbf4

    if-eq v9, v10, :cond_1d

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_1d
    const/16 v6, -0x65

    :goto_1e
    const/16 v9, -0x56

    if-ge v6, v9, :cond_1e

    const/16 v9, 0x1e

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0x44ac866d

    if-eq v9, v10, :cond_1e

    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v6, -0x8

    :goto_1f
    const/16 v9, 0x8

    if-ge v6, v9, :cond_1f

    const/16 v9, 0x1f

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0x345218f3

    if-eq v9, v10, :cond_1f

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_1f
    const/16 v6, 0x14

    :goto_20
    const/16 v9, 0x26

    if-ge v6, v9, :cond_20

    const/16 v9, 0x20

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0x894ea8a

    if-eq v9, v10, :cond_20

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_20
    const/16 v6, -0x74

    :goto_21
    const/16 v9, -0x71

    if-ge v6, v9, :cond_21

    const/16 v9, 0x21

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, 0xbeeb710

    if-eq v9, v10, :cond_21

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_21
    const/16 v6, -0x22

    :goto_22
    if-ge v6, v4, :cond_22

    const/16 v9, 0x22

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v9

    const v10, -0x3951aa84

    if-eq v9, v10, :cond_22

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_22
    const/16 v6, 0x24

    move v9, v6

    :goto_23
    const/16 v10, 0x2e

    if-ge v9, v10, :cond_23

    const/16 v10, 0x23

    int-to-byte v11, v9

    aput-byte v11, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v11, -0x79283c58

    if-eq v10, v11, :cond_23

    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    :cond_23
    const/16 v9, -0x5b

    :goto_24
    const/16 v10, -0x48

    if-ge v9, v10, :cond_24

    int-to-byte v10, v9

    aput-byte v10, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v11, 0x594bd3f7

    if-eq v10, v11, :cond_24

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_24
    const/16 v9, 0x14

    :goto_25
    if-ge v9, v6, :cond_25

    const/16 v10, 0x25

    int-to-byte v11, v9

    aput-byte v11, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v11, 0x568b3da2

    if-eq v10, v11, :cond_25

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_25
    const/16 v9, -0x40

    :goto_26
    const/16 v10, -0x2e

    if-ge v9, v10, :cond_26

    const/16 v10, 0x26

    int-to-byte v11, v9

    aput-byte v11, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v11, 0x410a7c33

    if-eq v10, v11, :cond_26

    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    :cond_26
    const/16 v9, -0x44

    :goto_27
    const/16 v10, -0x2a

    if-ge v9, v10, :cond_27

    const/16 v10, 0x27

    int-to-byte v11, v9

    aput-byte v11, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v11, 0x133b6907

    if-eq v10, v11, :cond_27

    add-int/lit8 v9, v9, 0x1

    goto :goto_27

    :cond_27
    const/16 v9, -0x2f

    move v10, v9

    :goto_28
    const/16 v11, -0x20

    if-ge v10, v11, :cond_28

    const/16 v11, 0x28

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, 0x39eee21f

    if-eq v11, v12, :cond_28

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_28
    const/16 v10, -0x1a

    :goto_29
    if-ge v10, v4, :cond_29

    const/16 v11, 0x29

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, -0x40c71e8b

    if-eq v11, v12, :cond_29

    add-int/lit8 v10, v10, 0x1

    goto :goto_29

    :cond_29
    const/16 v10, -0x2b

    :goto_2a
    const/16 v11, -0x16

    if-ge v10, v11, :cond_2a

    const/16 v11, 0x2a

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, -0x5195419d

    if-eq v11, v12, :cond_2a

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    :cond_2a
    const/4 v10, -0x6

    :goto_2b
    const/16 v11, 0xe

    if-ge v10, v11, :cond_2b

    const/16 v11, 0x2b

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, -0x7065b1cf

    if-eq v11, v12, :cond_2b

    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    :cond_2b
    move v10, v3

    :goto_2c
    const/16 v11, 0x18

    if-ge v10, v11, :cond_2c

    const/16 v11, 0x2c

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, -0x3f8ebce

    if-eq v11, v12, :cond_2c

    add-int/lit8 v10, v10, 0x1

    goto :goto_2c

    :cond_2c
    const/16 v10, 0x37

    :goto_2d
    if-ge v10, v2, :cond_2d

    const/16 v11, 0x2d

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, 0x62ae84a2

    if-eq v11, v12, :cond_2d

    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    :cond_2d
    const/16 v10, -0x57

    :goto_2e
    const/16 v11, -0x3d

    if-ge v10, v11, :cond_2e

    const/16 v11, 0x2e

    int-to-byte v12, v10

    aput-byte v12, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v12, 0x658619ce

    if-eq v11, v12, :cond_2e

    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    :cond_2e
    const/16 v10, -0x62

    :goto_2f
    const/16 v11, -0x5a

    const/16 v12, 0x2f

    if-ge v10, v11, :cond_2f

    int-to-byte v11, v10

    aput-byte v11, v0, v12

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, 0x273326c0

    if-eq v11, v13, :cond_2f

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_2f
    const/16 v10, -0x54

    :goto_30
    const/16 v11, -0x4d

    if-ge v10, v11, :cond_30

    const/16 v11, 0x30

    int-to-byte v13, v10

    aput-byte v13, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, 0x2379bf0c

    if-eq v11, v13, :cond_30

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_30
    const/16 v10, -0x6d

    :goto_31
    const/16 v11, -0x5b

    if-ge v10, v11, :cond_31

    const/16 v11, 0x31

    int-to-byte v13, v10

    aput-byte v13, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, 0x17e96f80

    if-eq v11, v13, :cond_31

    add-int/lit8 v10, v10, 0x1

    goto :goto_31

    :cond_31
    const/16 v10, 0x40

    :goto_32
    const/16 v11, 0x52

    if-ge v10, v11, :cond_32

    const/16 v11, 0x32

    int-to-byte v13, v10

    aput-byte v13, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, -0x6f6cef7

    if-eq v11, v13, :cond_32

    add-int/lit8 v10, v10, 0x1

    goto :goto_32

    :cond_32
    const/16 v10, -0x5c

    :goto_33
    const/16 v11, -0x55

    if-ge v10, v11, :cond_33

    int-to-byte v11, v10

    aput-byte v11, v0, v8

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, -0x3c9158a5

    if-eq v11, v13, :cond_33

    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_33
    const/16 v10, 0x53

    :goto_34
    const/16 v11, 0x69

    if-ge v10, v11, :cond_34

    const/16 v11, 0x34

    int-to-byte v13, v10

    aput-byte v13, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v13, 0x4f1c89db

    if-eq v11, v13, :cond_34

    add-int/lit8 v10, v10, 0x1

    goto :goto_34

    :cond_34
    const/16 v10, -0x4b

    :goto_35
    const/16 v11, -0x41

    if-ge v10, v11, :cond_35

    const/16 v13, 0x35

    int-to-byte v14, v10

    aput-byte v14, v0, v13

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v13

    const v14, 0xa61db54

    if-eq v13, v14, :cond_35

    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    :cond_35
    const/16 v10, -0x7e

    :goto_36
    const/16 v13, -0x73

    if-ge v10, v13, :cond_36

    const/16 v13, 0x36

    int-to-byte v14, v10

    aput-byte v14, v0, v13

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v13

    const v14, -0x5174c85e

    if-eq v13, v14, :cond_36

    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    :cond_36
    const/4 v10, 0x6

    :goto_37
    const/16 v13, 0x18

    if-ge v10, v13, :cond_37

    const/16 v13, 0x37

    int-to-byte v14, v10

    aput-byte v14, v0, v13

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v13

    const v14, -0x4f2b1a82

    if-eq v13, v14, :cond_37

    add-int/lit8 v10, v10, 0x1

    goto :goto_37

    :cond_37
    const/16 v10, -0x77

    :goto_38
    const/16 v13, -0x72

    if-ge v10, v13, :cond_38

    const/16 v14, 0x38

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0x35cc09d1

    if-eq v14, v15, :cond_38

    add-int/lit8 v10, v10, 0x1

    goto :goto_38

    :cond_38
    const/16 v10, -0x16

    :goto_39
    if-gtz v10, :cond_39

    const/16 v14, 0x39

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x34b280f9    # -1.3467399E7f

    if-eq v14, v15, :cond_39

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    :cond_39
    const/16 v10, 0x40

    :goto_3a
    const/16 v14, 0x52

    if-ge v10, v14, :cond_3a

    const/16 v14, 0x3a

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0x3d59e6a1

    if-eq v14, v15, :cond_3a

    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_3a
    const/16 v10, -0x63

    :goto_3b
    const/16 v14, -0x50

    if-ge v10, v14, :cond_3b

    const/16 v14, 0x3b

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x572adbc8

    if-eq v14, v15, :cond_3b

    add-int/lit8 v10, v10, 0x1

    goto :goto_3b

    :cond_3b
    const/16 v10, -0x40

    :goto_3c
    const/16 v14, -0x32

    if-ge v10, v14, :cond_3c

    const/16 v14, 0x3c

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x10973612

    if-eq v14, v15, :cond_3c

    add-int/lit8 v10, v10, 0x1

    goto :goto_3c

    :cond_3c
    const/16 v10, 0x16

    :goto_3d
    const/16 v14, 0x1b

    if-ge v10, v14, :cond_3d

    const/16 v14, 0x3d

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x69ca38d8

    if-eq v14, v15, :cond_3d

    add-int/lit8 v10, v10, 0x1

    goto :goto_3d

    :cond_3d
    const/16 v10, -0x71

    :goto_3e
    const/16 v14, -0x5a

    if-ge v10, v14, :cond_3e

    int-to-byte v14, v10

    aput-byte v14, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0x4e4d7995    # 8.6182432E8f

    if-eq v14, v15, :cond_3e

    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    :cond_3e
    const/16 v10, 0x34

    :goto_3f
    const/16 v14, 0x45

    if-ge v10, v14, :cond_3f

    const/16 v14, 0x3f

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x22030e18

    if-eq v14, v15, :cond_3f

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    :cond_3f
    const/16 v10, -0x7e

    :goto_40
    const/16 v14, -0x73

    if-ge v10, v14, :cond_40

    const/16 v14, 0x40

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x37253efa

    if-eq v14, v15, :cond_40

    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    :cond_40
    const/16 v10, -0x6d

    :goto_41
    const/16 v14, -0x5f

    if-ge v10, v14, :cond_41

    const/16 v14, 0x41

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0x574e28c5

    if-eq v14, v15, :cond_41

    add-int/lit8 v10, v10, 0x1

    goto :goto_41

    :cond_41
    const/16 v10, 0x3d

    :goto_42
    const/16 v14, 0x4d

    if-ge v10, v14, :cond_42

    const/16 v14, 0x42

    int-to-byte v15, v10

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0xe3910b5

    if-eq v14, v15, :cond_42

    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    :cond_42
    const/16 v10, -0x12

    move v14, v10

    :goto_43
    const/4 v15, 0x3

    if-ge v14, v15, :cond_43

    int-to-byte v15, v14

    aput-byte v15, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v15

    const v3, -0x2ba85d83

    if-eq v15, v3, :cond_43

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x1

    goto :goto_43

    :cond_43
    const/16 v3, 0x45

    :goto_44
    const/16 v14, 0x55

    if-ge v3, v14, :cond_44

    const/16 v14, 0x44

    int-to-byte v15, v3

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, 0x3cb1ed94

    if-eq v14, v15, :cond_44

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_44
    const/16 v3, -0x59

    :goto_45
    const/16 v14, -0x49

    if-ge v3, v14, :cond_45

    const/16 v14, 0x45

    int-to-byte v15, v3

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v14

    const v15, -0x74395909

    if-eq v14, v15, :cond_45

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_45
    const/16 v3, 0x47

    :goto_46
    const/16 v14, 0x5b

    if-ge v3, v14, :cond_46

    const/16 v15, 0x46

    int-to-byte v6, v3

    aput-byte v6, v0, v15

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v15, 0x6296d815

    if-eq v6, v15, :cond_46

    add-int/lit8 v3, v3, 0x1

    const/16 v6, 0x24

    goto :goto_46

    :cond_46
    const/16 v3, -0x55

    :goto_47
    const/16 v6, -0x39

    if-ge v3, v6, :cond_47

    const/16 v6, 0x47

    int-to-byte v15, v3

    aput-byte v15, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v15, -0x55a6e8ac

    if-eq v6, v15, :cond_47

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_47
    const/16 v3, -0x59

    :goto_48
    const/16 v6, -0x4f

    if-ge v3, v6, :cond_48

    const/16 v6, 0x48

    int-to-byte v15, v3

    aput-byte v15, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v6

    const v15, 0x4670c187

    if-eq v6, v15, :cond_48

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_48
    const/16 v3, 0x22

    :goto_49
    const/16 v6, 0x49

    if-ge v3, v12, :cond_49

    int-to-byte v15, v3

    aput-byte v15, v0, v6

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v15

    const v7, -0x6820e2d6

    if-eq v15, v7, :cond_49

    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0xc

    goto :goto_49

    :cond_49
    const/16 v3, -0x3c

    :goto_4a
    if-ge v3, v9, :cond_4a

    const/16 v7, 0x4a

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x5cedfb9f

    if-eq v7, v15, :cond_4a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_4a
    const/16 v3, -0x1a

    :goto_4b
    const/16 v7, -0xf

    if-ge v3, v7, :cond_4b

    const/16 v7, 0x4b

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x4216fef9

    if-eq v7, v15, :cond_4b

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_4b
    const/16 v3, -0x68

    :goto_4c
    const/16 v7, -0x65

    if-ge v3, v7, :cond_4c

    const/16 v7, 0x4c

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x3375ff51    # -7.2353144E7f

    if-eq v7, v15, :cond_4c

    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_4c
    const/16 v3, -0x78

    :goto_4d
    const/16 v7, -0x61

    if-ge v3, v7, :cond_4d

    const/16 v7, 0x4d

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x394534d1

    if-eq v7, v15, :cond_4d

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_4d
    const/16 v3, 0x1e

    :goto_4e
    const/16 v7, 0x2c

    if-ge v3, v7, :cond_4e

    const/16 v7, 0x4e

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x19e255d2

    if-eq v7, v15, :cond_4e

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_4e
    const/16 v3, -0x29

    :goto_4f
    const/16 v7, -0x1a

    if-ge v3, v7, :cond_4f

    const/16 v7, 0x4f

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x6a03d47f

    if-eq v7, v15, :cond_4f

    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_4f
    move v3, v11

    :goto_50
    const/16 v7, -0x32

    if-ge v3, v7, :cond_50

    const/16 v7, 0x50

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x615d6ab2

    if-eq v7, v15, :cond_50

    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    :cond_50
    const/16 v3, 0x39

    :goto_51
    const/16 v7, 0x3c

    if-ge v3, v7, :cond_51

    const/16 v7, 0x51

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x3ee14812

    if-eq v7, v15, :cond_51

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_51
    const/16 v3, -0x5d

    :goto_52
    const/16 v7, -0x44

    if-ge v3, v7, :cond_52

    const/16 v7, 0x52

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x10945a98

    if-eq v7, v15, :cond_52

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_52
    const/16 v3, 0x1f

    :goto_53
    const/16 v7, 0x2b

    if-ge v3, v7, :cond_53

    const/16 v7, 0x53

    int-to-byte v15, v3

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x3d2d6974

    if-eq v7, v15, :cond_53

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_53
    const/16 v3, -0x31

    move v7, v3

    :goto_54
    const/16 v15, -0x25

    if-ge v7, v15, :cond_54

    const/16 v15, 0x54

    int-to-byte v11, v7

    aput-byte v11, v0, v15

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x7aec355

    if-eq v11, v15, :cond_54

    add-int/lit8 v7, v7, 0x1

    const/16 v11, -0x41

    goto :goto_54

    :cond_54
    const/16 v7, 0x15

    :goto_55
    const/16 v11, 0x28

    if-ge v7, v11, :cond_55

    const/16 v11, 0x55

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x4a7f363b    # 4181390.8f

    if-eq v11, v15, :cond_55

    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    :cond_55
    const/16 v7, -0x5d

    :goto_56
    const/16 v11, -0x4c

    if-ge v7, v11, :cond_56

    const/16 v11, 0x56

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x36c8ae25

    if-eq v11, v15, :cond_56

    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_56
    const/16 v7, 0x52

    :goto_57
    const/16 v11, 0x66

    if-ge v7, v11, :cond_57

    const/16 v11, 0x57

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x1c47311c

    if-eq v11, v15, :cond_57

    add-int/lit8 v7, v7, 0x1

    goto :goto_57

    :cond_57
    const/16 v7, 0x22

    :goto_58
    const/16 v11, 0x32

    if-ge v7, v11, :cond_58

    const/16 v11, 0x58

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x692ffa33

    if-eq v11, v15, :cond_58

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_58
    const/16 v7, -0x56

    :goto_59
    const/16 v11, -0x43

    if-ge v7, v11, :cond_59

    const/16 v11, 0x59

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x4e860552

    if-eq v11, v15, :cond_59

    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    :cond_59
    const/16 v7, 0x39

    :goto_5a
    const/16 v11, 0x48

    if-ge v7, v11, :cond_5a

    const/16 v11, 0x5a

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0xf221915

    if-eq v11, v15, :cond_5a

    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    :cond_5a
    const/16 v11, -0x80

    :goto_5b
    const/16 v15, -0x76

    if-ge v11, v15, :cond_5b

    int-to-byte v15, v11

    aput-byte v15, v0, v14

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v15

    const v7, 0x3dc23ba4

    if-eq v15, v7, :cond_5b

    add-int/lit8 v11, v11, 0x1

    goto :goto_5b

    :cond_5b
    move v7, v13

    :goto_5c
    const/16 v11, -0x5a

    if-ge v7, v11, :cond_5c

    const/16 v11, 0x5c

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x271ebefa

    if-eq v11, v15, :cond_5c

    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    :cond_5c
    const/16 v7, -0x52

    :goto_5d
    const/16 v11, -0x3b

    if-ge v7, v11, :cond_5d

    const/16 v11, 0x5d

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x6d587d07

    if-eq v11, v15, :cond_5d

    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_5d
    const/16 v7, -0x44

    :goto_5e
    const/16 v11, -0x33

    if-ge v7, v11, :cond_5e

    const/16 v11, 0x5e

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0xf2039a1

    if-eq v11, v15, :cond_5e

    add-int/lit8 v7, v7, 0x1

    goto :goto_5e

    :cond_5e
    const/16 v7, -0x3e

    :goto_5f
    const/16 v11, -0x2e

    if-ge v7, v11, :cond_5f

    const/16 v11, 0x5f

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x1df14d10

    if-eq v11, v15, :cond_5f

    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    :cond_5f
    const/16 v7, 0x50

    :goto_60
    const/16 v11, 0x68

    if-ge v7, v11, :cond_60

    const/16 v11, 0x60

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x5492eef4

    if-eq v11, v15, :cond_60

    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_60
    const/16 v7, 0xc

    :goto_61
    const/16 v11, 0x1d

    if-ge v7, v11, :cond_61

    const/16 v11, 0x61

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x3646ead0

    if-eq v11, v15, :cond_61

    add-int/lit8 v7, v7, 0x1

    goto :goto_61

    :cond_61
    const/16 v7, -0x5e

    :goto_62
    const/16 v11, -0x56

    if-ge v7, v11, :cond_62

    const/16 v11, 0x62

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x5cbc5579

    if-eq v11, v15, :cond_62

    add-int/lit8 v7, v7, 0x1

    goto :goto_62

    :cond_62
    move v7, v12

    :goto_63
    const/16 v11, 0x3f

    if-ge v7, v11, :cond_63

    const/16 v11, 0x63

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x9445692

    if-eq v11, v15, :cond_63

    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    :cond_63
    const/16 v7, 0x4d

    :goto_64
    const/16 v11, 0x56

    if-ge v7, v11, :cond_64

    const/16 v11, 0x64

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x3193f8a2

    if-eq v11, v15, :cond_64

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_64
    const/16 v7, 0x59

    :goto_65
    const/16 v11, 0x6a

    if-ge v7, v11, :cond_65

    int-to-byte v11, v7

    aput-byte v11, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x79ba1255

    if-eq v11, v15, :cond_65

    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    :cond_65
    const/16 v7, -0x6b

    :goto_66
    const/16 v11, -0x57

    if-ge v7, v11, :cond_66

    const/16 v11, 0x66

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x16650a1d

    if-eq v11, v15, :cond_66

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_66
    const/16 v7, 0x39

    :goto_67
    const/16 v11, 0x4c

    if-ge v7, v11, :cond_67

    const/16 v11, 0x67

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x53e3fa23

    if-eq v11, v15, :cond_67

    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    :cond_67
    const/16 v7, -0x7a

    :goto_68
    const/16 v11, -0x6c

    if-ge v7, v11, :cond_68

    const/16 v11, 0x68

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0xe405c6e

    if-eq v11, v15, :cond_68

    add-int/lit8 v7, v7, 0x1

    goto :goto_68

    :cond_68
    const/16 v7, -0x7f

    :goto_69
    if-ge v7, v13, :cond_69

    const/16 v11, 0x69

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, -0x769d1a75

    if-eq v11, v15, :cond_69

    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    :cond_69
    const/16 v7, -0x15

    :goto_6a
    const/16 v11, -0x9

    if-ge v7, v11, :cond_6a

    const/16 v11, 0x6a

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x1e4add6c

    if-eq v11, v15, :cond_6a

    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    :cond_6a
    const/16 v7, -0x48

    :goto_6b
    if-ge v7, v3, :cond_6b

    const/16 v11, 0x6b

    int-to-byte v15, v7

    aput-byte v15, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v11

    const v15, 0x47761504

    if-eq v11, v15, :cond_6b

    add-int/lit8 v7, v7, 0x1

    goto :goto_6b

    :cond_6b
    const/16 v7, 0x62

    :goto_6c
    const/16 v11, 0x73

    if-ge v7, v11, :cond_6c

    const/16 v15, 0x6c

    int-to-byte v5, v7

    aput-byte v5, v0, v15

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v15, -0x6a8f76e2

    if-eq v5, v15, :cond_6c

    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x65

    goto :goto_6c

    :cond_6c
    const/16 v5, -0x6c

    :goto_6d
    const/16 v7, -0x62

    if-ge v5, v7, :cond_6d

    const/16 v7, 0x6d

    int-to-byte v15, v5

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x46469d2d

    if-eq v7, v15, :cond_6d

    add-int/lit8 v5, v5, 0x1

    goto :goto_6d

    :cond_6d
    const/16 v5, -0x70

    :goto_6e
    const/16 v7, -0x5f

    if-ge v5, v7, :cond_6e

    const/16 v7, 0x6e

    int-to-byte v15, v5

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x69e56c7

    if-eq v7, v15, :cond_6e

    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    :cond_6e
    const/16 v5, 0x36

    :goto_6f
    const/16 v7, 0x47

    if-ge v5, v7, :cond_6f

    const/16 v7, 0x6f

    int-to-byte v15, v5

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x184f266c

    if-eq v7, v15, :cond_6f

    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    :cond_6f
    const/16 v5, 0x41

    :goto_70
    const/16 v7, 0x48

    if-ge v5, v7, :cond_70

    const/16 v7, 0x70

    int-to-byte v15, v5

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, -0x120d8111

    if-eq v7, v15, :cond_70

    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_70
    const/16 v5, 0x50

    :goto_71
    const/16 v7, 0x66

    if-ge v5, v7, :cond_71

    const/16 v7, 0x71

    int-to-byte v15, v5

    aput-byte v15, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v15, 0x6519cd1

    if-eq v7, v15, :cond_71

    add-int/lit8 v5, v5, 0x1

    goto :goto_71

    :cond_71
    const/4 v5, -0x4

    :goto_72
    const/16 v7, 0xe

    const/16 v15, 0x72

    if-ge v5, v7, :cond_72

    int-to-byte v7, v5

    aput-byte v7, v0, v15

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v13, 0x46cf69d0

    if-eq v7, v13, :cond_72

    add-int/lit8 v5, v5, 0x1

    const/16 v13, -0x72

    goto :goto_72

    :cond_72
    const/16 v5, -0x4c

    :goto_73
    if-ge v5, v9, :cond_73

    int-to-byte v7, v5

    aput-byte v7, v0, v11

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v13, 0x2955fe27

    if-eq v7, v13, :cond_73

    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    :cond_73
    const/16 v5, 0x5c

    :goto_74
    const/16 v7, 0x64

    if-ge v5, v7, :cond_74

    const/16 v7, 0x74

    int-to-byte v13, v5

    aput-byte v13, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v13, -0x765b6315

    if-eq v7, v13, :cond_74

    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    :cond_74
    const/16 v5, -0x72

    :goto_75
    const/16 v7, -0x69

    if-ge v5, v7, :cond_75

    const/16 v7, 0x75

    int-to-byte v13, v5

    aput-byte v13, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v13, -0x95bf3dd

    if-eq v7, v13, :cond_75

    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    :cond_75
    const/16 v5, -0x14

    :goto_76
    const/16 v7, -0xd

    if-ge v5, v7, :cond_76

    const/16 v13, 0x76

    int-to-byte v3, v5

    aput-byte v3, v0, v13

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1a7dbd90

    if-eq v3, v13, :cond_76

    add-int/lit8 v5, v5, 0x1

    const/16 v3, -0x31

    goto :goto_76

    :cond_76
    const/16 v3, -0x80

    :goto_77
    const/16 v5, -0x78

    if-ge v3, v5, :cond_77

    const/16 v5, 0x77

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, 0x30115790

    if-eq v5, v13, :cond_77

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    :cond_77
    const/16 v3, -0x55

    :goto_78
    const/16 v5, -0x44

    if-ge v3, v5, :cond_78

    const/16 v5, 0x78

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, 0xc9d6703

    if-eq v5, v13, :cond_78

    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    :cond_78
    const/16 v3, 0x6e

    :goto_79
    const/16 v5, 0x7e

    if-ge v3, v5, :cond_79

    const/16 v5, 0x79

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, -0x19977d57

    if-eq v5, v13, :cond_79

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_79
    const/16 v3, 0x48

    :goto_7a
    const/16 v5, 0x53

    if-ge v3, v5, :cond_7a

    const/16 v5, 0x7a

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, 0x7c141ad6

    if-eq v5, v13, :cond_7a

    add-int/lit8 v3, v3, 0x1

    goto :goto_7a

    :cond_7a
    const/16 v3, -0x80

    :goto_7b
    const/16 v5, -0x78

    if-ge v3, v5, :cond_7b

    const/16 v5, 0x7b

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, -0x6dcbb50a

    if-eq v5, v13, :cond_7b

    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    :cond_7b
    const/16 v3, 0x39

    :goto_7c
    const/16 v5, 0x51

    if-ge v3, v5, :cond_7c

    const/16 v5, 0x7c

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, -0x75a4cb8d

    if-eq v5, v13, :cond_7c

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    :cond_7c
    const/16 v3, -0x44

    :goto_7d
    const/16 v5, -0x33

    if-ge v3, v5, :cond_7d

    const/16 v5, 0x7d

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, 0x2fa6cea2

    if-eq v5, v13, :cond_7d

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_7d
    const/16 v3, -0x3c

    :goto_7e
    const/16 v5, -0x2e

    if-ge v3, v5, :cond_7e

    const/16 v5, 0x7e

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, -0x37a1c24b

    if-eq v5, v13, :cond_7e

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_7e
    const/16 v3, 0x24

    :goto_7f
    const/16 v5, 0x31

    if-ge v3, v5, :cond_7f

    const/16 v5, 0x7f

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v13, 0x1b998110

    if-eq v5, v13, :cond_7f

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_7f
    const/16 v3, -0x1c

    :goto_80
    const/16 v5, 0x80

    if-ge v3, v4, :cond_80

    int-to-byte v13, v3

    aput-byte v13, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v13

    const v4, 0x1b09417a

    if-eq v13, v4, :cond_80

    add-int/lit8 v3, v3, 0x1

    const/16 v4, -0xb

    goto :goto_80

    :cond_80
    const/16 v3, 0x46

    :goto_81
    if-ge v3, v14, :cond_81

    const/16 v4, 0x81

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x464263ac

    if-eq v4, v13, :cond_81

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_81
    const/16 v3, -0x52

    :goto_82
    const/16 v4, -0x42

    if-ge v3, v4, :cond_82

    const/16 v4, 0x82

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x1b2b65f

    if-eq v4, v13, :cond_82

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_82
    const/16 v3, -0x25

    :goto_83
    const/16 v4, -0x10

    if-ge v3, v4, :cond_83

    const/16 v4, 0x83

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x3d9faec8

    if-eq v4, v13, :cond_83

    add-int/lit8 v3, v3, 0x1

    goto :goto_83

    :cond_83
    const/4 v3, 0x3

    :goto_84
    const/16 v4, 0x13

    if-ge v3, v4, :cond_84

    const/16 v4, 0x84

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x6c8599de

    if-eq v4, v13, :cond_84

    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_84
    const/16 v3, -0x55

    :goto_85
    const/16 v4, -0x3a

    if-ge v3, v4, :cond_85

    const/16 v4, 0x85

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0xafe008f

    if-eq v4, v13, :cond_85

    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    :cond_85
    const/16 v3, -0x49

    :goto_86
    const/16 v4, -0x37

    if-ge v3, v4, :cond_86

    const/16 v4, 0x86

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x736a9f9a

    if-eq v4, v13, :cond_86

    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_86
    const/16 v3, 0x1c

    :goto_87
    const/16 v4, 0x28

    if-ge v3, v4, :cond_87

    const/16 v4, 0x87

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x5da649ce

    if-eq v4, v13, :cond_87

    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_87
    const/16 v3, 0x75

    :goto_88
    if-ge v3, v5, :cond_88

    const/16 v4, 0x88

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x3eae3fd7

    if-eq v4, v13, :cond_88

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    :cond_88
    const/16 v3, -0x49

    :goto_89
    const/16 v4, -0x36

    if-ge v3, v4, :cond_89

    const/16 v4, 0x89

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x2f344b2b

    if-eq v4, v13, :cond_89

    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    :cond_89
    const/16 v3, 0x61

    :goto_8a
    const/16 v4, 0x75

    if-ge v3, v4, :cond_8a

    const/16 v4, 0x8a

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x2e916122

    if-eq v4, v13, :cond_8a

    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    :cond_8a
    const/16 v3, -0x80

    :goto_8b
    const/16 v4, -0x78

    if-ge v3, v4, :cond_8b

    const/16 v4, 0x8b

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x4c5ae8fc

    if-eq v4, v13, :cond_8b

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_8b
    const/4 v3, 0x0

    :goto_8c
    const/16 v4, 0x19

    if-ge v3, v4, :cond_8c

    const/16 v4, 0x8c

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x5eb16ff1

    if-eq v4, v13, :cond_8c

    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    :cond_8c
    const/16 v3, 0x14

    :goto_8d
    const/16 v4, 0x2e

    if-ge v3, v4, :cond_8d

    const/16 v4, 0x8d

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x78f20bbb

    if-eq v4, v13, :cond_8d

    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    :cond_8d
    const/16 v3, -0x15

    :goto_8e
    const/4 v4, -0x4

    if-ge v3, v4, :cond_8e

    const/16 v4, 0x8e

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x3042e2fc

    if-eq v4, v13, :cond_8e

    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    :cond_8e
    const/16 v3, -0x64

    :goto_8f
    const/16 v4, -0x57

    if-ge v3, v4, :cond_8f

    const/16 v4, 0x8f

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x1a82d335

    if-eq v4, v13, :cond_8f

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :cond_8f
    const/16 v3, 0x76

    :goto_90
    if-ge v3, v5, :cond_90

    const/16 v4, 0x90

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x2ea55415

    if-eq v4, v13, :cond_90

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_90
    move v3, v9

    :goto_91
    const/16 v4, -0x2a

    if-ge v3, v4, :cond_91

    const/16 v4, 0x91

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x5547db58

    if-eq v4, v13, :cond_91

    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :cond_91
    move v3, v15

    :goto_92
    if-ge v3, v5, :cond_92

    const/16 v4, 0x92

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x50ad5ced

    if-eq v4, v13, :cond_92

    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    :cond_92
    const/16 v3, -0x1b

    :goto_93
    const/4 v4, -0x1

    if-ge v3, v4, :cond_93

    const/16 v4, 0x93

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x6a661813

    if-eq v4, v13, :cond_93

    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    :cond_93
    const/16 v3, -0x1b

    :goto_94
    if-ge v3, v7, :cond_94

    const/16 v4, 0x94

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x6b59f813

    if-eq v4, v13, :cond_94

    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    :cond_94
    const/16 v3, 0x21

    :goto_95
    const/16 v4, 0x2a

    if-ge v3, v4, :cond_95

    const/16 v4, 0x95

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x52bd05af

    if-eq v4, v13, :cond_95

    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    :cond_95
    const/16 v3, 0x54

    :goto_96
    const/16 v4, 0x63

    if-ge v3, v4, :cond_96

    const/16 v4, 0x96

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0xe52b9a3

    if-eq v4, v13, :cond_96

    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    :cond_96
    move v3, v11

    :goto_97
    const/16 v4, 0x7b

    if-ge v3, v4, :cond_97

    const/16 v4, 0x97

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x4dadb375

    if-eq v4, v13, :cond_97

    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    :cond_97
    const/16 v3, 0x36

    :goto_98
    if-ge v3, v1, :cond_98

    const/16 v4, 0x98

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x5fb131f9

    if-eq v4, v13, :cond_98

    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    :cond_98
    move v3, v6

    :goto_99
    const/16 v4, 0x56

    if-ge v3, v4, :cond_99

    const/16 v4, 0x99

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x3e116577

    if-eq v4, v13, :cond_99

    add-int/lit8 v3, v3, 0x1

    goto :goto_99

    :cond_99
    const/16 v3, 0x61

    :goto_9a
    const/16 v4, 0x70

    if-ge v3, v4, :cond_9a

    const/16 v4, 0x9a

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, 0x55e06b48

    if-eq v4, v13, :cond_9a

    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_9a
    move v3, v6

    :goto_9b
    const/16 v4, 0x56

    if-ge v3, v4, :cond_9b

    const/16 v4, 0x9b

    int-to-byte v13, v3

    aput-byte v13, v0, v4

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v4

    const v13, -0x6952641e

    if-eq v4, v13, :cond_9b

    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    :cond_9b
    const/16 v3, -0x1f

    :goto_9c
    const/16 v4, -0xe

    if-ge v3, v4, :cond_9c

    const/16 v13, 0x9c

    int-to-byte v1, v3

    aput-byte v1, v0, v13

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v13, 0x799d5990

    if-eq v1, v13, :cond_9c

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x43

    goto :goto_9c

    :cond_9c
    move v1, v14

    :goto_9d
    const/16 v3, 0x66

    if-ge v1, v3, :cond_9d

    const/16 v3, 0x9d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x38e56ee8

    if-eq v3, v13, :cond_9d

    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    :cond_9d
    const/16 v1, -0x21

    :goto_9e
    const/16 v3, -0xa

    if-ge v1, v3, :cond_9e

    const/16 v3, 0x9e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4b4ea4b6    # 1.3542582E7f

    if-eq v3, v13, :cond_9e

    add-int/lit8 v1, v1, 0x1

    goto :goto_9e

    :cond_9e
    const/16 v1, 0x38

    :goto_9f
    const/16 v3, 0x4f

    if-ge v1, v3, :cond_9f

    const/16 v3, 0x9f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x47f7957e

    if-eq v3, v13, :cond_9f

    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_9f
    const/16 v1, -0x5f

    :goto_a0
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_a0

    const/16 v3, 0xa0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1fd1fbd8

    if-eq v3, v13, :cond_a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    :cond_a0
    const/16 v1, -0x36

    :goto_a1
    const/16 v3, -0x25

    if-ge v1, v3, :cond_a1

    const/16 v3, 0xa1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5aa9cace

    if-eq v3, v13, :cond_a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    :cond_a1
    const/16 v1, -0x34

    :goto_a2
    const/16 v3, -0x1d

    if-ge v1, v3, :cond_a2

    const/16 v3, 0xa2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2339590d

    if-eq v3, v13, :cond_a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    :cond_a2
    move v1, v7

    :goto_a3
    const/4 v3, 0x2

    if-ge v1, v3, :cond_a3

    const/16 v3, 0xa3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2bc73541

    if-eq v3, v13, :cond_a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_a3
    const/4 v1, -0x7

    :goto_a4
    const/4 v3, -0x4

    if-ge v1, v3, :cond_a4

    const/16 v3, 0xa4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x70c9e108

    if-eq v3, v13, :cond_a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    :cond_a4
    const/16 v1, -0x40

    :goto_a5
    const/16 v3, -0x36

    if-ge v1, v3, :cond_a5

    const/16 v3, 0xa5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2a8bde2f

    if-eq v3, v13, :cond_a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a5

    :cond_a5
    const/16 v1, -0x42

    :goto_a6
    if-ge v1, v9, :cond_a6

    const/16 v3, 0xa6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x757f682f

    if-eq v3, v13, :cond_a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    :cond_a6
    const/16 v1, 0xc

    :goto_a7
    const/16 v3, 0x14

    if-ge v1, v3, :cond_a7

    const/16 v3, 0xa7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7179bc98

    if-eq v3, v13, :cond_a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_a7
    const/16 v1, -0x66

    :goto_a8
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_a8

    const/16 v3, 0xa8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6e579d93

    if-eq v3, v13, :cond_a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    :cond_a8
    const/16 v1, 0x28

    :goto_a9
    const/16 v3, 0x39

    if-ge v1, v3, :cond_a9

    const/16 v3, 0xa9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6dc0e349

    if-eq v3, v13, :cond_a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    :cond_a9
    const/16 v1, -0x21

    :goto_aa
    const/16 v3, -0x13

    if-ge v1, v3, :cond_aa

    const/16 v3, 0xaa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x458a74c

    if-eq v3, v13, :cond_aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_aa
    const/16 v1, -0x24

    :goto_ab
    const/16 v3, -0x11

    if-ge v1, v3, :cond_ab

    const/16 v3, 0xab

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x669f1ca6

    if-eq v3, v13, :cond_ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_ab

    :cond_ab
    const/4 v1, -0x3

    :goto_ac
    const/16 v3, 0x9

    if-ge v1, v3, :cond_ac

    const/16 v3, 0xac

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x74fe539c

    if-eq v3, v13, :cond_ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    :cond_ac
    const/16 v1, -0x68

    :goto_ad
    const/16 v3, -0x62

    if-ge v1, v3, :cond_ad

    const/16 v3, 0xad

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x47b248b2

    if-eq v3, v13, :cond_ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    :cond_ad
    const/16 v1, 0x18

    :goto_ae
    const/16 v3, 0x26

    if-ge v1, v3, :cond_ae

    const/16 v3, 0xae

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1a868a9c

    if-eq v3, v13, :cond_ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_ae

    :cond_ae
    const/16 v1, 0x71

    :goto_af
    if-ge v1, v5, :cond_af

    const/16 v3, 0xaf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x52bb502d

    if-eq v3, v13, :cond_af

    add-int/lit8 v1, v1, 0x1

    goto :goto_af

    :cond_af
    const/16 v1, 0x24

    :goto_b0
    const/16 v3, 0x41

    if-ge v1, v3, :cond_b0

    const/16 v3, 0xb0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c5ee536

    if-eq v3, v13, :cond_b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_b0
    const/16 v1, -0x74

    :goto_b1
    const/16 v3, -0x61

    if-ge v1, v3, :cond_b1

    const/16 v3, 0xb1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2f9bc785

    if-eq v3, v13, :cond_b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b1

    :cond_b1
    const/16 v1, -0x57

    :goto_b2
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_b2

    const/16 v3, 0xb2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x72e7a7d1

    if-eq v3, v13, :cond_b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_b2
    const/16 v1, -0x44

    :goto_b3
    const/16 v3, -0x29

    if-ge v1, v3, :cond_b3

    const/16 v3, 0xb3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x33364f14

    if-eq v3, v13, :cond_b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_b3
    const/16 v1, 0x4f

    :goto_b4
    const/16 v3, 0x63

    if-ge v1, v3, :cond_b4

    const/16 v3, 0xb4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x732fee05

    if-eq v3, v13, :cond_b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_b4

    :cond_b4
    const/16 v1, -0x54

    :goto_b5
    const/16 v3, -0x47

    if-ge v1, v3, :cond_b5

    const/16 v3, 0xb5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x76d2a430

    if-eq v3, v13, :cond_b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    :cond_b5
    const/16 v1, 0x64

    :goto_b6
    if-ge v1, v11, :cond_b6

    const/16 v3, 0xb6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x424b6036

    if-eq v3, v13, :cond_b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_b6

    :cond_b6
    const/16 v1, -0x63

    :goto_b7
    const/16 v3, -0x55

    if-ge v1, v3, :cond_b7

    const/16 v3, 0xb7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6f2c3e95

    if-eq v3, v13, :cond_b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    :cond_b7
    const/16 v1, -0x53

    :goto_b8
    const/16 v3, -0x48

    if-ge v1, v3, :cond_b8

    const/16 v3, 0xb8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x9c5e2ff

    if-eq v3, v13, :cond_b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    :cond_b8
    const/16 v1, -0x4f

    :goto_b9
    const/16 v3, -0x47

    if-ge v1, v3, :cond_b9

    const/16 v3, 0xb9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6dd975e9

    if-eq v3, v13, :cond_b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_b9

    :cond_b9
    const/16 v1, -0x17

    :goto_ba
    if-ge v1, v10, :cond_ba

    const/16 v3, 0xba

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x46132943

    if-eq v3, v13, :cond_ba

    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    :cond_ba
    const/16 v1, 0x1c

    :goto_bb
    if-ge v1, v12, :cond_bb

    const/16 v3, 0xbb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3cd01faf

    if-eq v3, v13, :cond_bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_bb
    const/16 v1, 0xc

    :goto_bc
    const/16 v3, 0x27

    if-ge v1, v3, :cond_bc

    const/16 v3, 0xbc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3dfdc992

    if-eq v3, v13, :cond_bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    :cond_bc
    const/4 v1, 0x5

    :goto_bd
    const/16 v3, 0xa

    if-ge v1, v3, :cond_bd

    const/16 v3, 0xbd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4d2d038c

    if-eq v3, v13, :cond_bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_bd

    :cond_bd
    const/16 v1, 0x6a

    :goto_be
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_be

    const/16 v3, 0xbe

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x75113287

    if-eq v3, v13, :cond_be

    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    :cond_be
    const/16 v1, -0x3b

    :goto_bf
    const/16 v3, -0x30

    if-ge v1, v3, :cond_bf

    const/16 v3, 0xbf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xaf44ae2

    if-eq v3, v13, :cond_bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_bf
    const/16 v1, 0x43

    :goto_c0
    const/16 v3, 0x4e

    if-ge v1, v3, :cond_c0

    const/16 v3, 0xc0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x41992964

    if-eq v3, v13, :cond_c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_c0
    const/16 v1, -0x3f

    :goto_c1
    const/16 v3, -0x38

    if-ge v1, v3, :cond_c1

    const/16 v3, 0xc1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x522f9e53

    if-eq v3, v13, :cond_c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    :cond_c1
    const/16 v1, -0x3b

    :goto_c2
    const/16 v3, -0x29

    if-ge v1, v3, :cond_c2

    const/16 v3, 0xc2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x29cc59a0

    if-eq v3, v13, :cond_c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_c2
    const/16 v1, 0x69

    :goto_c3
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_c3

    const/16 v3, 0xc3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x79dd353d

    if-eq v3, v13, :cond_c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c3

    :cond_c3
    const/16 v1, 0x59

    :goto_c4
    const/16 v3, 0x71

    if-ge v1, v3, :cond_c4

    const/16 v3, 0xc4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ebd2d48

    if-eq v3, v13, :cond_c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    :cond_c4
    const/16 v1, 0x63

    :goto_c5
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_c5

    const/16 v3, 0xc5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x587c5b06

    if-eq v3, v13, :cond_c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    :cond_c5
    const/16 v1, 0x65

    :goto_c6
    const/16 v3, 0x79

    if-ge v1, v3, :cond_c6

    const/16 v3, 0xc6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6eec4ba6

    if-eq v3, v13, :cond_c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    :cond_c6
    const/16 v1, 0x37

    :goto_c7
    if-ge v1, v6, :cond_c7

    const/16 v3, 0xc7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xdfc7383

    if-eq v3, v13, :cond_c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    :cond_c7
    const/16 v1, -0x2d

    :goto_c8
    const/16 v3, -0x25

    if-ge v1, v3, :cond_c8

    const/16 v3, 0xc8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x523f69b5

    if-eq v3, v13, :cond_c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_c8

    :cond_c8
    const/16 v1, 0x35

    :goto_c9
    const/16 v3, 0x47

    if-ge v1, v3, :cond_c9

    const/16 v3, 0xc9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x57113ead

    if-eq v3, v13, :cond_c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_c9
    const/16 v1, -0x42

    :goto_ca
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_ca

    const/16 v3, 0xca

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x48f4889b

    if-eq v3, v13, :cond_ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_ca

    :cond_ca
    const/16 v1, -0x3d

    :goto_cb
    const/16 v3, -0x29

    if-ge v1, v3, :cond_cb

    const/16 v3, 0xcb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x20a5e25c

    if-eq v3, v13, :cond_cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    :cond_cb
    const/16 v1, -0x3d

    :goto_cc
    const/16 v3, -0x35

    if-ge v1, v3, :cond_cc

    const/16 v3, 0xcc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5cfbda33

    if-eq v3, v13, :cond_cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_cc

    :cond_cc
    const/16 v1, 0x4c

    :goto_cd
    const/16 v3, 0x63

    if-ge v1, v3, :cond_cd

    const/16 v3, 0xcd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x192a7863

    if-eq v3, v13, :cond_cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_cd
    const/4 v1, 0x5

    :goto_ce
    const/16 v3, 0x21

    if-ge v1, v3, :cond_ce

    const/16 v3, 0xce

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x178c952f

    if-eq v3, v13, :cond_ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_ce
    const/16 v1, 0x4e

    :goto_cf
    const/16 v3, 0x54

    if-ge v1, v3, :cond_cf

    const/16 v3, 0xcf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7accf558

    if-eq v3, v13, :cond_cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_cf

    :cond_cf
    const/16 v1, -0x64

    :goto_d0
    const/16 v3, -0x56

    if-ge v1, v3, :cond_d0

    const/16 v3, 0xd0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7abef2d6

    if-eq v3, v13, :cond_d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    :cond_d0
    const/16 v1, -0x41

    :goto_d1
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_d1

    const/16 v3, 0xd1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c2aa6aa

    if-eq v3, v13, :cond_d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d1

    :cond_d1
    const/16 v1, 0x1d

    :goto_d2
    const/16 v3, 0x28

    if-ge v1, v3, :cond_d2

    const/16 v3, 0xd2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x24ccd422

    if-eq v3, v13, :cond_d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    :cond_d2
    const/16 v1, 0x57

    :goto_d3
    const/16 v3, 0x66

    if-ge v1, v3, :cond_d3

    const/16 v3, 0xd3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x15c4d81

    if-eq v3, v13, :cond_d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_d3
    const/16 v1, -0x5e

    :goto_d4
    const/16 v3, -0x53

    if-ge v1, v3, :cond_d4

    const/16 v3, 0xd4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x14475ee1

    if-eq v3, v13, :cond_d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    :cond_d4
    const/16 v1, 0x45

    :goto_d5
    const/16 v3, 0x54

    if-ge v1, v3, :cond_d5

    const/16 v3, 0xd5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x16a9299d

    if-eq v3, v13, :cond_d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    :cond_d5
    const/16 v1, -0x18

    :goto_d6
    const/16 v3, -0x13

    if-ge v1, v3, :cond_d6

    const/16 v3, 0xd6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x316fa88a

    if-eq v3, v13, :cond_d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_d6
    const/16 v1, 0x28

    :goto_d7
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_d7

    const/16 v3, 0xd7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xf505167

    if-eq v3, v13, :cond_d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_d7

    :cond_d7
    const/16 v1, 0x48

    :goto_d8
    const/16 v3, 0x58

    if-ge v1, v3, :cond_d8

    const/16 v3, 0xd8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2a30d771

    if-eq v3, v13, :cond_d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_d8

    :cond_d8
    const/16 v1, -0x9

    :goto_d9
    const/4 v3, 0x4

    if-ge v1, v3, :cond_d9

    const/16 v3, 0xd9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7bf5673c

    if-eq v3, v13, :cond_d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_d9

    :cond_d9
    const/16 v1, -0x5d

    :goto_da
    const/16 v3, -0x50

    if-ge v1, v3, :cond_da

    const/16 v3, 0xda

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1ac2acc1

    if-eq v3, v13, :cond_da

    add-int/lit8 v1, v1, 0x1

    goto :goto_da

    :cond_da
    const/16 v1, -0x2d

    :goto_db
    const/16 v3, -0x22

    if-ge v1, v3, :cond_db

    const/16 v3, 0xdb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xb5c46fc

    if-eq v3, v13, :cond_db

    add-int/lit8 v1, v1, 0x1

    goto :goto_db

    :cond_db
    const/16 v1, -0x75

    :goto_dc
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_dc

    const/16 v3, 0xdc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x85d6d03

    if-eq v3, v13, :cond_dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_dc
    const/16 v1, 0x31

    :goto_dd
    const/16 v3, 0x36

    if-ge v1, v3, :cond_dd

    const/16 v3, 0xdd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x49172a54    # 619173.25f

    if-eq v3, v13, :cond_dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    :cond_dd
    const/16 v1, 0x27

    :goto_de
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_de

    const/16 v3, 0xde

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x38545f11

    if-eq v3, v13, :cond_de

    add-int/lit8 v1, v1, 0x1

    goto :goto_de

    :cond_de
    const/16 v1, 0x66

    :goto_df
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_df

    const/16 v3, 0xdf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2b7cd459

    if-eq v3, v13, :cond_df

    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    :cond_df
    const/16 v1, 0x1d

    :goto_e0
    const/16 v3, 0x35

    if-ge v1, v3, :cond_e0

    const/16 v3, 0xe0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x65140c8d

    if-eq v3, v13, :cond_e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e0

    :cond_e0
    const/16 v1, 0x23

    :goto_e1
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_e1

    const/16 v3, 0xe1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x36e77606

    if-eq v3, v13, :cond_e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e1

    :cond_e1
    const/16 v1, 0x29

    :goto_e2
    const/16 v3, 0x44

    if-ge v1, v3, :cond_e2

    const/16 v3, 0xe2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x73380b2e

    if-eq v3, v13, :cond_e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    :cond_e2
    const/16 v1, -0x7d

    :goto_e3
    const/16 v3, -0x68

    if-ge v1, v3, :cond_e3

    const/16 v3, 0xe3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6117fa0f

    if-eq v3, v13, :cond_e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e3

    :cond_e3
    const/16 v1, -0x42

    :goto_e4
    const/16 v3, -0x26

    if-ge v1, v3, :cond_e4

    const/16 v3, 0xe4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x24aede78

    if-eq v3, v13, :cond_e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    :cond_e4
    const/16 v1, 0x31

    :goto_e5
    if-ge v1, v2, :cond_e5

    const/16 v3, 0xe5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7f022e73

    if-eq v3, v13, :cond_e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    :cond_e5
    const/16 v1, 0x25

    :goto_e6
    if-ge v1, v8, :cond_e6

    const/16 v3, 0xe6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4aaf1195

    if-eq v3, v13, :cond_e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    :cond_e6
    const/16 v1, -0x6e

    :goto_e7
    const/16 v3, -0x5a

    if-ge v1, v3, :cond_e7

    const/16 v3, 0xe7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x78203978

    if-eq v3, v13, :cond_e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_e7

    :cond_e7
    const/16 v1, 0x71

    :goto_e8
    if-ge v1, v5, :cond_e8

    const/16 v3, 0xe8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x34d1eac2    # -1.1408702E7f

    if-eq v3, v13, :cond_e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_e8
    const/16 v1, 0x7b

    :goto_e9
    if-ge v1, v5, :cond_e9

    const/16 v3, 0xe9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6a5aef4b

    if-eq v3, v13, :cond_e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_e9
    const/16 v1, 0x62

    :goto_ea
    if-ge v1, v11, :cond_ea

    const/16 v3, 0xea

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x781e254d

    if-eq v3, v13, :cond_ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_ea

    :cond_ea
    const/16 v1, -0x58

    :goto_eb
    const/16 v3, -0x50

    if-ge v1, v3, :cond_eb

    const/16 v3, 0xeb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5ba862f9

    if-eq v3, v13, :cond_eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_eb

    :cond_eb
    const/16 v1, -0x65

    :goto_ec
    const/16 v3, -0x4d

    if-ge v1, v3, :cond_ec

    const/16 v3, 0xec

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3459eb35

    if-eq v3, v13, :cond_ec

    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :cond_ec
    const/16 v1, -0x15

    :goto_ed
    const/4 v3, -0x4

    if-ge v1, v3, :cond_ed

    const/16 v3, 0xed

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4e15fcab

    if-eq v3, v13, :cond_ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_ed

    :cond_ed
    const/16 v1, 0x57

    :goto_ee
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_ee

    const/16 v3, 0xee

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6a92d0ec

    if-eq v3, v13, :cond_ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_ee

    :cond_ee
    const/16 v1, -0x50

    :goto_ef
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_ef

    const/16 v3, 0xef

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2b1675c5

    if-eq v3, v13, :cond_ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_ef

    :cond_ef
    const/16 v1, 0x50

    :goto_f0
    const/16 v3, 0x69

    if-ge v1, v3, :cond_f0

    const/16 v3, 0xf0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xc4ccedd

    if-eq v3, v13, :cond_f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_f0

    :cond_f0
    const/4 v1, -0x3

    :goto_f1
    const/4 v3, 0x5

    if-ge v1, v3, :cond_f1

    const/16 v3, 0xf1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5a96c0e6

    if-eq v3, v13, :cond_f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    :cond_f1
    const/16 v1, 0x57

    :goto_f2
    if-ge v1, v15, :cond_f2

    const/16 v3, 0xf2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x244eec50

    if-eq v3, v13, :cond_f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_f2

    :cond_f2
    move v1, v4

    :goto_f3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_f3

    const/16 v3, 0xf3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x33ca8898

    if-eq v3, v13, :cond_f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    :cond_f3
    const/16 v1, -0x1b

    :goto_f4
    const/16 v3, -0xf

    if-ge v1, v3, :cond_f4

    const/16 v3, 0xf4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1ee0070d

    if-eq v3, v13, :cond_f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    :cond_f4
    const/16 v1, 0x3d

    :goto_f5
    const/16 v3, 0x46

    if-ge v1, v3, :cond_f5

    const/16 v3, 0xf5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x46b13c78

    if-eq v3, v13, :cond_f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_f5

    :cond_f5
    const/16 v1, 0x4f

    :goto_f6
    const/16 v3, 0x68

    if-ge v1, v3, :cond_f6

    const/16 v3, 0xf6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x22fdbb04

    if-eq v3, v13, :cond_f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    :cond_f6
    const/16 v1, 0xc

    :goto_f7
    const/16 v3, 0x27

    if-ge v1, v3, :cond_f7

    const/16 v3, 0xf7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7d114b7f

    if-eq v3, v13, :cond_f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    :cond_f7
    const/16 v1, 0x50

    :goto_f8
    const/16 v3, 0x5f

    if-ge v1, v3, :cond_f8

    const/16 v3, 0xf8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4285d873

    if-eq v3, v13, :cond_f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_f8

    :cond_f8
    const/16 v1, -0x4f

    :goto_f9
    const/16 v3, -0x40

    if-ge v1, v3, :cond_f9

    const/16 v3, 0xf9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3c8218ba

    if-eq v3, v13, :cond_f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    :cond_f9
    const/16 v1, -0x41

    :goto_fa
    const/16 v3, -0x3b

    if-ge v1, v3, :cond_fa

    const/16 v3, 0xfa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x64913446

    if-eq v3, v13, :cond_fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_fa

    :cond_fa
    const/16 v1, -0x11

    :goto_fb
    const/4 v3, -0x3

    if-ge v1, v3, :cond_fb

    const/16 v3, 0xfb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3928ff0

    if-eq v3, v13, :cond_fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_fb

    :cond_fb
    const/16 v1, -0x44

    :goto_fc
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_fc

    const/16 v3, 0xfc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x133aafea

    if-eq v3, v13, :cond_fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    :cond_fc
    move v1, v12

    :goto_fd
    const/16 v3, 0x44

    if-ge v1, v3, :cond_fd

    const/16 v3, 0xfd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x36520cb1

    if-eq v3, v13, :cond_fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_fd

    :cond_fd
    const/16 v1, -0x80

    :goto_fe
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_fe

    const/16 v3, 0xfe

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3265a8

    if-eq v3, v13, :cond_fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    :cond_fe
    const/16 v1, -0x44

    :goto_ff
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_ff

    const/16 v3, 0xff

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x54cf9c31

    if-eq v3, v13, :cond_ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_ff

    :cond_ff
    const/16 v1, 0x5e

    :goto_100
    if-ge v1, v11, :cond_100

    const/16 v3, 0x100

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4f4aa5bd

    if-eq v3, v13, :cond_100

    add-int/lit8 v1, v1, 0x1

    goto :goto_100

    :cond_100
    const/16 v1, 0x1d

    :goto_101
    const/16 v3, 0x25

    if-ge v1, v3, :cond_101

    const/16 v3, 0x101

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1b0bae44

    if-eq v3, v13, :cond_101

    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    :cond_101
    const/16 v1, -0x18

    :goto_102
    const/4 v3, 0x5

    if-ge v1, v3, :cond_102

    const/16 v3, 0x102

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1cc2bcfa

    if-eq v3, v13, :cond_102

    add-int/lit8 v1, v1, 0x1

    goto :goto_102

    :cond_102
    const/16 v1, -0x4b

    :goto_103
    const/16 v3, -0x37

    if-ge v1, v3, :cond_103

    const/16 v3, 0x103

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7de86ef2

    if-eq v3, v13, :cond_103

    add-int/lit8 v1, v1, 0x1

    goto :goto_103

    :cond_103
    const/16 v1, 0x7b

    :goto_104
    if-ge v1, v5, :cond_104

    const/16 v3, 0x104

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x42952782

    if-eq v3, v13, :cond_104

    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    :cond_104
    const/16 v1, -0x20

    :goto_105
    const/16 v3, -0xf

    if-ge v1, v3, :cond_105

    const/16 v3, 0x105

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x644a5dea

    if-eq v3, v13, :cond_105

    add-int/lit8 v1, v1, 0x1

    goto :goto_105

    :cond_105
    const/16 v1, -0x6f

    :goto_106
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_106

    const/16 v3, 0x106

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x63aba9bb

    if-eq v3, v13, :cond_106

    add-int/lit8 v1, v1, 0x1

    goto :goto_106

    :cond_106
    const/16 v1, 0x14

    :goto_107
    const/16 v3, 0x1d

    if-ge v1, v3, :cond_107

    const/16 v3, 0x107

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5cbe68e2

    if-eq v3, v13, :cond_107

    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    :cond_107
    const/16 v1, 0x45

    :goto_108
    if-ge v1, v14, :cond_108

    const/16 v3, 0x108

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x271dfb50

    if-eq v3, v13, :cond_108

    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    :cond_108
    const/16 v1, -0x80

    :goto_109
    const/16 v3, -0x70

    if-ge v1, v3, :cond_109

    const/16 v3, 0x109

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x71a8f06d

    if-eq v3, v13, :cond_109

    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    :cond_109
    const/16 v1, -0x5f

    :goto_10a
    const/16 v3, -0x4c

    if-ge v1, v3, :cond_10a

    const/16 v3, 0x10a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x27693f3c

    if-eq v3, v13, :cond_10a

    add-int/lit8 v1, v1, 0x1

    goto :goto_10a

    :cond_10a
    const/4 v1, 0x7

    :goto_10b
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_10b

    const/16 v3, 0x10b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x78153030

    if-eq v3, v13, :cond_10b

    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    :cond_10b
    move v1, v11

    :goto_10c
    const/16 v3, 0x79

    if-ge v1, v3, :cond_10c

    const/16 v3, 0x10c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2fdb1164

    if-eq v3, v13, :cond_10c

    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    :cond_10c
    const/16 v1, -0x1b

    :goto_10d
    if-gez v1, :cond_10d

    const/16 v3, 0x10d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1baad16

    if-eq v3, v13, :cond_10d

    add-int/lit8 v1, v1, 0x1

    goto :goto_10d

    :cond_10d
    const/16 v1, -0x72

    :goto_10e
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_10e

    const/16 v3, 0x10e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ffe2c2

    if-eq v3, v13, :cond_10e

    add-int/lit8 v1, v1, 0x1

    goto :goto_10e

    :cond_10e
    const/16 v1, -0x7c

    :goto_10f
    const/16 v3, -0x70

    if-ge v1, v3, :cond_10f

    const/16 v3, 0x10f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6b8a22e1

    if-eq v3, v13, :cond_10f

    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    :cond_10f
    const/16 v1, -0x27

    :goto_110
    const/16 v3, -0x1f

    if-ge v1, v3, :cond_110

    const/16 v3, 0x110

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x296b350c

    if-eq v3, v13, :cond_110

    add-int/lit8 v1, v1, 0x1

    goto :goto_110

    :cond_110
    const/16 v1, -0x38

    :goto_111
    const/16 v3, -0x26

    if-ge v1, v3, :cond_111

    const/16 v3, 0x111

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x59fbf22e

    if-eq v3, v13, :cond_111

    add-int/lit8 v1, v1, 0x1

    goto :goto_111

    :cond_111
    const/16 v1, -0x15

    :goto_112
    const/4 v3, -0x1

    if-ge v1, v3, :cond_112

    const/16 v3, 0x112

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1b3edc15

    if-eq v3, v13, :cond_112

    add-int/lit8 v1, v1, 0x1

    goto :goto_112

    :cond_112
    const/16 v1, 0x47

    :goto_113
    const/16 v3, 0x56

    if-ge v1, v3, :cond_113

    const/16 v3, 0x113

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x179eb64d

    if-eq v3, v13, :cond_113

    add-int/lit8 v1, v1, 0x1

    goto :goto_113

    :cond_113
    const/16 v1, -0x6a

    :goto_114
    const/16 v3, -0x55

    if-ge v1, v3, :cond_114

    const/16 v3, 0x114

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x21bd493e

    if-eq v3, v13, :cond_114

    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    :cond_114
    const/16 v1, 0x21

    :goto_115
    if-ge v1, v8, :cond_115

    const/16 v3, 0x115

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x61ed3397

    if-eq v3, v13, :cond_115

    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    :cond_115
    const/16 v1, -0x28

    :goto_116
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_116

    const/16 v3, 0x116

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2d74a0bf

    if-eq v3, v13, :cond_116

    add-int/lit8 v1, v1, 0x1

    goto :goto_116

    :cond_116
    const/16 v1, -0x6d

    :goto_117
    const/16 v3, -0x57

    if-ge v1, v3, :cond_117

    const/16 v3, 0x117

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13ec64e2

    if-eq v3, v13, :cond_117

    add-int/lit8 v1, v1, 0x1

    goto :goto_117

    :cond_117
    const/4 v1, -0x3

    :goto_118
    const/16 v3, 0xf

    if-ge v1, v3, :cond_118

    const/16 v3, 0x118

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1820f57c

    if-eq v3, v13, :cond_118

    add-int/lit8 v1, v1, 0x1

    goto :goto_118

    :cond_118
    const/16 v1, -0x5f

    :goto_119
    const/16 v3, -0x41

    if-ge v1, v3, :cond_119

    const/16 v3, 0x119

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x522d801

    if-eq v3, v13, :cond_119

    add-int/lit8 v1, v1, 0x1

    goto :goto_119

    :cond_119
    move v1, v4

    :goto_11a
    const/4 v3, -0x4

    if-ge v1, v3, :cond_11a

    const/16 v3, 0x11a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6e89c9fb

    if-eq v3, v13, :cond_11a

    add-int/lit8 v1, v1, 0x1

    goto :goto_11a

    :cond_11a
    const/16 v1, -0x45

    :goto_11b
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_11b

    const/16 v3, 0x11b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x58ed3390

    if-eq v3, v13, :cond_11b

    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    :cond_11b
    const/16 v1, -0x80

    :goto_11c
    const/16 v3, -0x77

    if-ge v1, v3, :cond_11c

    const/16 v3, 0x11c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ef6ca8c

    if-eq v3, v13, :cond_11c

    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    :cond_11c
    const/16 v1, 0x4d

    :goto_11d
    const/16 v3, 0x53

    if-ge v1, v3, :cond_11d

    const/16 v3, 0x11d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x14cd3021

    if-eq v3, v13, :cond_11d

    add-int/lit8 v1, v1, 0x1

    goto :goto_11d

    :cond_11d
    const/16 v1, -0x27

    :goto_11e
    const/16 v3, -0x10

    if-ge v1, v3, :cond_11e

    const/16 v3, 0x11e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4f1c8882

    if-eq v3, v13, :cond_11e

    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    :cond_11e
    const/16 v1, -0x6d

    :goto_11f
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_11f

    const/16 v3, 0x11f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x283c6e68

    if-eq v3, v13, :cond_11f

    add-int/lit8 v1, v1, 0x1

    goto :goto_11f

    :cond_11f
    const/16 v1, 0x6b

    :goto_120
    if-ge v1, v11, :cond_120

    const/16 v3, 0x120

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4626f60f

    if-eq v3, v13, :cond_120

    add-int/lit8 v1, v1, 0x1

    goto :goto_120

    :cond_120
    const/16 v1, -0x35

    :goto_121
    const/16 v3, -0x22

    if-ge v1, v3, :cond_121

    const/16 v3, 0x121

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x47fd06cd

    if-eq v3, v13, :cond_121

    add-int/lit8 v1, v1, 0x1

    goto :goto_121

    :cond_121
    const/16 v1, -0x75

    :goto_122
    const/16 v3, -0x61

    if-ge v1, v3, :cond_122

    const/16 v3, 0x122

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6cd42204

    if-eq v3, v13, :cond_122

    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    :cond_122
    const/16 v1, -0x73

    :goto_123
    const/16 v3, -0x60

    if-ge v1, v3, :cond_123

    const/16 v3, 0x123

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x30f58185

    if-eq v3, v13, :cond_123

    add-int/lit8 v1, v1, 0x1

    goto :goto_123

    :cond_123
    const/16 v1, 0x25

    :goto_124
    const/16 v3, 0x31

    if-ge v1, v3, :cond_124

    const/16 v3, 0x124

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2d9b4e60

    if-eq v3, v13, :cond_124

    add-int/lit8 v1, v1, 0x1

    goto :goto_124

    :cond_124
    const/16 v1, 0xd

    :goto_125
    const/16 v3, 0x19

    if-ge v1, v3, :cond_125

    const/16 v3, 0x125

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6734f9c5

    if-eq v3, v13, :cond_125

    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    :cond_125
    const/16 v1, -0x4f

    :goto_126
    const/16 v3, -0x47

    if-ge v1, v3, :cond_126

    const/16 v3, 0x126

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x28ac02a3

    if-eq v3, v13, :cond_126

    add-int/lit8 v1, v1, 0x1

    goto :goto_126

    :cond_126
    move v1, v10

    :goto_127
    const/16 v3, 0x9

    if-ge v1, v3, :cond_127

    const/16 v3, 0x127

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x24f7685

    if-eq v3, v13, :cond_127

    add-int/lit8 v1, v1, 0x1

    goto :goto_127

    :cond_127
    const/16 v1, 0x29

    :goto_128
    if-ge v1, v8, :cond_128

    const/16 v3, 0x128

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x31a09842

    if-eq v3, v13, :cond_128

    add-int/lit8 v1, v1, 0x1

    goto :goto_128

    :cond_128
    const/16 v1, -0x58

    :goto_129
    const/16 v3, -0x42

    if-ge v1, v3, :cond_129

    const/16 v3, 0x129

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7846e2de

    if-eq v3, v13, :cond_129

    add-int/lit8 v1, v1, 0x1

    goto :goto_129

    :cond_129
    const/16 v1, 0x64

    :goto_12a
    const/16 v3, 0x74

    if-ge v1, v3, :cond_12a

    const/16 v3, 0x12a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2a0ec2b2

    if-eq v3, v13, :cond_12a

    add-int/lit8 v1, v1, 0x1

    goto :goto_12a

    :cond_12a
    const/16 v1, -0x67

    :goto_12b
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_12b

    const/16 v3, 0x12b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5cac079d

    if-eq v3, v13, :cond_12b

    add-int/lit8 v1, v1, 0x1

    goto :goto_12b

    :cond_12b
    const/16 v1, -0x80

    :goto_12c
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_12c

    const/16 v3, 0x12c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x370ce3f2

    if-eq v3, v13, :cond_12c

    add-int/lit8 v1, v1, 0x1

    goto :goto_12c

    :cond_12c
    const/16 v1, 0x54

    :goto_12d
    const/16 v3, 0x56

    if-ge v1, v3, :cond_12d

    const/16 v3, 0x12d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x8f5f047

    if-eq v3, v13, :cond_12d

    add-int/lit8 v1, v1, 0x1

    goto :goto_12d

    :cond_12d
    const/16 v1, 0x3c

    :goto_12e
    const/16 v3, 0x53

    if-ge v1, v3, :cond_12e

    const/16 v3, 0x12e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6049588e

    if-eq v3, v13, :cond_12e

    add-int/lit8 v1, v1, 0x1

    goto :goto_12e

    :cond_12e
    const/16 v1, -0x1f

    :goto_12f
    const/4 v3, -0x3

    if-ge v1, v3, :cond_12f

    const/16 v3, 0x12f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5f810e

    if-eq v3, v13, :cond_12f

    add-int/lit8 v1, v1, 0x1

    goto :goto_12f

    :cond_12f
    const/16 v1, -0x4d

    :goto_130
    const/16 v3, -0x3f

    if-ge v1, v3, :cond_130

    const/16 v3, 0x130

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7474db87

    if-eq v3, v13, :cond_130

    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    :cond_130
    const/16 v1, -0x41

    :goto_131
    const/16 v3, -0x38

    if-ge v1, v3, :cond_131

    const/16 v3, 0x131

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6a776069

    if-eq v3, v13, :cond_131

    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_131
    const/16 v1, -0x2c

    :goto_132
    const/16 v3, -0x20

    if-ge v1, v3, :cond_132

    const/16 v3, 0x132

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x77385a61

    if-eq v3, v13, :cond_132

    add-int/lit8 v1, v1, 0x1

    goto :goto_132

    :cond_132
    const/16 v1, -0x16

    :goto_133
    const/4 v3, -0x2

    if-ge v1, v3, :cond_133

    const/16 v3, 0x133

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xe816ebc

    if-eq v3, v13, :cond_133

    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    :cond_133
    const/16 v1, -0x26

    :goto_134
    const/4 v3, -0x8

    if-ge v1, v3, :cond_134

    const/16 v3, 0x134

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ad088b0

    if-eq v3, v13, :cond_134

    add-int/lit8 v1, v1, 0x1

    goto :goto_134

    :cond_134
    const/16 v1, -0x4e

    :goto_135
    const/16 v3, -0x42

    if-ge v1, v3, :cond_135

    const/16 v3, 0x135

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1df3855c

    if-eq v3, v13, :cond_135

    add-int/lit8 v1, v1, 0x1

    goto :goto_135

    :cond_135
    move v1, v6

    :goto_136
    const/16 v3, 0x54

    if-ge v1, v3, :cond_136

    const/16 v3, 0x136

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7ee893a0

    if-eq v3, v13, :cond_136

    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    :cond_136
    const/16 v1, -0x3f

    :goto_137
    const/16 v3, -0x31

    if-ge v1, v3, :cond_137

    const/16 v3, 0x137

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x59ba009e

    if-eq v3, v13, :cond_137

    add-int/lit8 v1, v1, 0x1

    goto :goto_137

    :cond_137
    const/16 v1, -0x13

    :goto_138
    const/4 v3, 0x6

    if-ge v1, v3, :cond_138

    const/16 v3, 0x138

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6d884a32

    if-eq v3, v13, :cond_138

    add-int/lit8 v1, v1, 0x1

    goto :goto_138

    :cond_138
    const/16 v1, -0x47

    :goto_139
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_139

    const/16 v3, 0x139

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3c93fdd0

    if-eq v3, v13, :cond_139

    add-int/lit8 v1, v1, 0x1

    goto :goto_139

    :cond_139
    const/16 v1, 0x19

    :goto_13a
    const/16 v3, 0x30

    if-ge v1, v3, :cond_13a

    const/16 v3, 0x13a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x42cfa920

    if-eq v3, v13, :cond_13a

    add-int/lit8 v1, v1, 0x1

    goto :goto_13a

    :cond_13a
    const/16 v1, -0x5b

    :goto_13b
    const/16 v3, -0x41

    if-ge v1, v3, :cond_13b

    const/16 v3, 0x13b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x320d2d37

    if-eq v3, v13, :cond_13b

    add-int/lit8 v1, v1, 0x1

    goto :goto_13b

    :cond_13b
    move v1, v4

    :goto_13c
    if-gez v1, :cond_13c

    const/16 v3, 0x13c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x476cfdb

    if-eq v3, v13, :cond_13c

    add-int/lit8 v1, v1, 0x1

    goto :goto_13c

    :cond_13c
    const/16 v1, 0x20

    :goto_13d
    const/16 v3, 0x35

    if-ge v1, v3, :cond_13d

    const/16 v3, 0x13d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x26811020

    if-eq v3, v13, :cond_13d

    add-int/lit8 v1, v1, 0x1

    goto :goto_13d

    :cond_13d
    const/16 v1, -0x7b

    :goto_13e
    const/16 v3, -0x6f

    if-ge v1, v3, :cond_13e

    const/16 v3, 0x13e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6c26aa84

    if-eq v3, v13, :cond_13e

    add-int/lit8 v1, v1, 0x1

    goto :goto_13e

    :cond_13e
    const/16 v1, -0x3b

    :goto_13f
    const/16 v3, -0x29

    if-ge v1, v3, :cond_13f

    const/16 v3, 0x13f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5cfa39e8

    if-eq v3, v13, :cond_13f

    add-int/lit8 v1, v1, 0x1

    goto :goto_13f

    :cond_13f
    const/16 v1, -0x76

    :goto_140
    const/16 v3, -0x64

    if-ge v1, v3, :cond_140

    const/16 v3, 0x140

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x50c041a9

    if-eq v3, v13, :cond_140

    add-int/lit8 v1, v1, 0x1

    goto :goto_140

    :cond_140
    const/16 v1, 0x1c

    :goto_141
    const/16 v3, 0x29

    if-ge v1, v3, :cond_141

    const/16 v3, 0x141

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x58708f27

    if-eq v3, v13, :cond_141

    add-int/lit8 v1, v1, 0x1

    goto :goto_141

    :cond_141
    const/16 v1, -0x3a

    :goto_142
    const/16 v3, -0x32

    if-ge v1, v3, :cond_142

    const/16 v3, 0x142

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xe61de21

    if-eq v3, v13, :cond_142

    add-int/lit8 v1, v1, 0x1

    goto :goto_142

    :cond_142
    const/16 v1, -0x80

    :goto_143
    const/16 v3, -0x7f

    if-ge v1, v3, :cond_143

    const/16 v3, 0x143

    const/16 v13, -0x80

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5b23f641

    if-eq v3, v13, :cond_143

    add-int/lit8 v1, v1, 0x1

    goto :goto_143

    :cond_143
    const/16 v1, 0x1b

    :goto_144
    const/16 v3, 0x26

    if-ge v1, v3, :cond_144

    const/16 v3, 0x144

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3d755389

    if-eq v3, v13, :cond_144

    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    :cond_144
    const/16 v1, 0x52

    :goto_145
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_145

    const/16 v3, 0x145

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x325f0e4f

    if-eq v3, v13, :cond_145

    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    :cond_145
    const/16 v1, 0x1b

    :goto_146
    const/16 v3, 0x1d

    if-ge v1, v3, :cond_146

    const/16 v3, 0x146

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x53de5d1c

    if-eq v3, v13, :cond_146

    add-int/lit8 v1, v1, 0x1

    goto :goto_146

    :cond_146
    const/16 v1, 0x11

    :goto_147
    const/16 v3, 0x22

    if-ge v1, v3, :cond_147

    const/16 v3, 0x147

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7f81866a

    if-eq v3, v13, :cond_147

    add-int/lit8 v1, v1, 0x1

    goto :goto_147

    :cond_147
    const/16 v1, 0x6b

    :goto_148
    const/16 v3, 0x78

    if-ge v1, v3, :cond_148

    const/16 v3, 0x148

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x46d0b54f

    if-eq v3, v13, :cond_148

    add-int/lit8 v1, v1, 0x1

    goto :goto_148

    :cond_148
    const/16 v1, 0x22

    :goto_149
    const/16 v3, 0x27

    if-ge v1, v3, :cond_149

    const/16 v3, 0x149

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x440813ba

    if-eq v3, v13, :cond_149

    add-int/lit8 v1, v1, 0x1

    goto :goto_149

    :cond_149
    const/16 v1, -0x7e

    :goto_14a
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_14a

    const/16 v3, 0x14a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x35cb2364    # -2963239.0f

    if-eq v3, v13, :cond_14a

    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    :cond_14a
    const/16 v1, 0x46

    :goto_14b
    const/16 v3, 0x59

    if-ge v1, v3, :cond_14b

    const/16 v3, 0x14b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7f4a1758

    if-eq v3, v13, :cond_14b

    add-int/lit8 v1, v1, 0x1

    goto :goto_14b

    :cond_14b
    const/16 v1, -0x29

    :goto_14c
    if-ge v1, v4, :cond_14c

    const/16 v3, 0x14c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x68286fd7

    if-eq v3, v13, :cond_14c

    add-int/lit8 v1, v1, 0x1

    goto :goto_14c

    :cond_14c
    const/4 v1, 0x4

    :goto_14d
    const/16 v3, 0x8

    if-ge v1, v3, :cond_14d

    const/16 v3, 0x14d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xeba0151

    if-eq v3, v13, :cond_14d

    add-int/lit8 v1, v1, 0x1

    goto :goto_14d

    :cond_14d
    const/16 v1, 0x19

    :goto_14e
    const/16 v3, 0x31

    if-ge v1, v3, :cond_14e

    const/16 v3, 0x14e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7c6a5cbd

    if-eq v3, v13, :cond_14e

    add-int/lit8 v1, v1, 0x1

    goto :goto_14e

    :cond_14e
    const/16 v1, -0x3a

    :goto_14f
    const/16 v3, -0x31

    if-ge v1, v3, :cond_14f

    const/16 v3, 0x14f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x43f18e84

    if-eq v3, v13, :cond_14f

    add-int/lit8 v1, v1, 0x1

    goto :goto_14f

    :cond_14f
    const/16 v1, -0x36

    :goto_150
    const/16 v3, -0x25

    if-ge v1, v3, :cond_150

    const/16 v3, 0x150

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x714a7a4a

    if-eq v3, v13, :cond_150

    add-int/lit8 v1, v1, 0x1

    goto :goto_150

    :cond_150
    const/16 v1, 0x3d

    :goto_151
    const/16 v3, 0x47

    if-ge v1, v3, :cond_151

    const/16 v3, 0x151

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4b7d9fa3    # 1.6621475E7f

    if-eq v3, v13, :cond_151

    add-int/lit8 v1, v1, 0x1

    goto :goto_151

    :cond_151
    const/16 v1, -0x43

    :goto_152
    const/16 v3, -0x34

    if-ge v1, v3, :cond_152

    const/16 v3, 0x152

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xe89cad6

    if-eq v3, v13, :cond_152

    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    :cond_152
    const/16 v1, 0x1c

    :goto_153
    const/16 v3, 0x36

    if-ge v1, v3, :cond_153

    const/16 v3, 0x153

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x306b0432

    if-eq v3, v13, :cond_153

    add-int/lit8 v1, v1, 0x1

    goto :goto_153

    :cond_153
    const/16 v1, 0x18

    :goto_154
    if-ge v1, v8, :cond_154

    const/16 v3, 0x154

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5aa905fe

    if-eq v3, v13, :cond_154

    add-int/lit8 v1, v1, 0x1

    goto :goto_154

    :cond_154
    const/16 v1, -0x29

    :goto_155
    const/16 v3, -0x27

    if-ge v1, v3, :cond_155

    const/16 v3, 0x155

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xf29c76d

    if-eq v3, v13, :cond_155

    add-int/lit8 v1, v1, 0x1

    goto :goto_155

    :cond_155
    const/16 v1, -0x63

    :goto_156
    const/16 v3, -0x52

    if-ge v1, v3, :cond_156

    const/16 v3, 0x156

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5a563ff2

    if-eq v3, v13, :cond_156

    add-int/lit8 v1, v1, 0x1

    goto :goto_156

    :cond_156
    const/16 v1, 0x29

    :goto_157
    const/16 v3, 0x46

    if-ge v1, v3, :cond_157

    const/16 v3, 0x157

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x8cb22b3

    if-eq v3, v13, :cond_157

    add-int/lit8 v1, v1, 0x1

    goto :goto_157

    :cond_157
    const/16 v1, -0x56

    :goto_158
    const/16 v3, -0x40

    if-ge v1, v3, :cond_158

    const/16 v3, 0x158

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6c15db5d

    if-eq v3, v13, :cond_158

    add-int/lit8 v1, v1, 0x1

    goto :goto_158

    :cond_158
    const/16 v1, -0x80

    :goto_159
    const/16 v3, -0x7a

    if-ge v1, v3, :cond_159

    const/16 v3, 0x159

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2e67fa85

    if-eq v3, v13, :cond_159

    add-int/lit8 v1, v1, 0x1

    goto :goto_159

    :cond_159
    const/16 v1, -0x4d

    :goto_15a
    const/16 v3, -0x32

    if-ge v1, v3, :cond_15a

    const/16 v3, 0x15a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x52c2fd39

    if-eq v3, v13, :cond_15a

    add-int/lit8 v1, v1, 0x1

    goto :goto_15a

    :cond_15a
    const/16 v1, -0x1e

    :goto_15b
    const/4 v3, -0x8

    if-ge v1, v3, :cond_15b

    const/16 v3, 0x15b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3423a0ce

    if-eq v3, v13, :cond_15b

    add-int/lit8 v1, v1, 0x1

    goto :goto_15b

    :cond_15b
    move v1, v6

    :goto_15c
    const/16 v3, 0x50

    if-ge v1, v3, :cond_15c

    const/16 v3, 0x15c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x60823448

    if-eq v3, v13, :cond_15c

    add-int/lit8 v1, v1, 0x1

    goto :goto_15c

    :cond_15c
    const/16 v1, 0x31

    :goto_15d
    const/16 v3, 0x50

    if-ge v1, v3, :cond_15d

    const/16 v3, 0x15d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3b757b36

    if-eq v3, v13, :cond_15d

    add-int/lit8 v1, v1, 0x1

    goto :goto_15d

    :cond_15d
    const/4 v1, -0x1

    :goto_15e
    const/16 v3, 0x17

    if-ge v1, v3, :cond_15e

    const/16 v3, 0x15e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2dac0231

    if-eq v3, v13, :cond_15e

    add-int/lit8 v1, v1, 0x1

    goto :goto_15e

    :cond_15e
    const/16 v1, 0x70

    :goto_15f
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_15f

    const/16 v3, 0x15f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7c1a8d80

    if-eq v3, v13, :cond_15f

    add-int/lit8 v1, v1, 0x1

    goto :goto_15f

    :cond_15f
    const/16 v1, -0x16

    :goto_160
    const/4 v3, 0x7

    if-ge v1, v3, :cond_160

    const/16 v3, 0x160

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x77bd1bea

    if-eq v3, v13, :cond_160

    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    :cond_160
    const/16 v1, -0x5e

    :goto_161
    const/16 v3, -0x51

    if-ge v1, v3, :cond_161

    const/16 v3, 0x161

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2180dc26

    if-eq v3, v13, :cond_161

    add-int/lit8 v1, v1, 0x1

    goto :goto_161

    :cond_161
    const/16 v1, -0x58

    :goto_162
    const/16 v3, -0x50

    if-ge v1, v3, :cond_162

    const/16 v3, 0x162

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5ae40d70

    if-eq v3, v13, :cond_162

    add-int/lit8 v1, v1, 0x1

    goto :goto_162

    :cond_162
    const/16 v1, 0x31

    :goto_163
    if-ge v1, v2, :cond_163

    const/16 v3, 0x163

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4c97308b

    if-eq v3, v13, :cond_163

    add-int/lit8 v1, v1, 0x1

    goto :goto_163

    :cond_163
    const/16 v1, 0x5e

    :goto_164
    const/16 v3, 0x6f

    if-ge v1, v3, :cond_164

    const/16 v3, 0x164

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x66f93d0d

    if-eq v3, v13, :cond_164

    add-int/lit8 v1, v1, 0x1

    goto :goto_164

    :cond_164
    const/16 v1, -0x39

    :goto_165
    const/16 v3, -0x1b

    if-ge v1, v3, :cond_165

    const/16 v3, 0x165

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xb54b9d2

    if-eq v3, v13, :cond_165

    add-int/lit8 v1, v1, 0x1

    goto :goto_165

    :cond_165
    const/16 v1, -0x37

    :goto_166
    const/16 v3, -0x28

    if-ge v1, v3, :cond_166

    const/16 v3, 0x166

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6475a952

    if-eq v3, v13, :cond_166

    add-int/lit8 v1, v1, 0x1

    goto :goto_166

    :cond_166
    const/16 v1, -0x5c

    :goto_167
    const/16 v3, -0x49

    if-ge v1, v3, :cond_167

    const/16 v3, 0x167

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4886d803

    if-eq v3, v13, :cond_167

    add-int/lit8 v1, v1, 0x1

    goto :goto_167

    :cond_167
    const/16 v1, 0x34

    :goto_168
    const/16 v3, 0x41

    if-ge v1, v3, :cond_168

    const/16 v3, 0x168

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5d87063f

    if-eq v3, v13, :cond_168

    add-int/lit8 v1, v1, 0x1

    goto :goto_168

    :cond_168
    const/16 v1, -0x55

    :goto_169
    const/16 v3, -0x42

    if-ge v1, v3, :cond_169

    const/16 v3, 0x169

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x41c46bc5

    if-eq v3, v13, :cond_169

    add-int/lit8 v1, v1, 0x1

    goto :goto_169

    :cond_169
    const/16 v1, -0x37

    :goto_16a
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_16a

    const/16 v3, 0x16a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7dee1923

    if-eq v3, v13, :cond_16a

    add-int/lit8 v1, v1, 0x1

    goto :goto_16a

    :cond_16a
    const/16 v1, 0x4e

    :goto_16b
    const/16 v3, 0x67

    if-ge v1, v3, :cond_16b

    const/16 v3, 0x16b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x259c540c

    if-eq v3, v13, :cond_16b

    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    :cond_16b
    const/16 v1, 0xb

    :goto_16c
    const/16 v3, 0x28

    if-ge v1, v3, :cond_16c

    const/16 v3, 0x16c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x67c10833

    if-eq v3, v13, :cond_16c

    add-int/lit8 v1, v1, 0x1

    goto :goto_16c

    :cond_16c
    const/16 v1, 0x55

    :goto_16d
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_16d

    const/16 v3, 0x16d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x130bf4a5

    if-eq v3, v13, :cond_16d

    add-int/lit8 v1, v1, 0x1

    goto :goto_16d

    :cond_16d
    const/16 v1, -0x80

    :goto_16e
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_16e

    const/16 v3, 0x16e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4ce6d6cd

    if-eq v3, v13, :cond_16e

    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    :cond_16e
    move v1, v10

    :goto_16f
    const/16 v3, -0xb

    if-ge v1, v3, :cond_16f

    const/16 v3, 0x16f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xbfd43d8

    if-eq v3, v13, :cond_16f

    add-int/lit8 v1, v1, 0x1

    goto :goto_16f

    :cond_16f
    const/16 v1, -0xa

    :goto_170
    const/4 v3, -0x6

    if-ge v1, v3, :cond_170

    const/16 v3, 0x170

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x53ee35df

    if-eq v3, v13, :cond_170

    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    :cond_170
    const/16 v1, 0x30

    :goto_171
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_171

    const/16 v3, 0x171

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x430a3544

    if-eq v3, v13, :cond_171

    add-int/lit8 v1, v1, 0x1

    goto :goto_171

    :cond_171
    const/16 v1, -0x4a

    :goto_172
    const/16 v3, -0x45

    if-ge v1, v3, :cond_172

    const/16 v3, 0x172

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2b4d980e

    if-eq v3, v13, :cond_172

    add-int/lit8 v1, v1, 0x1

    goto :goto_172

    :cond_172
    const/16 v1, -0x5f

    :goto_173
    const/16 v3, -0x4e

    if-ge v1, v3, :cond_173

    const/16 v3, 0x173

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x251ecd5

    if-eq v3, v13, :cond_173

    add-int/lit8 v1, v1, 0x1

    goto :goto_173

    :cond_173
    const/16 v1, -0x80

    :goto_174
    const/16 v3, -0x74

    if-ge v1, v3, :cond_174

    const/16 v3, 0x174

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5bc02fb2

    if-eq v3, v13, :cond_174

    add-int/lit8 v1, v1, 0x1

    goto :goto_174

    :cond_174
    const/16 v1, -0x11

    :goto_175
    const/4 v3, 0x2

    if-ge v1, v3, :cond_175

    const/16 v3, 0x175

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x38d33bc2

    if-eq v3, v13, :cond_175

    add-int/lit8 v1, v1, 0x1

    goto :goto_175

    :cond_175
    const/16 v1, 0x64

    :goto_176
    if-ge v1, v15, :cond_176

    const/16 v3, 0x176

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x73c8b2e4

    if-eq v3, v13, :cond_176

    add-int/lit8 v1, v1, 0x1

    goto :goto_176

    :cond_176
    const/16 v1, -0x73

    :goto_177
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_177

    const/16 v3, 0x177

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x144a680e

    if-eq v3, v13, :cond_177

    add-int/lit8 v1, v1, 0x1

    goto :goto_177

    :cond_177
    const/16 v1, 0x28

    :goto_178
    const/16 v3, 0x31

    if-ge v1, v3, :cond_178

    const/16 v3, 0x178

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x57bdf9a0

    if-eq v3, v13, :cond_178

    add-int/lit8 v1, v1, 0x1

    goto :goto_178

    :cond_178
    move v1, v7

    :goto_179
    const/4 v3, -0x4

    if-ge v1, v3, :cond_179

    const/16 v3, 0x179

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1701e3e2

    if-eq v3, v13, :cond_179

    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    :cond_179
    const/16 v1, -0x5b

    :goto_17a
    const/16 v3, -0x52

    if-ge v1, v3, :cond_17a

    const/16 v3, 0x17a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x18094d30

    if-eq v3, v13, :cond_17a

    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    :cond_17a
    const/16 v1, 0x42

    :goto_17b
    const/16 v3, 0x58

    if-ge v1, v3, :cond_17b

    const/16 v3, 0x17b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3e34b15d

    if-eq v3, v13, :cond_17b

    add-int/lit8 v1, v1, 0x1

    goto :goto_17b

    :cond_17b
    const/16 v1, -0x69

    :goto_17c
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_17c

    const/16 v3, 0x17c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xff0bd24

    if-eq v3, v13, :cond_17c

    add-int/lit8 v1, v1, 0x1

    goto :goto_17c

    :cond_17c
    const/16 v1, 0x50

    :goto_17d
    const/16 v3, 0x5c

    if-ge v1, v3, :cond_17d

    const/16 v3, 0x17d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2c56ae37

    if-eq v3, v13, :cond_17d

    add-int/lit8 v1, v1, 0x1

    goto :goto_17d

    :cond_17d
    const/16 v1, 0x41

    :goto_17e
    const/16 v3, 0x53

    if-ge v1, v3, :cond_17e

    const/16 v3, 0x17e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x257a1110

    if-eq v3, v13, :cond_17e

    add-int/lit8 v1, v1, 0x1

    goto :goto_17e

    :cond_17e
    const/16 v1, -0x70

    :goto_17f
    const/16 v3, -0x65

    if-ge v1, v3, :cond_17f

    const/16 v3, 0x17f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x783f2760

    if-eq v3, v13, :cond_17f

    add-int/lit8 v1, v1, 0x1

    goto :goto_17f

    :cond_17f
    const/16 v1, -0x31

    :goto_180
    const/16 v3, -0x25

    if-ge v1, v3, :cond_180

    const/16 v3, 0x180

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x34e6dcc1    # -1.0036031E7f

    if-eq v3, v13, :cond_180

    add-int/lit8 v1, v1, 0x1

    goto :goto_180

    :cond_180
    const/16 v1, -0x78

    :goto_181
    const/16 v3, -0x66

    if-ge v1, v3, :cond_181

    const/16 v3, 0x181

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5c42e5ee

    if-eq v3, v13, :cond_181

    add-int/lit8 v1, v1, 0x1

    goto :goto_181

    :cond_181
    move v1, v10

    :goto_182
    const/16 v3, -0xa

    if-ge v1, v3, :cond_182

    const/16 v3, 0x182

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x673c4ca3

    if-eq v3, v13, :cond_182

    add-int/lit8 v1, v1, 0x1

    goto :goto_182

    :cond_182
    const/16 v1, 0x6e

    :goto_183
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_183

    const/16 v3, 0x183

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x55ea69a0

    if-eq v3, v13, :cond_183

    add-int/lit8 v1, v1, 0x1

    goto :goto_183

    :cond_183
    const/16 v1, -0x64

    :goto_184
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_184

    const/16 v3, 0x184

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6ad9bc45

    if-eq v3, v13, :cond_184

    add-int/lit8 v1, v1, 0x1

    goto :goto_184

    :cond_184
    const/16 v1, 0x70

    :goto_185
    if-ge v1, v5, :cond_185

    const/16 v3, 0x185

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x593ab216

    if-eq v3, v13, :cond_185

    add-int/lit8 v1, v1, 0x1

    goto :goto_185

    :cond_185
    const/16 v1, 0x28

    :goto_186
    const/16 v3, 0x34

    if-ge v1, v3, :cond_186

    const/16 v3, 0x186

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6c15df2f

    if-eq v3, v13, :cond_186

    add-int/lit8 v1, v1, 0x1

    goto :goto_186

    :cond_186
    const/16 v1, 0x70

    :goto_187
    if-ge v1, v5, :cond_187

    const/16 v3, 0x187

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5476cee0

    if-eq v3, v13, :cond_187

    add-int/lit8 v1, v1, 0x1

    goto :goto_187

    :cond_187
    const/16 v1, 0x1e

    :goto_188
    const/16 v3, 0x22

    if-ge v1, v3, :cond_188

    const/16 v3, 0x188

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x27aec6eb

    if-eq v3, v13, :cond_188

    add-int/lit8 v1, v1, 0x1

    goto :goto_188

    :cond_188
    const/16 v1, -0x49

    :goto_189
    const/16 v3, -0x37

    if-ge v1, v3, :cond_189

    const/16 v3, 0x189

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7fe0e354

    if-eq v3, v13, :cond_189

    add-int/lit8 v1, v1, 0x1

    goto :goto_189

    :cond_189
    const/16 v1, 0x5f

    :goto_18a
    const/16 v3, 0x6f

    if-ge v1, v3, :cond_18a

    const/16 v3, 0x18a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7a173b76

    if-eq v3, v13, :cond_18a

    add-int/lit8 v1, v1, 0x1

    goto :goto_18a

    :cond_18a
    const/16 v1, -0x64

    :goto_18b
    const/16 v3, -0x61

    if-ge v1, v3, :cond_18b

    const/16 v3, 0x18b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3eea7553

    if-eq v3, v13, :cond_18b

    add-int/lit8 v1, v1, 0x1

    goto :goto_18b

    :cond_18b
    const/16 v1, -0x80

    :goto_18c
    const/16 v3, -0x70

    if-ge v1, v3, :cond_18c

    const/16 v3, 0x18c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x306508ac

    if-eq v3, v13, :cond_18c

    add-int/lit8 v1, v1, 0x1

    goto :goto_18c

    :cond_18c
    const/16 v1, 0x4f

    :goto_18d
    const/16 v3, 0x6a

    if-ge v1, v3, :cond_18d

    const/16 v3, 0x18d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1aea276c

    if-eq v3, v13, :cond_18d

    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    :cond_18d
    const/16 v1, -0x2e

    :goto_18e
    const/16 v3, -0x15

    if-ge v1, v3, :cond_18e

    const/16 v3, 0x18e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5519aa97

    if-eq v3, v13, :cond_18e

    add-int/lit8 v1, v1, 0x1

    goto :goto_18e

    :cond_18e
    const/16 v1, -0x74

    :goto_18f
    const/16 v3, -0x70

    if-ge v1, v3, :cond_18f

    const/16 v3, 0x18f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1e5ec7f0

    if-eq v3, v13, :cond_18f

    add-int/lit8 v1, v1, 0x1

    goto :goto_18f

    :cond_18f
    const/16 v1, 0x20

    :goto_190
    if-ge v1, v12, :cond_190

    const/16 v3, 0x190

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x449ef7ff

    if-eq v3, v13, :cond_190

    add-int/lit8 v1, v1, 0x1

    goto :goto_190

    :cond_190
    const/16 v1, 0x69

    :goto_191
    const/16 v3, 0x75

    if-ge v1, v3, :cond_191

    const/16 v3, 0x191

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x18dd495f

    if-eq v3, v13, :cond_191

    add-int/lit8 v1, v1, 0x1

    goto :goto_191

    :cond_191
    const/16 v1, 0x28

    :goto_192
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_192

    const/16 v3, 0x192

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5fd30a37

    if-eq v3, v13, :cond_192

    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    :cond_192
    const/16 v1, 0x2c

    :goto_193
    const/16 v3, 0x34

    if-ge v1, v3, :cond_193

    const/16 v3, 0x193

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x731cd2dc

    if-eq v3, v13, :cond_193

    add-int/lit8 v1, v1, 0x1

    goto :goto_193

    :cond_193
    const/16 v1, 0x54

    :goto_194
    const/16 v3, 0x68

    if-ge v1, v3, :cond_194

    const/16 v3, 0x194

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5ea6a3c8

    if-eq v3, v13, :cond_194

    add-int/lit8 v1, v1, 0x1

    goto :goto_194

    :cond_194
    const/16 v1, -0x3c

    :goto_195
    const/16 v3, -0x23

    if-ge v1, v3, :cond_195

    const/16 v3, 0x195

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5731da66

    if-eq v3, v13, :cond_195

    add-int/lit8 v1, v1, 0x1

    goto :goto_195

    :cond_195
    const/16 v1, 0x24

    :goto_196
    if-ge v1, v8, :cond_196

    const/16 v3, 0x196

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7b00c0f8

    if-eq v3, v13, :cond_196

    add-int/lit8 v1, v1, 0x1

    goto :goto_196

    :cond_196
    const/16 v1, -0x24

    :goto_197
    const/16 v3, -0x22

    if-ge v1, v3, :cond_197

    const/16 v3, 0x197

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2644ccd8

    if-eq v3, v13, :cond_197

    add-int/lit8 v1, v1, 0x1

    goto :goto_197

    :cond_197
    const/16 v1, 0x3f

    :goto_198
    const/16 v3, 0x4a

    if-ge v1, v3, :cond_198

    const/16 v3, 0x198

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x412c8b79

    if-eq v3, v13, :cond_198

    add-int/lit8 v1, v1, 0x1

    goto :goto_198

    :cond_198
    const/16 v1, -0x4f

    :goto_199
    const/16 v3, -0x3d

    if-ge v1, v3, :cond_199

    const/16 v3, 0x199

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3ff4bda3

    if-eq v3, v13, :cond_199

    add-int/lit8 v1, v1, 0x1

    goto :goto_199

    :cond_199
    const/16 v1, 0x20

    :goto_19a
    const/16 v3, 0x34

    if-ge v1, v3, :cond_19a

    const/16 v3, 0x19a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6c2e3598

    if-eq v3, v13, :cond_19a

    add-int/lit8 v1, v1, 0x1

    goto :goto_19a

    :cond_19a
    const/16 v1, 0x27

    :goto_19b
    const/16 v3, 0x31

    if-ge v1, v3, :cond_19b

    const/16 v3, 0x19b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1a6eb409

    if-eq v3, v13, :cond_19b

    add-int/lit8 v1, v1, 0x1

    goto :goto_19b

    :cond_19b
    const/16 v1, 0x42

    :goto_19c
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_19c

    const/16 v3, 0x19c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1091f50e

    if-eq v3, v13, :cond_19c

    add-int/lit8 v1, v1, 0x1

    goto :goto_19c

    :cond_19c
    const/16 v1, 0x4b

    :goto_19d
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_19d

    const/16 v3, 0x19d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x350cb106

    if-eq v3, v13, :cond_19d

    add-int/lit8 v1, v1, 0x1

    goto :goto_19d

    :cond_19d
    const/16 v1, 0x61

    :goto_19e
    const/16 v3, 0x6d

    if-ge v1, v3, :cond_19e

    const/16 v3, 0x19e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x69bee238

    if-eq v3, v13, :cond_19e

    add-int/lit8 v1, v1, 0x1

    goto :goto_19e

    :cond_19e
    const/16 v1, -0x31

    :goto_19f
    const/16 v3, -0x22

    if-ge v1, v3, :cond_19f

    const/16 v3, 0x19f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x34a32a7e

    if-eq v3, v13, :cond_19f

    add-int/lit8 v1, v1, 0x1

    goto :goto_19f

    :cond_19f
    const/16 v1, 0x1d

    :goto_1a0
    const/16 v3, 0x37

    if-ge v1, v3, :cond_1a0

    const/16 v3, 0x1a0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7bfddb04

    if-eq v3, v13, :cond_1a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a0

    :cond_1a0
    const/16 v1, -0x1c

    :goto_1a1
    if-ge v1, v4, :cond_1a1

    const/16 v3, 0x1a1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x14aedd7a

    if-eq v3, v13, :cond_1a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a1

    :cond_1a1
    const/4 v1, -0x3

    :goto_1a2
    const/16 v3, 0xc

    if-ge v1, v3, :cond_1a2

    const/16 v3, 0x1a2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7df61cc5

    if-eq v3, v13, :cond_1a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a2

    :cond_1a2
    const/16 v1, 0x6d

    :goto_1a3
    const/16 v3, 0x76

    if-ge v1, v3, :cond_1a3

    const/16 v3, 0x1a3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7b611e96

    if-eq v3, v13, :cond_1a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a3

    :cond_1a3
    const/16 v1, 0x5d

    :goto_1a4
    if-ge v1, v15, :cond_1a4

    const/16 v3, 0x1a4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x240ec46

    if-eq v3, v13, :cond_1a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a4

    :cond_1a4
    const/16 v1, -0x35

    :goto_1a5
    const/16 v3, -0x22

    if-ge v1, v3, :cond_1a5

    const/16 v3, 0x1a5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6f184d9e

    if-eq v3, v13, :cond_1a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a5

    :cond_1a5
    move v1, v2

    :goto_1a6
    const/16 v3, 0x4e

    if-ge v1, v3, :cond_1a6

    const/16 v3, 0x1a6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6e2bd975

    if-eq v3, v13, :cond_1a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a6

    :cond_1a6
    const/4 v1, 0x1

    :goto_1a7
    const/16 v3, 0x12

    if-ge v1, v3, :cond_1a7

    const/16 v3, 0x1a7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6444f505

    if-eq v3, v13, :cond_1a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a7

    :cond_1a7
    const/16 v1, -0x5f

    :goto_1a8
    const/16 v3, -0x50

    if-ge v1, v3, :cond_1a8

    const/16 v3, 0x1a8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4302ee3c

    if-eq v3, v13, :cond_1a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a8

    :cond_1a8
    const/16 v1, -0x7a

    :goto_1a9
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_1a9

    const/16 v3, 0x1a9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x388d262

    if-eq v3, v13, :cond_1a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a9

    :cond_1a9
    const/4 v1, 0x5

    :goto_1aa
    const/16 v3, 0x14

    if-ge v1, v3, :cond_1aa

    const/16 v3, 0x1aa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x70f425c6

    if-eq v3, v13, :cond_1aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_1aa

    :cond_1aa
    const/16 v1, 0x60

    :goto_1ab
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_1ab

    const/16 v3, 0x1ab

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7689e9f6

    if-eq v3, v13, :cond_1ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ab

    :cond_1ab
    const/4 v1, 0x0

    :goto_1ac
    const/16 v3, 0x11

    if-ge v1, v3, :cond_1ac

    const/16 v3, 0x1ac

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2233117f

    if-eq v3, v13, :cond_1ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ac

    :cond_1ac
    move v1, v10

    :goto_1ad
    if-gez v1, :cond_1ad

    const/16 v3, 0x1ad

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x128f13da

    if-eq v3, v13, :cond_1ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ad

    :cond_1ad
    const/16 v1, 0xb

    :goto_1ae
    const/16 v3, 0x15

    if-ge v1, v3, :cond_1ae

    const/16 v3, 0x1ae

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7da8cffb

    if-eq v3, v13, :cond_1ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ae

    :cond_1ae
    const/16 v1, -0x21

    :goto_1af
    if-ge v1, v4, :cond_1af

    const/16 v3, 0x1af

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x17ec8622

    if-eq v3, v13, :cond_1af

    add-int/lit8 v1, v1, 0x1

    goto :goto_1af

    :cond_1af
    const/4 v1, -0x4

    :goto_1b0
    const/16 v3, 0x19

    if-ge v1, v3, :cond_1b0

    const/16 v3, 0x1b0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x404610b4

    if-eq v3, v13, :cond_1b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b0

    :cond_1b0
    const/16 v1, -0x52

    :goto_1b1
    const/16 v3, -0x43

    if-ge v1, v3, :cond_1b1

    const/16 v3, 0x1b1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x372aea00    # -436400.0f

    if-eq v3, v13, :cond_1b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b1

    :cond_1b1
    const/16 v1, 0x59

    :goto_1b2
    const/16 v3, 0x69

    if-ge v1, v3, :cond_1b2

    const/16 v3, 0x1b2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x52005268

    if-eq v3, v13, :cond_1b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b2

    :cond_1b2
    const/16 v1, 0x2e

    :goto_1b3
    const/16 v3, 0x4c

    if-ge v1, v3, :cond_1b3

    const/16 v3, 0x1b3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45e7fd42

    if-eq v3, v13, :cond_1b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b3

    :cond_1b3
    const/16 v1, -0x27

    :goto_1b4
    const/16 v3, -0x17

    if-ge v1, v3, :cond_1b4

    const/16 v3, 0x1b4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7acc9fa

    if-eq v3, v13, :cond_1b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b4

    :cond_1b4
    const/16 v1, -0x25

    :goto_1b5
    const/16 v3, -0x15

    if-ge v1, v3, :cond_1b5

    const/16 v3, 0x1b5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x38008898

    if-eq v3, v13, :cond_1b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b5

    :cond_1b5
    const/16 v1, -0x57

    :goto_1b6
    const/16 v3, -0x46

    if-ge v1, v3, :cond_1b6

    const/16 v3, 0x1b6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x666b841d

    if-eq v3, v13, :cond_1b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b6

    :cond_1b6
    const/16 v1, 0x10

    :goto_1b7
    const/16 v3, 0x22

    if-ge v1, v3, :cond_1b7

    const/16 v3, 0x1b7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5d757825

    if-eq v3, v13, :cond_1b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b7

    :cond_1b7
    const/16 v1, -0x49

    :goto_1b8
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_1b8

    const/16 v3, 0x1b8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3d8d309

    if-eq v3, v13, :cond_1b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b8

    :cond_1b8
    const/16 v1, -0x80

    :goto_1b9
    const/16 v3, -0x67

    if-ge v1, v3, :cond_1b9

    const/16 v3, 0x1b9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x164b4229

    if-eq v3, v13, :cond_1b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b9

    :cond_1b9
    const/16 v1, -0x3e

    :goto_1ba
    const/16 v3, -0x37

    if-ge v1, v3, :cond_1ba

    const/16 v3, 0x1ba

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x782518d8

    if-eq v3, v13, :cond_1ba

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ba

    :cond_1ba
    const/16 v1, -0x80

    :goto_1bb
    const/16 v3, -0x71

    if-ge v1, v3, :cond_1bb

    const/16 v3, 0x1bb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5f827591

    if-eq v3, v13, :cond_1bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bb

    :cond_1bb
    const/16 v1, 0x7c

    :goto_1bc
    if-ge v1, v5, :cond_1bc

    const/16 v3, 0x1bc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2b0db90c

    if-eq v3, v13, :cond_1bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bc

    :cond_1bc
    const/16 v1, -0x80

    :goto_1bd
    const/16 v3, -0x70

    if-ge v1, v3, :cond_1bd

    const/16 v3, 0x1bd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x537deff1

    if-eq v3, v13, :cond_1bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bd

    :cond_1bd
    const/16 v1, -0x43

    :goto_1be
    const/16 v3, -0x41

    if-ge v1, v3, :cond_1be

    const/16 v3, 0x1be

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6fdbe4ec

    if-eq v3, v13, :cond_1be

    add-int/lit8 v1, v1, 0x1

    goto :goto_1be

    :cond_1be
    move v1, v7

    :goto_1bf
    const/4 v3, 0x6

    if-ge v1, v3, :cond_1bf

    const/16 v3, 0x1bf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3f00c6d3

    if-eq v3, v13, :cond_1bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_1bf

    :cond_1bf
    const/16 v1, -0x5c

    :goto_1c0
    const/16 v3, -0x50

    if-ge v1, v3, :cond_1c0

    const/16 v3, 0x1c0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xdf9712d

    if-eq v3, v13, :cond_1c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    :cond_1c0
    const/16 v1, 0x10

    :goto_1c1
    const/16 v3, 0x28

    if-ge v1, v3, :cond_1c1

    const/16 v3, 0x1c1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1c1a8390

    if-eq v3, v13, :cond_1c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c1

    :cond_1c1
    move v1, v15

    :goto_1c2
    if-ge v1, v5, :cond_1c2

    const/16 v3, 0x1c2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x8889e13

    if-eq v3, v13, :cond_1c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c2

    :cond_1c2
    const/16 v1, -0x22

    :goto_1c3
    const/16 v3, -0x13

    if-ge v1, v3, :cond_1c3

    const/16 v3, 0x1c3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x62493fdc

    if-eq v3, v13, :cond_1c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c3

    :cond_1c3
    move v1, v7

    :goto_1c4
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1c4

    const/16 v3, 0x1c4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3030e100

    if-eq v3, v13, :cond_1c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c4

    :cond_1c4
    const/16 v1, 0x45

    :goto_1c5
    const/16 v3, 0x56

    if-ge v1, v3, :cond_1c5

    const/16 v3, 0x1c5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1931f254

    if-eq v3, v13, :cond_1c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c5

    :cond_1c5
    move v1, v14

    :goto_1c6
    const/16 v3, 0x6b

    if-ge v1, v3, :cond_1c6

    const/16 v3, 0x1c6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x59ca6cd9

    if-eq v3, v13, :cond_1c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c6

    :cond_1c6
    const/16 v1, 0x6c

    :goto_1c7
    if-ge v1, v5, :cond_1c7

    const/16 v3, 0x1c7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x58cc0e99

    if-eq v3, v13, :cond_1c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c7

    :cond_1c7
    const/16 v1, -0x29

    :goto_1c8
    const/16 v3, -0x19

    if-ge v1, v3, :cond_1c8

    const/16 v3, 0x1c8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5b761fe

    if-eq v3, v13, :cond_1c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c8

    :cond_1c8
    const/16 v1, -0x15

    :goto_1c9
    if-gtz v1, :cond_1c9

    const/16 v3, 0x1c9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xa714560

    if-eq v3, v13, :cond_1c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c9

    :cond_1c9
    const/16 v1, -0x2b

    :goto_1ca
    const/16 v3, -0x1e

    if-ge v1, v3, :cond_1ca

    const/16 v3, 0x1ca

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x679991db

    if-eq v3, v13, :cond_1ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ca

    :cond_1ca
    const/16 v1, -0x42

    :goto_1cb
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_1cb

    const/16 v3, 0x1cb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43a244fc

    if-eq v3, v13, :cond_1cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_1cb

    :cond_1cb
    move v1, v9

    :goto_1cc
    const/16 v3, -0x15

    if-ge v1, v3, :cond_1cc

    const/16 v3, 0x1cc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x26a9a3e8

    if-eq v3, v13, :cond_1cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_1cc

    :cond_1cc
    const/16 v1, -0x41

    :goto_1cd
    const/16 v3, -0x23

    if-ge v1, v3, :cond_1cd

    const/16 v3, 0x1cd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x28feedea

    if-eq v3, v13, :cond_1cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_1cd

    :cond_1cd
    move v1, v11

    :goto_1ce
    if-ge v1, v5, :cond_1ce

    const/16 v3, 0x1ce

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x72171356

    if-eq v3, v13, :cond_1ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ce

    :cond_1ce
    move v1, v7

    :goto_1cf
    const/4 v3, -0x4

    if-ge v1, v3, :cond_1cf

    const/16 v3, 0x1cf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x79cc06b9

    if-eq v3, v13, :cond_1cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_1cf

    :cond_1cf
    const/16 v1, 0x1d

    :goto_1d0
    const/16 v3, 0x34

    if-ge v1, v3, :cond_1d0

    const/16 v3, 0x1d0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x324b859c

    if-eq v3, v13, :cond_1d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d0

    :cond_1d0
    const/16 v1, 0x24

    :goto_1d1
    const/16 v3, 0x36

    if-ge v1, v3, :cond_1d1

    const/16 v3, 0x1d1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3b821866

    if-eq v3, v13, :cond_1d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d1

    :cond_1d1
    const/16 v1, -0x47

    :goto_1d2
    const/16 v3, -0x30

    if-ge v1, v3, :cond_1d2

    const/16 v3, 0x1d2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x14d9639b

    if-eq v3, v13, :cond_1d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d2

    :cond_1d2
    const/16 v1, -0x49

    :goto_1d3
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_1d3

    const/16 v3, 0x1d3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xfe39efc

    if-eq v3, v13, :cond_1d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d3

    :cond_1d3
    move v1, v9

    :goto_1d4
    const/16 v3, -0x26

    if-ge v1, v3, :cond_1d4

    const/16 v3, 0x1d4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x11cd803d

    if-eq v3, v13, :cond_1d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d4

    :cond_1d4
    const/16 v1, -0x7c

    :goto_1d5
    const/16 v3, -0x69

    if-ge v1, v3, :cond_1d5

    const/16 v3, 0x1d5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x34659ccf

    if-eq v3, v13, :cond_1d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d5

    :cond_1d5
    const/16 v1, -0x25

    :goto_1d6
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_1d6

    const/16 v3, 0x1d6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x15dd86fd

    if-eq v3, v13, :cond_1d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d6

    :cond_1d6
    const/16 v1, 0x22

    :goto_1d7
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_1d7

    const/16 v3, 0x1d7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3a8e1c48

    if-eq v3, v13, :cond_1d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d7

    :cond_1d7
    const/16 v1, 0x7a

    :goto_1d8
    if-ge v1, v5, :cond_1d8

    const/16 v3, 0x1d8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x263b2c86

    if-eq v3, v13, :cond_1d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d8

    :cond_1d8
    const/16 v1, -0x1a

    :goto_1d9
    const/16 v3, -0x14

    if-ge v1, v3, :cond_1d9

    const/16 v3, 0x1d9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6e3c05fc

    if-eq v3, v13, :cond_1d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d9

    :cond_1d9
    const/16 v1, -0x67

    :goto_1da
    const/16 v3, -0x52

    if-ge v1, v3, :cond_1da

    const/16 v3, 0x1da

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3b437d29

    if-eq v3, v13, :cond_1da

    add-int/lit8 v1, v1, 0x1

    goto :goto_1da

    :cond_1da
    const/16 v1, -0x54

    :goto_1db
    const/16 v3, -0x49

    if-ge v1, v3, :cond_1db

    const/16 v3, 0x1db

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x304e574f

    if-eq v3, v13, :cond_1db

    add-int/lit8 v1, v1, 0x1

    goto :goto_1db

    :cond_1db
    const/16 v1, -0x46

    :goto_1dc
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_1dc

    const/16 v3, 0x1dc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x53576425

    if-eq v3, v13, :cond_1dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_1dc

    :cond_1dc
    const/16 v1, 0x58

    :goto_1dd
    const/16 v3, 0x62

    if-ge v1, v3, :cond_1dd

    const/16 v3, 0x1dd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x42614f7d

    if-eq v3, v13, :cond_1dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_1dd

    :cond_1dd
    const/16 v1, -0x26

    :goto_1de
    const/16 v3, -0x17

    if-ge v1, v3, :cond_1de

    const/16 v3, 0x1de

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x73045ae9

    if-eq v3, v13, :cond_1de

    add-int/lit8 v1, v1, 0x1

    goto :goto_1de

    :cond_1de
    const/16 v1, -0x17

    :goto_1df
    const/16 v3, -0xa

    if-ge v1, v3, :cond_1df

    const/16 v3, 0x1df

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x483403a2

    if-eq v3, v13, :cond_1df

    add-int/lit8 v1, v1, 0x1

    goto :goto_1df

    :cond_1df
    const/16 v1, -0x78

    :goto_1e0
    const/16 v3, -0x64

    if-ge v1, v3, :cond_1e0

    const/16 v3, 0x1e0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x223a8fc4

    if-eq v3, v13, :cond_1e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e0

    :cond_1e0
    const/16 v1, 0x44

    :goto_1e1
    const/16 v3, 0x58

    if-ge v1, v3, :cond_1e1

    const/16 v3, 0x1e1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x43ebd9b

    if-eq v3, v13, :cond_1e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e1

    :cond_1e1
    const/16 v1, -0x80

    :goto_1e2
    const/16 v3, -0x75

    if-ge v1, v3, :cond_1e2

    const/16 v3, 0x1e2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4daaf2ae    # 3.58503872E8f

    if-eq v3, v13, :cond_1e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e2

    :cond_1e2
    const/16 v1, 0x26

    :goto_1e3
    const/16 v3, 0x32

    if-ge v1, v3, :cond_1e3

    const/16 v3, 0x1e3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3874ae44

    if-eq v3, v13, :cond_1e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e3

    :cond_1e3
    const/16 v1, 0x51

    :goto_1e4
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_1e4

    const/16 v3, 0x1e4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x554edeed

    if-eq v3, v13, :cond_1e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e4

    :cond_1e4
    move v1, v4

    :goto_1e5
    const/4 v3, 0x7

    if-ge v1, v3, :cond_1e5

    const/16 v3, 0x1e5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1490a9f6

    if-eq v3, v13, :cond_1e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e5

    :cond_1e5
    const/16 v1, 0x6f

    :goto_1e6
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_1e6

    const/16 v3, 0x1e6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xd05850e

    if-eq v3, v13, :cond_1e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e6

    :cond_1e6
    const/16 v1, -0x37

    :goto_1e7
    const/16 v3, -0x29

    if-ge v1, v3, :cond_1e7

    const/16 v3, 0x1e7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x35ddaa71

    if-eq v3, v13, :cond_1e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e7

    :cond_1e7
    const/16 v1, 0x61

    :goto_1e8
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_1e8

    const/16 v3, 0x1e8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3201c653

    if-eq v3, v13, :cond_1e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e8

    :cond_1e8
    const/16 v1, 0x9

    :goto_1e9
    const/16 v3, 0x15

    if-ge v1, v3, :cond_1e9

    const/16 v3, 0x1e9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2628ee65

    if-eq v3, v13, :cond_1e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e9

    :cond_1e9
    const/4 v1, 0x2

    :goto_1ea
    const/16 v3, 0xf

    if-ge v1, v3, :cond_1ea

    const/16 v3, 0x1ea

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x302153d2

    if-eq v3, v13, :cond_1ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ea

    :cond_1ea
    const/16 v1, -0x68

    :goto_1eb
    const/16 v3, -0x61

    if-ge v1, v3, :cond_1eb

    const/16 v3, 0x1eb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xca856aa

    if-eq v3, v13, :cond_1eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_1eb

    :cond_1eb
    const/16 v1, -0x42

    :goto_1ec
    if-ge v1, v9, :cond_1ec

    const/16 v3, 0x1ec

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3490cded

    if-eq v3, v13, :cond_1ec

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ec

    :cond_1ec
    const/16 v1, -0x33

    :goto_1ed
    const/16 v3, -0x26

    if-ge v1, v3, :cond_1ed

    const/16 v3, 0x1ed

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xb0a7f1b

    if-eq v3, v13, :cond_1ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ed

    :cond_1ed
    const/16 v1, 0x54

    :goto_1ee
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_1ee

    const/16 v3, 0x1ee

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x56d37589

    if-eq v3, v13, :cond_1ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ee

    :cond_1ee
    const/16 v1, 0x23

    :goto_1ef
    const/16 v3, 0x2e

    if-ge v1, v3, :cond_1ef

    const/16 v3, 0x1ef

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x252e0b4c

    if-eq v3, v13, :cond_1ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ef

    :cond_1ef
    const/16 v1, 0xe

    :goto_1f0
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_1f0

    const/16 v3, 0x1f0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x31eb9a09

    if-eq v3, v13, :cond_1f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f0

    :cond_1f0
    const/16 v1, 0x1d

    :goto_1f1
    const/16 v3, 0x2c

    if-ge v1, v3, :cond_1f1

    const/16 v3, 0x1f1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x53b5e2b2

    if-eq v3, v13, :cond_1f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f1

    :cond_1f1
    const/16 v1, -0x3f

    :goto_1f2
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_1f2

    const/16 v3, 0x1f2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1e123044

    if-eq v3, v13, :cond_1f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f2

    :cond_1f2
    const/16 v1, 0x2e

    :goto_1f3
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_1f3

    const/16 v3, 0x1f3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3a10430d

    if-eq v3, v13, :cond_1f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f3

    :cond_1f3
    const/16 v1, 0x61

    :goto_1f4
    const/16 v3, 0x74

    if-ge v1, v3, :cond_1f4

    const/16 v3, 0x1f4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x638b5d4b

    if-eq v3, v13, :cond_1f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f4

    :cond_1f4
    const/16 v1, -0x1b

    :goto_1f5
    const/16 v3, -0x13

    if-ge v1, v3, :cond_1f5

    const/16 v3, 0x1f5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2544186d

    if-eq v3, v13, :cond_1f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f5

    :cond_1f5
    const/16 v1, -0x80

    :goto_1f6
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_1f6

    const/16 v3, 0x1f6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2362b844

    if-eq v3, v13, :cond_1f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f6

    :cond_1f6
    const/16 v1, -0x77

    :goto_1f7
    const/16 v3, -0x65

    if-ge v1, v3, :cond_1f7

    const/16 v3, 0x1f7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1b98d9fa

    if-eq v3, v13, :cond_1f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f7

    :cond_1f7
    const/16 v1, -0x43

    :goto_1f8
    const/16 v3, -0x27

    if-ge v1, v3, :cond_1f8

    const/16 v3, 0x1f8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xa490199

    if-eq v3, v13, :cond_1f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f8

    :cond_1f8
    const/16 v1, 0x61

    :goto_1f9
    const/16 v3, 0x6b

    if-ge v1, v3, :cond_1f9

    const/16 v3, 0x1f9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x68cdf810

    if-eq v3, v13, :cond_1f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f9

    :cond_1f9
    const/16 v1, 0x39

    :goto_1fa
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_1fa

    const/16 v3, 0x1fa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x58112a64

    if-eq v3, v13, :cond_1fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fa

    :cond_1fa
    const/16 v1, -0x2e

    :goto_1fb
    const/16 v3, -0x27

    if-ge v1, v3, :cond_1fb

    const/16 v3, 0x1fb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x264703e

    if-eq v3, v13, :cond_1fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fb

    :cond_1fb
    const/16 v1, -0x36

    :goto_1fc
    const/16 v3, -0x22

    if-ge v1, v3, :cond_1fc

    const/16 v3, 0x1fc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x345fc24b    # -2.1003114E7f

    if-eq v3, v13, :cond_1fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fc

    :cond_1fc
    const/16 v1, 0x1b

    :goto_1fd
    if-ge v1, v8, :cond_1fd

    const/16 v3, 0x1fd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1e2fc771

    if-eq v3, v13, :cond_1fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fd

    :cond_1fd
    move v1, v10

    :goto_1fe
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1fe

    const/16 v3, 0x1fe

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1e8ce633

    if-eq v3, v13, :cond_1fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_1fe

    :cond_1fe
    const/16 v1, -0x6b

    :goto_1ff
    const/16 v3, -0x57

    if-ge v1, v3, :cond_1ff

    const/16 v3, 0x1ff

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x25543acb

    if-eq v3, v13, :cond_1ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ff

    :cond_1ff
    const/16 v1, -0x1b

    :goto_200
    const/4 v3, -0x7

    if-ge v1, v3, :cond_200

    const/16 v3, 0x200

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x9290eff

    if-eq v3, v13, :cond_200

    add-int/lit8 v1, v1, 0x1

    goto :goto_200

    :cond_200
    const/4 v1, -0x6

    :goto_201
    if-gez v1, :cond_201

    const/16 v3, 0x201

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6dd1b41e

    if-eq v3, v13, :cond_201

    add-int/lit8 v1, v1, 0x1

    goto :goto_201

    :cond_201
    const/16 v1, 0x3b

    :goto_202
    const/16 v3, 0x54

    if-ge v1, v3, :cond_202

    const/16 v3, 0x202

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7115252

    if-eq v3, v13, :cond_202

    add-int/lit8 v1, v1, 0x1

    goto :goto_202

    :cond_202
    const/16 v1, 0x68

    :goto_203
    const/16 v3, 0x71

    if-ge v1, v3, :cond_203

    const/16 v3, 0x203

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x66e2569d

    if-eq v3, v13, :cond_203

    add-int/lit8 v1, v1, 0x1

    goto :goto_203

    :cond_203
    const/16 v1, -0x17

    :goto_204
    const/16 v3, -0xb

    if-ge v1, v3, :cond_204

    const/16 v3, 0x204

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x297ca51f

    if-eq v3, v13, :cond_204

    add-int/lit8 v1, v1, 0x1

    goto :goto_204

    :cond_204
    const/16 v1, -0x5c

    :goto_205
    const/16 v3, -0x50

    if-ge v1, v3, :cond_205

    const/16 v3, 0x205

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4040b2cd

    if-eq v3, v13, :cond_205

    add-int/lit8 v1, v1, 0x1

    goto :goto_205

    :cond_205
    const/16 v1, -0x3f

    :goto_206
    const/16 v3, -0x32

    if-ge v1, v3, :cond_206

    const/16 v3, 0x206

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4e5a568d    # 9.1577632E8f

    if-eq v3, v13, :cond_206

    add-int/lit8 v1, v1, 0x1

    goto :goto_206

    :cond_206
    const/16 v1, -0x72

    :goto_207
    const/16 v3, -0x62

    if-ge v1, v3, :cond_207

    const/16 v3, 0x207

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5f8833da

    if-eq v3, v13, :cond_207

    add-int/lit8 v1, v1, 0x1

    goto :goto_207

    :cond_207
    move v1, v8

    :goto_208
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_208

    const/16 v3, 0x208

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1d8f72ff

    if-eq v3, v13, :cond_208

    add-int/lit8 v1, v1, 0x1

    goto :goto_208

    :cond_208
    const/16 v1, 0x29

    :goto_209
    const/16 v3, 0x42

    if-ge v1, v3, :cond_209

    const/16 v3, 0x209

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x60ebd183

    if-eq v3, v13, :cond_209

    add-int/lit8 v1, v1, 0x1

    goto :goto_209

    :cond_209
    const/16 v1, -0xf

    :goto_20a
    if-ge v1, v7, :cond_20a

    const/16 v3, 0x20a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xbe90889

    if-eq v3, v13, :cond_20a

    add-int/lit8 v1, v1, 0x1

    goto :goto_20a

    :cond_20a
    const/16 v1, -0x59

    :goto_20b
    const/16 v3, -0x42

    if-ge v1, v3, :cond_20b

    const/16 v3, 0x20b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3db3502

    if-eq v3, v13, :cond_20b

    add-int/lit8 v1, v1, 0x1

    goto :goto_20b

    :cond_20b
    const/16 v1, -0x2c

    :goto_20c
    if-ge v1, v10, :cond_20c

    const/16 v3, 0x20c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3b27a911

    if-eq v3, v13, :cond_20c

    add-int/lit8 v1, v1, 0x1

    goto :goto_20c

    :cond_20c
    const/16 v1, 0x74

    :goto_20d
    if-ge v1, v5, :cond_20d

    const/16 v3, 0x20d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xfb68782

    if-eq v3, v13, :cond_20d

    add-int/lit8 v1, v1, 0x1

    goto :goto_20d

    :cond_20d
    const/16 v1, 0x44

    :goto_20e
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_20e

    const/16 v3, 0x20e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1be454dc

    if-eq v3, v13, :cond_20e

    add-int/lit8 v1, v1, 0x1

    goto :goto_20e

    :cond_20e
    const/16 v1, 0x6d

    :goto_20f
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_20f

    const/16 v3, 0x20f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x42a46803

    if-eq v3, v13, :cond_20f

    add-int/lit8 v1, v1, 0x1

    goto :goto_20f

    :cond_20f
    const/16 v1, -0x80

    :goto_210
    const/16 v3, -0x77

    if-ge v1, v3, :cond_210

    const/16 v3, 0x210

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7689ffab

    if-eq v3, v13, :cond_210

    add-int/lit8 v1, v1, 0x1

    goto :goto_210

    :cond_210
    const/16 v1, -0x7b

    :goto_211
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_211

    const/16 v3, 0x211

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x65e05a5

    if-eq v3, v13, :cond_211

    add-int/lit8 v1, v1, 0x1

    goto :goto_211

    :cond_211
    const/16 v1, -0x61

    :goto_212
    const/16 v3, -0x52

    if-ge v1, v3, :cond_212

    const/16 v3, 0x212

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x19db0c9

    if-eq v3, v13, :cond_212

    add-int/lit8 v1, v1, 0x1

    goto :goto_212

    :cond_212
    const/16 v1, 0x41

    :goto_213
    if-ge v1, v14, :cond_213

    const/16 v3, 0x213

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x18089306

    if-eq v3, v13, :cond_213

    add-int/lit8 v1, v1, 0x1

    goto :goto_213

    :cond_213
    const/16 v1, 0x60

    :goto_214
    if-ge v1, v15, :cond_214

    const/16 v3, 0x214

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x171be9ea

    if-eq v3, v13, :cond_214

    add-int/lit8 v1, v1, 0x1

    goto :goto_214

    :cond_214
    const/16 v1, 0x50

    :goto_215
    const/16 v3, 0x62

    if-ge v1, v3, :cond_215

    const/16 v3, 0x215

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x52ffe2e7

    if-eq v3, v13, :cond_215

    add-int/lit8 v1, v1, 0x1

    goto :goto_215

    :cond_215
    const/16 v1, 0x62

    :goto_216
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_216

    const/16 v3, 0x216

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7a8d5116

    if-eq v3, v13, :cond_216

    add-int/lit8 v1, v1, 0x1

    goto :goto_216

    :cond_216
    const/16 v1, -0x4a

    :goto_217
    const/16 v3, -0x42

    if-ge v1, v3, :cond_217

    const/16 v3, 0x217

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x19cf708

    if-eq v3, v13, :cond_217

    add-int/lit8 v1, v1, 0x1

    goto :goto_217

    :cond_217
    const/16 v1, 0x1e

    :goto_218
    const/16 v3, 0x37

    if-ge v1, v3, :cond_218

    const/16 v3, 0x218

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6af66ad9

    if-eq v3, v13, :cond_218

    add-int/lit8 v1, v1, 0x1

    goto :goto_218

    :cond_218
    const/16 v1, 0x53

    :goto_219
    const/16 v3, 0x62

    if-ge v1, v3, :cond_219

    const/16 v3, 0x219

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6d4d5d82

    if-eq v3, v13, :cond_219

    add-int/lit8 v1, v1, 0x1

    goto :goto_219

    :cond_219
    move v1, v14

    :goto_21a
    const/16 v3, 0x68

    if-ge v1, v3, :cond_21a

    const/16 v3, 0x21a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3f727d3b

    if-eq v3, v13, :cond_21a

    add-int/lit8 v1, v1, 0x1

    goto :goto_21a

    :cond_21a
    const/16 v1, 0x47

    :goto_21b
    const/16 v3, 0x58

    if-ge v1, v3, :cond_21b

    const/16 v3, 0x21b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x764dac82

    if-eq v3, v13, :cond_21b

    add-int/lit8 v1, v1, 0x1

    goto :goto_21b

    :cond_21b
    move v1, v12

    :goto_21c
    const/16 v3, 0x43

    if-ge v1, v3, :cond_21c

    const/16 v3, 0x21c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x77f765b8

    if-eq v3, v13, :cond_21c

    add-int/lit8 v1, v1, 0x1

    goto :goto_21c

    :cond_21c
    const/16 v1, -0x80

    :goto_21d
    const/16 v3, -0x72

    if-ge v1, v3, :cond_21d

    const/16 v3, 0x21d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7783f2de

    if-eq v3, v13, :cond_21d

    add-int/lit8 v1, v1, 0x1

    goto :goto_21d

    :cond_21d
    const/16 v1, 0x76

    :goto_21e
    if-ge v1, v5, :cond_21e

    const/16 v3, 0x21e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c5af058

    if-eq v3, v13, :cond_21e

    add-int/lit8 v1, v1, 0x1

    goto :goto_21e

    :cond_21e
    const/16 v1, -0x13

    :goto_21f
    const/16 v3, 0x8

    if-ge v1, v3, :cond_21f

    const/16 v3, 0x21f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6563c854

    if-eq v3, v13, :cond_21f

    add-int/lit8 v1, v1, 0x1

    goto :goto_21f

    :cond_21f
    const/4 v1, -0x8

    :goto_220
    const/4 v3, -0x1

    if-ge v1, v3, :cond_220

    const/16 v3, 0x220

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xfdeffc7

    if-eq v3, v13, :cond_220

    add-int/lit8 v1, v1, 0x1

    goto :goto_220

    :cond_220
    move v1, v9

    :goto_221
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_221

    const/16 v3, 0x221

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xafab787

    if-eq v3, v13, :cond_221

    add-int/lit8 v1, v1, 0x1

    goto :goto_221

    :cond_221
    const/4 v1, -0x1

    :goto_222
    const/16 v3, 0xf

    if-ge v1, v3, :cond_222

    const/16 v3, 0x222

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7d94122f

    if-eq v3, v13, :cond_222

    add-int/lit8 v1, v1, 0x1

    goto :goto_222

    :cond_222
    const/16 v1, -0x65

    :goto_223
    const/16 v3, -0x54

    if-ge v1, v3, :cond_223

    const/16 v3, 0x223

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x50d3250c

    if-eq v3, v13, :cond_223

    add-int/lit8 v1, v1, 0x1

    goto :goto_223

    :cond_223
    const/16 v1, 0x4a

    :goto_224
    const/16 v3, 0x5c

    if-ge v1, v3, :cond_224

    const/16 v3, 0x224

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7dcfaf6e

    if-eq v3, v13, :cond_224

    add-int/lit8 v1, v1, 0x1

    goto :goto_224

    :cond_224
    const/16 v1, -0x31

    :goto_225
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_225

    const/16 v3, 0x225

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3730cf8

    if-eq v3, v13, :cond_225

    add-int/lit8 v1, v1, 0x1

    goto :goto_225

    :cond_225
    const/16 v1, 0x1c

    :goto_226
    const/16 v3, 0x36

    if-ge v1, v3, :cond_226

    const/16 v3, 0x226

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xabc53e3

    if-eq v3, v13, :cond_226

    add-int/lit8 v1, v1, 0x1

    goto :goto_226

    :cond_226
    const/4 v1, -0x3

    :goto_227
    const/4 v3, 0x2

    if-ge v1, v3, :cond_227

    const/16 v3, 0x227

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4c37bacf

    if-eq v3, v13, :cond_227

    add-int/lit8 v1, v1, 0x1

    goto :goto_227

    :cond_227
    const/16 v1, 0x6a

    :goto_228
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_228

    const/16 v3, 0x228

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x54959cac

    if-eq v3, v13, :cond_228

    add-int/lit8 v1, v1, 0x1

    goto :goto_228

    :cond_228
    const/16 v1, 0xa

    :goto_229
    const/16 v3, 0x1d

    if-ge v1, v3, :cond_229

    const/16 v3, 0x229

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3e74d906

    if-eq v3, v13, :cond_229

    add-int/lit8 v1, v1, 0x1

    goto :goto_229

    :cond_229
    const/16 v1, 0x24

    :goto_22a
    const/16 v3, 0x39

    if-ge v1, v3, :cond_22a

    const/16 v3, 0x22a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2b3590c4

    if-eq v3, v13, :cond_22a

    add-int/lit8 v1, v1, 0x1

    goto :goto_22a

    :cond_22a
    const/16 v1, -0x11

    :goto_22b
    const/4 v3, -0x4

    if-ge v1, v3, :cond_22b

    const/16 v3, 0x22b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1f034a67

    if-eq v3, v13, :cond_22b

    add-int/lit8 v1, v1, 0x1

    goto :goto_22b

    :cond_22b
    const/16 v1, -0x1e

    :goto_22c
    const/16 v3, -0x13

    if-ge v1, v3, :cond_22c

    const/16 v3, 0x22c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x312ef10f

    if-eq v3, v13, :cond_22c

    add-int/lit8 v1, v1, 0x1

    goto :goto_22c

    :cond_22c
    const/16 v1, -0x66

    :goto_22d
    const/16 v3, -0x55

    if-ge v1, v3, :cond_22d

    const/16 v3, 0x22d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1b680c21

    if-eq v3, v13, :cond_22d

    add-int/lit8 v1, v1, 0x1

    goto :goto_22d

    :cond_22d
    const/16 v1, -0x3b

    :goto_22e
    const/16 v3, -0x1d

    if-ge v1, v3, :cond_22e

    const/16 v3, 0x22e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13de672f

    if-eq v3, v13, :cond_22e

    add-int/lit8 v1, v1, 0x1

    goto :goto_22e

    :cond_22e
    const/16 v1, -0x68

    :goto_22f
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_22f

    const/16 v3, 0x22f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x37faab5d

    if-eq v3, v13, :cond_22f

    add-int/lit8 v1, v1, 0x1

    goto :goto_22f

    :cond_22f
    const/16 v1, 0x70

    :goto_230
    if-ge v1, v5, :cond_230

    const/16 v3, 0x230

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1712e031

    if-eq v3, v13, :cond_230

    add-int/lit8 v1, v1, 0x1

    goto :goto_230

    :cond_230
    const/16 v1, 0x2e

    :goto_231
    const/16 v3, 0x45

    if-ge v1, v3, :cond_231

    const/16 v3, 0x231

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x104ec3c8

    if-eq v3, v13, :cond_231

    add-int/lit8 v1, v1, 0x1

    goto :goto_231

    :cond_231
    const/16 v1, 0x75

    :goto_232
    if-ge v1, v5, :cond_232

    const/16 v3, 0x232

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x27bd446a

    if-eq v3, v13, :cond_232

    add-int/lit8 v1, v1, 0x1

    goto :goto_232

    :cond_232
    const/16 v1, -0x3b

    :goto_233
    const/16 v3, -0x2c

    if-ge v1, v3, :cond_233

    const/16 v3, 0x233

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5b84895b

    if-eq v3, v13, :cond_233

    add-int/lit8 v1, v1, 0x1

    goto :goto_233

    :cond_233
    const/16 v1, 0x64

    :goto_234
    if-ge v1, v5, :cond_234

    const/16 v3, 0x234

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4c970f88    # 7.9199296E7f

    if-eq v3, v13, :cond_234

    add-int/lit8 v1, v1, 0x1

    goto :goto_234

    :cond_234
    const/16 v1, -0x27

    :goto_235
    const/16 v3, -0x19

    if-ge v1, v3, :cond_235

    const/16 v3, 0x235

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2dd31314

    if-eq v3, v13, :cond_235

    add-int/lit8 v1, v1, 0x1

    goto :goto_235

    :cond_235
    const/16 v1, -0x51

    :goto_236
    const/16 v3, -0x48

    if-ge v1, v3, :cond_236

    const/16 v3, 0x236

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x79a8cdfc

    if-eq v3, v13, :cond_236

    add-int/lit8 v1, v1, 0x1

    goto :goto_236

    :cond_236
    const/16 v1, -0x45

    :goto_237
    const/16 v3, -0x38

    if-ge v1, v3, :cond_237

    const/16 v3, 0x237

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x55da95c2

    if-eq v3, v13, :cond_237

    add-int/lit8 v1, v1, 0x1

    goto :goto_237

    :cond_237
    const/16 v1, 0x6a

    :goto_238
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_238

    const/16 v3, 0x238

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x48bfae87

    if-eq v3, v13, :cond_238

    add-int/lit8 v1, v1, 0x1

    goto :goto_238

    :cond_238
    const/16 v1, -0x14

    :goto_239
    if-ge v1, v7, :cond_239

    const/16 v3, 0x239

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x70de71ba

    if-eq v3, v13, :cond_239

    add-int/lit8 v1, v1, 0x1

    goto :goto_239

    :cond_239
    const/16 v1, 0x60

    :goto_23a
    const/16 v3, 0x75

    if-ge v1, v3, :cond_23a

    const/16 v3, 0x23a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x15f88466

    if-eq v3, v13, :cond_23a

    add-int/lit8 v1, v1, 0x1

    goto :goto_23a

    :cond_23a
    const/16 v1, -0x44

    :goto_23b
    const/16 v3, -0x39

    if-ge v1, v3, :cond_23b

    const/16 v3, 0x23b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x57b9f8b4

    if-eq v3, v13, :cond_23b

    add-int/lit8 v1, v1, 0x1

    goto :goto_23b

    :cond_23b
    const/16 v1, 0x9

    :goto_23c
    const/16 v3, 0x24

    if-ge v1, v3, :cond_23c

    const/16 v3, 0x23c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x33371501

    if-eq v3, v13, :cond_23c

    add-int/lit8 v1, v1, 0x1

    goto :goto_23c

    :cond_23c
    const/16 v1, -0x80

    :goto_23d
    const/16 v3, -0x70

    if-ge v1, v3, :cond_23d

    const/16 v3, 0x23d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43c6e2fd

    if-eq v3, v13, :cond_23d

    add-int/lit8 v1, v1, 0x1

    goto :goto_23d

    :cond_23d
    const/16 v1, 0x65

    :goto_23e
    const/16 v3, 0x78

    if-ge v1, v3, :cond_23e

    const/16 v3, 0x23e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x66d2237c

    if-eq v3, v13, :cond_23e

    add-int/lit8 v1, v1, 0x1

    goto :goto_23e

    :cond_23e
    const/16 v1, -0x18

    :goto_23f
    const/4 v3, 0x3

    if-ge v1, v3, :cond_23f

    const/16 v3, 0x23f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x74bc74ed

    if-eq v3, v13, :cond_23f

    add-int/lit8 v1, v1, 0x1

    goto :goto_23f

    :cond_23f
    const/16 v1, -0x71

    :goto_240
    const/16 v3, -0x6c

    if-ge v1, v3, :cond_240

    const/16 v3, 0x240

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x38ee25c9

    if-eq v3, v13, :cond_240

    add-int/lit8 v1, v1, 0x1

    goto :goto_240

    :cond_240
    const/16 v1, 0x5c

    :goto_241
    const/16 v3, 0x6f

    if-ge v1, v3, :cond_241

    const/16 v3, 0x241

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x487940b9

    if-eq v3, v13, :cond_241

    add-int/lit8 v1, v1, 0x1

    goto :goto_241

    :cond_241
    move v1, v12

    :goto_242
    const/16 v3, 0x44

    if-ge v1, v3, :cond_242

    const/16 v3, 0x242

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x77848b50

    if-eq v3, v13, :cond_242

    add-int/lit8 v1, v1, 0x1

    goto :goto_242

    :cond_242
    const/16 v1, -0x30

    :goto_243
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_243

    const/16 v3, 0x243

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7248670

    if-eq v3, v13, :cond_243

    add-int/lit8 v1, v1, 0x1

    goto :goto_243

    :cond_243
    const/16 v1, 0x11

    :goto_244
    const/16 v3, 0x24

    if-ge v1, v3, :cond_244

    const/16 v3, 0x244

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x459d9a1c

    if-eq v3, v13, :cond_244

    add-int/lit8 v1, v1, 0x1

    goto :goto_244

    :cond_244
    const/4 v1, 0x0

    :goto_245
    const/16 v3, 0xd

    if-ge v1, v3, :cond_245

    const/16 v3, 0x245

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x71205c95

    if-eq v3, v13, :cond_245

    add-int/lit8 v1, v1, 0x1

    goto :goto_245

    :cond_245
    const/16 v1, 0x5f

    :goto_246
    if-ge v1, v11, :cond_246

    const/16 v3, 0x246

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5ee7f37f

    if-eq v3, v13, :cond_246

    add-int/lit8 v1, v1, 0x1

    goto :goto_246

    :cond_246
    const/16 v1, 0x70

    :goto_247
    if-ge v1, v5, :cond_247

    const/16 v3, 0x247

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x78b9c04b

    if-eq v3, v13, :cond_247

    add-int/lit8 v1, v1, 0x1

    goto :goto_247

    :cond_247
    const/16 v1, -0x57

    :goto_248
    const/16 v3, -0x41

    if-ge v1, v3, :cond_248

    const/16 v3, 0x248

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xf6375c8

    if-eq v3, v13, :cond_248

    add-int/lit8 v1, v1, 0x1

    goto :goto_248

    :cond_248
    const/16 v1, 0x46

    :goto_249
    const/16 v3, 0x57

    if-ge v1, v3, :cond_249

    const/16 v3, 0x249

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6605c0ae

    if-eq v3, v13, :cond_249

    add-int/lit8 v1, v1, 0x1

    goto :goto_249

    :cond_249
    const/16 v1, -0x16

    :goto_24a
    const/4 v3, -0x5

    if-ge v1, v3, :cond_24a

    const/16 v3, 0x24a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x391db439

    if-eq v3, v13, :cond_24a

    add-int/lit8 v1, v1, 0x1

    goto :goto_24a

    :cond_24a
    const/4 v1, 0x1

    :goto_24b
    const/16 v3, 0x17

    if-ge v1, v3, :cond_24b

    const/16 v3, 0x24b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43a22443

    if-eq v3, v13, :cond_24b

    add-int/lit8 v1, v1, 0x1

    goto :goto_24b

    :cond_24b
    const/16 v1, -0x40

    :goto_24c
    const/16 v3, -0x31

    if-ge v1, v3, :cond_24c

    const/16 v3, 0x24c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x70a8e042

    if-eq v3, v13, :cond_24c

    add-int/lit8 v1, v1, 0x1

    goto :goto_24c

    :cond_24c
    const/16 v1, 0x21

    :goto_24d
    const/16 v3, 0x2e

    if-ge v1, v3, :cond_24d

    const/16 v3, 0x24d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5ea6a85f

    if-eq v3, v13, :cond_24d

    add-int/lit8 v1, v1, 0x1

    goto :goto_24d

    :cond_24d
    const/16 v1, 0x1d

    :goto_24e
    const/16 v3, 0x27

    if-ge v1, v3, :cond_24e

    const/16 v3, 0x24e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x38f08b74

    if-eq v3, v13, :cond_24e

    add-int/lit8 v1, v1, 0x1

    goto :goto_24e

    :cond_24e
    move v1, v15

    :goto_24f
    const/16 v3, 0x7b

    if-ge v1, v3, :cond_24f

    const/16 v3, 0x24f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7eea76a6

    if-eq v3, v13, :cond_24f

    add-int/lit8 v1, v1, 0x1

    goto :goto_24f

    :cond_24f
    const/16 v1, -0x34

    :goto_250
    const/16 v3, -0x23

    if-ge v1, v3, :cond_250

    const/16 v3, 0x250

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4cb49e88    # 9.4696512E7f

    if-eq v3, v13, :cond_250

    add-int/lit8 v1, v1, 0x1

    goto :goto_250

    :cond_250
    const/16 v1, 0x11

    :goto_251
    if-ge v1, v12, :cond_251

    const/16 v3, 0x251

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x49525294    # 861481.25f

    if-eq v3, v13, :cond_251

    add-int/lit8 v1, v1, 0x1

    goto :goto_251

    :cond_251
    const/16 v1, 0x4c

    :goto_252
    const/16 v3, 0x55

    if-ge v1, v3, :cond_252

    const/16 v3, 0x252

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7519874

    if-eq v3, v13, :cond_252

    add-int/lit8 v1, v1, 0x1

    goto :goto_252

    :cond_252
    const/16 v1, 0x3a

    :goto_253
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_253

    const/16 v3, 0x253

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x71b8e0ed

    if-eq v3, v13, :cond_253

    add-int/lit8 v1, v1, 0x1

    goto :goto_253

    :cond_253
    const/16 v1, -0x7a

    :goto_254
    const/16 v3, -0x69

    if-ge v1, v3, :cond_254

    const/16 v3, 0x254

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2b0de687

    if-eq v3, v13, :cond_254

    add-int/lit8 v1, v1, 0x1

    goto :goto_254

    :cond_254
    const/16 v1, 0x5f

    :goto_255
    const/16 v3, 0x6a

    if-ge v1, v3, :cond_255

    const/16 v3, 0x255

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x799f2aac

    if-eq v3, v13, :cond_255

    add-int/lit8 v1, v1, 0x1

    goto :goto_255

    :cond_255
    const/16 v1, 0x10

    :goto_256
    const/16 v3, 0x19

    if-ge v1, v3, :cond_256

    const/16 v3, 0x256

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3ef84a41

    if-eq v3, v13, :cond_256

    add-int/lit8 v1, v1, 0x1

    goto :goto_256

    :cond_256
    const/16 v1, -0x7a

    :goto_257
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_257

    const/16 v3, 0x257

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45259cba

    if-eq v3, v13, :cond_257

    add-int/lit8 v1, v1, 0x1

    goto :goto_257

    :cond_257
    const/16 v1, -0x17

    :goto_258
    const/4 v3, -0x7

    if-ge v1, v3, :cond_258

    const/16 v3, 0x258

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4f13e857

    if-eq v3, v13, :cond_258

    add-int/lit8 v1, v1, 0x1

    goto :goto_258

    :cond_258
    const/16 v1, 0x17

    :goto_259
    const/16 v3, 0x20

    if-ge v1, v3, :cond_259

    const/16 v3, 0x259

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x53a2ddec

    if-eq v3, v13, :cond_259

    add-int/lit8 v1, v1, 0x1

    goto :goto_259

    :cond_259
    const/16 v1, 0xe

    :goto_25a
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_25a

    const/16 v3, 0x25a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x55eee0d

    if-eq v3, v13, :cond_25a

    add-int/lit8 v1, v1, 0x1

    goto :goto_25a

    :cond_25a
    const/16 v1, -0x2e

    :goto_25b
    const/16 v3, -0x1f

    if-ge v1, v3, :cond_25b

    const/16 v3, 0x25b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x19d2cacd

    if-eq v3, v13, :cond_25b

    add-int/lit8 v1, v1, 0x1

    goto :goto_25b

    :cond_25b
    const/16 v1, -0x80

    :goto_25c
    const/16 v3, -0x67

    if-ge v1, v3, :cond_25c

    const/16 v3, 0x25c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x51476ea6

    if-eq v3, v13, :cond_25c

    add-int/lit8 v1, v1, 0x1

    goto :goto_25c

    :cond_25c
    const/16 v1, 0x25

    :goto_25d
    const/16 v3, 0x3b

    if-ge v1, v3, :cond_25d

    const/16 v3, 0x25d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3846dfad

    if-eq v3, v13, :cond_25d

    add-int/lit8 v1, v1, 0x1

    goto :goto_25d

    :cond_25d
    const/16 v1, 0x28

    :goto_25e
    const/16 v3, 0x36

    if-ge v1, v3, :cond_25e

    const/16 v3, 0x25e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x42f71014

    if-eq v3, v13, :cond_25e

    add-int/lit8 v1, v1, 0x1

    goto :goto_25e

    :cond_25e
    const/16 v1, -0x80

    :goto_25f
    const/16 v3, -0x6f

    if-ge v1, v3, :cond_25f

    const/16 v3, 0x25f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x14f28f2d

    if-eq v3, v13, :cond_25f

    add-int/lit8 v1, v1, 0x1

    goto :goto_25f

    :cond_25f
    move v1, v4

    :goto_260
    const/4 v3, 0x5

    if-ge v1, v3, :cond_260

    const/16 v3, 0x260

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7a1fcef3

    if-eq v3, v13, :cond_260

    add-int/lit8 v1, v1, 0x1

    goto :goto_260

    :cond_260
    const/16 v1, 0x19

    :goto_261
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_261

    const/16 v3, 0x261

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x47e62a1c

    if-eq v3, v13, :cond_261

    add-int/lit8 v1, v1, 0x1

    goto :goto_261

    :cond_261
    const/16 v1, -0x7f

    :goto_262
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_262

    const/16 v3, 0x262

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x549afc82

    if-eq v3, v13, :cond_262

    add-int/lit8 v1, v1, 0x1

    goto :goto_262

    :cond_262
    const/16 v1, -0x11

    :goto_263
    const/4 v3, -0x1

    if-ge v1, v3, :cond_263

    const/16 v3, 0x263

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x91c3c22

    if-eq v3, v13, :cond_263

    add-int/lit8 v1, v1, 0x1

    goto :goto_263

    :cond_263
    const/16 v1, -0x1f

    :goto_264
    const/16 v3, -0x10

    if-ge v1, v3, :cond_264

    const/16 v3, 0x264

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x281ec594

    if-eq v3, v13, :cond_264

    add-int/lit8 v1, v1, 0x1

    goto :goto_264

    :cond_264
    const/16 v1, -0x31

    :goto_265
    const/16 v3, -0x2b

    if-ge v1, v3, :cond_265

    const/16 v3, 0x265

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x67423478

    if-eq v3, v13, :cond_265

    add-int/lit8 v1, v1, 0x1

    goto :goto_265

    :cond_265
    const/16 v1, -0x40

    :goto_266
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_266

    const/16 v3, 0x266

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x65e35dea

    if-eq v3, v13, :cond_266

    add-int/lit8 v1, v1, 0x1

    goto :goto_266

    :cond_266
    const/16 v1, 0x24

    :goto_267
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_267

    const/16 v3, 0x267

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x649403ed

    if-eq v3, v13, :cond_267

    add-int/lit8 v1, v1, 0x1

    goto :goto_267

    :cond_267
    const/16 v1, -0x6f

    :goto_268
    const/16 v3, -0x5f

    if-ge v1, v3, :cond_268

    const/16 v3, 0x268

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xc448e9e

    if-eq v3, v13, :cond_268

    add-int/lit8 v1, v1, 0x1

    goto :goto_268

    :cond_268
    const/16 v1, 0x6e

    :goto_269
    const/16 v3, 0x79

    if-ge v1, v3, :cond_269

    const/16 v3, 0x269

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x10bc4637

    if-eq v3, v13, :cond_269

    add-int/lit8 v1, v1, 0x1

    goto :goto_269

    :cond_269
    const/16 v1, 0x2d

    :goto_26a
    const/16 v3, 0x41

    if-ge v1, v3, :cond_26a

    const/16 v3, 0x26a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3a3d9a31

    if-eq v3, v13, :cond_26a

    add-int/lit8 v1, v1, 0x1

    goto :goto_26a

    :cond_26a
    const/16 v1, 0x20

    :goto_26b
    const/16 v3, 0x2c

    if-ge v1, v3, :cond_26b

    const/16 v3, 0x26b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3711865f

    if-eq v3, v13, :cond_26b

    add-int/lit8 v1, v1, 0x1

    goto :goto_26b

    :cond_26b
    const/16 v1, -0x44

    :goto_26c
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_26c

    const/16 v3, 0x26c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x691d9415

    if-eq v3, v13, :cond_26c

    add-int/lit8 v1, v1, 0x1

    goto :goto_26c

    :cond_26c
    const/16 v1, -0x61

    :goto_26d
    const/16 v3, -0x52

    if-ge v1, v3, :cond_26d

    const/16 v3, 0x26d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x25ccf3e0

    if-eq v3, v13, :cond_26d

    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    :cond_26d
    const/16 v1, 0x60

    :goto_26e
    const/16 v3, 0x64

    if-ge v1, v3, :cond_26e

    const/16 v3, 0x26e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6d682942

    if-eq v3, v13, :cond_26e

    add-int/lit8 v1, v1, 0x1

    goto :goto_26e

    :cond_26e
    const/16 v1, -0x70

    :goto_26f
    const/16 v3, -0x65

    if-ge v1, v3, :cond_26f

    const/16 v3, 0x26f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x46273d73

    if-eq v3, v13, :cond_26f

    add-int/lit8 v1, v1, 0x1

    goto :goto_26f

    :cond_26f
    const/16 v1, 0x4c

    :goto_270
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_270

    const/16 v3, 0x270

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3f0bbaf2

    if-eq v3, v13, :cond_270

    add-int/lit8 v1, v1, 0x1

    goto :goto_270

    :cond_270
    const/16 v1, -0x54

    :goto_271
    const/16 v3, -0x4d

    if-ge v1, v3, :cond_271

    const/16 v3, 0x271

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x693ff2fc

    if-eq v3, v13, :cond_271

    add-int/lit8 v1, v1, 0x1

    goto :goto_271

    :cond_271
    const/16 v1, -0x31

    :goto_272
    const/16 v3, -0x26

    if-ge v1, v3, :cond_272

    const/16 v3, 0x272

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x15264361

    if-eq v3, v13, :cond_272

    add-int/lit8 v1, v1, 0x1

    goto :goto_272

    :cond_272
    const/16 v1, 0x70

    :goto_273
    if-ge v1, v5, :cond_273

    const/16 v3, 0x273

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x23ca0d96

    if-eq v3, v13, :cond_273

    add-int/lit8 v1, v1, 0x1

    goto :goto_273

    :cond_273
    const/16 v1, 0x13

    :goto_274
    const/16 v3, 0x24

    if-ge v1, v3, :cond_274

    const/16 v3, 0x274

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7848d355

    if-eq v3, v13, :cond_274

    add-int/lit8 v1, v1, 0x1

    goto :goto_274

    :cond_274
    const/16 v1, -0x27

    :goto_275
    const/16 v3, -0x14

    if-ge v1, v3, :cond_275

    const/16 v3, 0x275

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x30112ba7

    if-eq v3, v13, :cond_275

    add-int/lit8 v1, v1, 0x1

    goto :goto_275

    :cond_275
    const/16 v1, 0x34

    :goto_276
    const/16 v3, 0x37

    if-ge v1, v3, :cond_276

    const/16 v3, 0x276

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7f65c6b2

    if-eq v3, v13, :cond_276

    add-int/lit8 v1, v1, 0x1

    goto :goto_276

    :cond_276
    const/16 v1, 0x23

    :goto_277
    if-ge v1, v2, :cond_277

    const/16 v3, 0x277

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6da02603

    if-eq v3, v13, :cond_277

    add-int/lit8 v1, v1, 0x1

    goto :goto_277

    :cond_277
    const/16 v1, 0x67

    :goto_278
    const/16 v3, 0x74

    if-ge v1, v3, :cond_278

    const/16 v3, 0x278

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x78dd306d

    if-eq v3, v13, :cond_278

    add-int/lit8 v1, v1, 0x1

    goto :goto_278

    :cond_278
    const/16 v1, 0x7d

    :goto_279
    if-ge v1, v5, :cond_279

    const/16 v3, 0x279

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7b4e9983

    if-eq v3, v13, :cond_279

    add-int/lit8 v1, v1, 0x1

    goto :goto_279

    :cond_279
    const/16 v1, 0x4a

    :goto_27a
    const/16 v3, 0x60

    if-ge v1, v3, :cond_27a

    const/16 v3, 0x27a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7f78f00a

    if-eq v3, v13, :cond_27a

    add-int/lit8 v1, v1, 0x1

    goto :goto_27a

    :cond_27a
    const/16 v1, 0x31

    :goto_27b
    const/16 v3, 0x41

    if-ge v1, v3, :cond_27b

    const/16 v3, 0x27b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2407375f

    if-eq v3, v13, :cond_27b

    add-int/lit8 v1, v1, 0x1

    goto :goto_27b

    :cond_27b
    const/16 v1, -0xb

    :goto_27c
    const/4 v3, -0x5

    if-ge v1, v3, :cond_27c

    const/16 v3, 0x27c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xf65ab82

    if-eq v3, v13, :cond_27c

    add-int/lit8 v1, v1, 0x1

    goto :goto_27c

    :cond_27c
    const/16 v1, -0x6d

    :goto_27d
    const/16 v3, -0x65

    if-ge v1, v3, :cond_27d

    const/16 v3, 0x27d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x698d6283

    if-eq v3, v13, :cond_27d

    add-int/lit8 v1, v1, 0x1

    goto :goto_27d

    :cond_27d
    const/16 v1, -0x26

    :goto_27e
    const/16 v3, -0x13

    if-ge v1, v3, :cond_27e

    const/16 v3, 0x27e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3dbbc68d

    if-eq v3, v13, :cond_27e

    add-int/lit8 v1, v1, 0x1

    goto :goto_27e

    :cond_27e
    const/16 v1, -0x7d

    :goto_27f
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_27f

    const/16 v3, 0x27f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7435fe67

    if-eq v3, v13, :cond_27f

    add-int/lit8 v1, v1, 0x1

    goto :goto_27f

    :cond_27f
    const/16 v1, -0x23

    :goto_280
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_280

    const/16 v3, 0x280

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x56d5835d

    if-eq v3, v13, :cond_280

    add-int/lit8 v1, v1, 0x1

    goto :goto_280

    :cond_280
    const/16 v1, 0x66

    :goto_281
    const/16 v3, 0x74

    if-ge v1, v3, :cond_281

    const/16 v3, 0x281

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3306cfea

    if-eq v3, v13, :cond_281

    add-int/lit8 v1, v1, 0x1

    goto :goto_281

    :cond_281
    const/16 v1, 0x3c

    :goto_282
    const/16 v3, 0x4f

    if-ge v1, v3, :cond_282

    const/16 v3, 0x282

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x15e84cd8

    if-eq v3, v13, :cond_282

    add-int/lit8 v1, v1, 0x1

    goto :goto_282

    :cond_282
    const/16 v1, -0x23

    :goto_283
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_283

    const/16 v3, 0x283

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x613c0f3b

    if-eq v3, v13, :cond_283

    add-int/lit8 v1, v1, 0x1

    goto :goto_283

    :cond_283
    const/16 v1, -0x31

    :goto_284
    const/16 v3, -0x27

    if-ge v1, v3, :cond_284

    const/16 v3, 0x284

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x207562f7

    if-eq v3, v13, :cond_284

    add-int/lit8 v1, v1, 0x1

    goto :goto_284

    :cond_284
    const/16 v1, -0x29

    :goto_285
    const/16 v3, -0x14

    if-ge v1, v3, :cond_285

    const/16 v3, 0x285

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x24242d40

    if-eq v3, v13, :cond_285

    add-int/lit8 v1, v1, 0x1

    goto :goto_285

    :cond_285
    const/16 v1, -0x67

    :goto_286
    const/16 v3, -0x5a

    if-ge v1, v3, :cond_286

    const/16 v3, 0x286

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x118ae43b

    if-eq v3, v13, :cond_286

    add-int/lit8 v1, v1, 0x1

    goto :goto_286

    :cond_286
    const/4 v1, 0x0

    :goto_287
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_287

    const/16 v3, 0x287

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x758bc311

    if-eq v3, v13, :cond_287

    add-int/lit8 v1, v1, 0x1

    goto :goto_287

    :cond_287
    const/16 v1, -0x7f

    :goto_288
    const/16 v3, -0x79

    if-ge v1, v3, :cond_288

    const/16 v3, 0x288

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7b70c9a

    if-eq v3, v13, :cond_288

    add-int/lit8 v1, v1, 0x1

    goto :goto_288

    :cond_288
    const/16 v1, -0x40

    :goto_289
    if-ge v1, v9, :cond_289

    const/16 v3, 0x289

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x72f93ca0

    if-eq v3, v13, :cond_289

    add-int/lit8 v1, v1, 0x1

    goto :goto_289

    :cond_289
    const/4 v1, -0x4

    :goto_28a
    const/16 v3, 0x10

    if-ge v1, v3, :cond_28a

    const/16 v3, 0x28a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xa0bb296

    if-eq v3, v13, :cond_28a

    add-int/lit8 v1, v1, 0x1

    goto :goto_28a

    :cond_28a
    const/16 v1, 0x38

    :goto_28b
    if-ge v1, v6, :cond_28b

    const/16 v3, 0x28b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x28b57ebc

    if-eq v3, v13, :cond_28b

    add-int/lit8 v1, v1, 0x1

    goto :goto_28b

    :cond_28b
    const/16 v1, 0x6b

    :goto_28c
    if-ge v1, v5, :cond_28c

    const/16 v3, 0x28c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3198c9f0

    if-eq v3, v13, :cond_28c

    add-int/lit8 v1, v1, 0x1

    goto :goto_28c

    :cond_28c
    const/16 v1, 0x1f

    :goto_28d
    const/16 v3, 0x30

    if-ge v1, v3, :cond_28d

    const/16 v3, 0x28d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x17f385a8

    if-eq v3, v13, :cond_28d

    add-int/lit8 v1, v1, 0x1

    goto :goto_28d

    :cond_28d
    const/16 v1, -0xf

    :goto_28e
    const/4 v3, -0x2

    if-ge v1, v3, :cond_28e

    const/16 v3, 0x28e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1e3f3529

    if-eq v3, v13, :cond_28e

    add-int/lit8 v1, v1, 0x1

    goto :goto_28e

    :cond_28e
    const/16 v1, -0x2e

    :goto_28f
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_28f

    const/16 v3, 0x28f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1a056b31

    if-eq v3, v13, :cond_28f

    add-int/lit8 v1, v1, 0x1

    goto :goto_28f

    :cond_28f
    const/4 v1, -0x2

    :goto_290
    const/16 v3, 0x8

    if-ge v1, v3, :cond_290

    const/16 v3, 0x290

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x89d428f

    if-eq v3, v13, :cond_290

    add-int/lit8 v1, v1, 0x1

    goto :goto_290

    :cond_290
    const/16 v1, -0x4f

    :goto_291
    const/16 v3, -0x42

    if-ge v1, v3, :cond_291

    const/16 v3, 0x291

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x67aee74

    if-eq v3, v13, :cond_291

    add-int/lit8 v1, v1, 0x1

    goto :goto_291

    :cond_291
    const/16 v1, -0x41

    :goto_292
    const/16 v3, -0x31

    if-ge v1, v3, :cond_292

    const/16 v3, 0x292

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6010346f

    if-eq v3, v13, :cond_292

    add-int/lit8 v1, v1, 0x1

    goto :goto_292

    :cond_292
    const/16 v1, 0x71

    :goto_293
    if-ge v1, v5, :cond_293

    const/16 v3, 0x293

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x39a82bf5

    if-eq v3, v13, :cond_293

    add-int/lit8 v1, v1, 0x1

    goto :goto_293

    :cond_293
    const/16 v1, 0x76

    :goto_294
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_294

    const/16 v3, 0x294

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x64d2fc3e

    if-eq v3, v13, :cond_294

    add-int/lit8 v1, v1, 0x1

    goto :goto_294

    :cond_294
    const/16 v1, -0x5d

    :goto_295
    const/16 v3, -0x40

    if-ge v1, v3, :cond_295

    const/16 v3, 0x295

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13f8721c

    if-eq v3, v13, :cond_295

    add-int/lit8 v1, v1, 0x1

    goto :goto_295

    :cond_295
    move v1, v14

    :goto_296
    const/16 v3, 0x71

    if-ge v1, v3, :cond_296

    const/16 v3, 0x296

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x18070b5e

    if-eq v3, v13, :cond_296

    add-int/lit8 v1, v1, 0x1

    goto :goto_296

    :cond_296
    const/4 v1, -0x4

    :goto_297
    const/16 v3, 0xd

    if-ge v1, v3, :cond_297

    const/16 v3, 0x297

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6acadf41

    if-eq v3, v13, :cond_297

    add-int/lit8 v1, v1, 0x1

    goto :goto_297

    :cond_297
    const/16 v1, -0x41

    :goto_298
    const/16 v3, -0x32

    if-ge v1, v3, :cond_298

    const/16 v3, 0x298

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4010d19f

    if-eq v3, v13, :cond_298

    add-int/lit8 v1, v1, 0x1

    goto :goto_298

    :cond_298
    const/16 v1, -0x63

    :goto_299
    const/16 v3, -0x56

    if-ge v1, v3, :cond_299

    const/16 v3, 0x299

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x730d1fd8

    if-eq v3, v13, :cond_299

    add-int/lit8 v1, v1, 0x1

    goto :goto_299

    :cond_299
    const/16 v1, 0x4c

    :goto_29a
    const/16 v3, 0x68

    if-ge v1, v3, :cond_29a

    const/16 v3, 0x29a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x18afc46f

    if-eq v3, v13, :cond_29a

    add-int/lit8 v1, v1, 0x1

    goto :goto_29a

    :cond_29a
    const/16 v1, 0x5a

    :goto_29b
    const/16 v3, 0x70

    if-ge v1, v3, :cond_29b

    const/16 v3, 0x29b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x42760ba8

    if-eq v3, v13, :cond_29b

    add-int/lit8 v1, v1, 0x1

    goto :goto_29b

    :cond_29b
    const/16 v1, 0x5d

    :goto_29c
    if-ge v1, v11, :cond_29c

    const/16 v3, 0x29c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x12af9dee

    if-eq v3, v13, :cond_29c

    add-int/lit8 v1, v1, 0x1

    goto :goto_29c

    :cond_29c
    move v1, v9

    :goto_29d
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_29d

    const/16 v3, 0x29d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x491329d0    # 602781.0f

    if-eq v3, v13, :cond_29d

    add-int/lit8 v1, v1, 0x1

    goto :goto_29d

    :cond_29d
    const/16 v1, 0x6f

    :goto_29e
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_29e

    const/16 v3, 0x29e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4cebfa47    # 1.23720248E8f

    if-eq v3, v13, :cond_29e

    add-int/lit8 v1, v1, 0x1

    goto :goto_29e

    :cond_29e
    move v1, v10

    :goto_29f
    const/4 v3, 0x7

    if-ge v1, v3, :cond_29f

    const/16 v3, 0x29f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xb6993bd

    if-eq v3, v13, :cond_29f

    add-int/lit8 v1, v1, 0x1

    goto :goto_29f

    :cond_29f
    const/16 v1, -0x70

    :goto_2a0
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_2a0

    const/16 v3, 0x2a0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7f6a2699

    if-eq v3, v13, :cond_2a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a0

    :cond_2a0
    const/16 v1, 0xc

    :goto_2a1
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_2a1

    const/16 v3, 0x2a1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x43d7a5be

    if-eq v3, v13, :cond_2a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a1

    :cond_2a1
    const/16 v1, -0x7b

    :goto_2a2
    const/16 v3, -0x71

    if-ge v1, v3, :cond_2a2

    const/16 v3, 0x2a2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7b36f4b5

    if-eq v3, v13, :cond_2a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a2

    :cond_2a2
    const/16 v1, -0x80

    :goto_2a3
    const/16 v3, -0x75

    if-ge v1, v3, :cond_2a3

    const/16 v3, 0x2a3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2e038f40

    if-eq v3, v13, :cond_2a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a3

    :cond_2a3
    const/16 v1, -0x6b

    :goto_2a4
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_2a4

    const/16 v3, 0x2a4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ced3850

    if-eq v3, v13, :cond_2a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a4

    :cond_2a4
    const/16 v1, -0x18

    :goto_2a5
    const/4 v3, -0x5

    if-ge v1, v3, :cond_2a5

    const/16 v3, 0x2a5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4683d53a

    if-eq v3, v13, :cond_2a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a5

    :cond_2a5
    const/16 v1, 0x39

    :goto_2a6
    const/16 v3, 0x48

    if-ge v1, v3, :cond_2a6

    const/16 v3, 0x2a6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x58657b15

    if-eq v3, v13, :cond_2a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a6

    :cond_2a6
    move v1, v8

    :goto_2a7
    const/16 v3, 0x42

    if-ge v1, v3, :cond_2a7

    const/16 v3, 0x2a7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x68dfdd3a

    if-eq v3, v13, :cond_2a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a7

    :cond_2a7
    const/16 v1, -0x7a

    :goto_2a8
    const/16 v3, -0x6c

    if-ge v1, v3, :cond_2a8

    const/16 v3, 0x2a8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x73afb224

    if-eq v3, v13, :cond_2a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a8

    :cond_2a8
    const/16 v1, 0x2a

    :goto_2a9
    const/16 v3, 0x3b

    if-ge v1, v3, :cond_2a9

    const/16 v3, 0x2a9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1568c018

    if-eq v3, v13, :cond_2a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a9

    :cond_2a9
    const/16 v1, 0x17

    :goto_2aa
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_2aa

    const/16 v3, 0x2aa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x150379c9

    if-eq v3, v13, :cond_2aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_2aa

    :cond_2aa
    const/16 v1, 0x24

    :goto_2ab
    const/16 v3, 0x3b

    if-ge v1, v3, :cond_2ab

    const/16 v3, 0x2ab

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6cca8c15

    if-eq v3, v13, :cond_2ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ab

    :cond_2ab
    const/16 v1, -0x7b

    :goto_2ac
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_2ac

    const/16 v3, 0x2ac

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3c8197fa

    if-eq v3, v13, :cond_2ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ac

    :cond_2ac
    const/16 v1, -0x3f

    :goto_2ad
    const/16 v3, -0x2b

    if-ge v1, v3, :cond_2ad

    const/16 v3, 0x2ad

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2fe69e72

    if-eq v3, v13, :cond_2ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ad

    :cond_2ad
    const/16 v1, 0x5d

    :goto_2ae
    const/16 v3, 0x77

    if-ge v1, v3, :cond_2ae

    const/16 v3, 0x2ae

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2ccee6b8

    if-eq v3, v13, :cond_2ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ae

    :cond_2ae
    const/16 v1, -0x49

    :goto_2af
    const/16 v3, -0x48

    if-ge v1, v3, :cond_2af

    const/16 v3, 0x2af

    const/16 v13, -0x49

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x24abbb14

    if-eq v3, v13, :cond_2af

    add-int/lit8 v1, v1, 0x1

    goto :goto_2af

    :cond_2af
    move v1, v4

    :goto_2b0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2b0

    const/16 v3, 0x2b0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x12a573ee

    if-eq v3, v13, :cond_2b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b0

    :cond_2b0
    const/16 v1, -0x10

    :goto_2b1
    const/4 v3, -0x4

    if-ge v1, v3, :cond_2b1

    const/16 v3, 0x2b1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5c8f57da

    if-eq v3, v13, :cond_2b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b1

    :cond_2b1
    const/16 v1, -0x53

    :goto_2b2
    const/16 v3, -0x43

    if-ge v1, v3, :cond_2b2

    const/16 v3, 0x2b2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6ba7045c

    if-eq v3, v13, :cond_2b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b2

    :cond_2b2
    const/16 v1, 0xd

    :goto_2b3
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_2b3

    const/16 v3, 0x2b3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x76248a9f

    if-eq v3, v13, :cond_2b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b3

    :cond_2b3
    const/16 v1, -0x39

    :goto_2b4
    const/16 v3, -0x2b

    if-ge v1, v3, :cond_2b4

    const/16 v3, 0x2b4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x28b293c3

    if-eq v3, v13, :cond_2b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b4

    :cond_2b4
    move v1, v4

    :goto_2b5
    if-gtz v1, :cond_2b5

    const/16 v3, 0x2b5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x55e7c844

    if-eq v3, v13, :cond_2b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b5

    :cond_2b5
    const/16 v1, -0x41

    :goto_2b6
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_2b6

    const/16 v3, 0x2b6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2ad99b12

    if-eq v3, v13, :cond_2b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b6

    :cond_2b6
    const/16 v1, -0x4d

    :goto_2b7
    const/16 v3, -0x44

    if-ge v1, v3, :cond_2b7

    const/16 v3, 0x2b7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5c6c5285

    if-eq v3, v13, :cond_2b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b7

    :cond_2b7
    const/16 v1, 0x74

    :goto_2b8
    if-ge v1, v5, :cond_2b8

    const/16 v3, 0x2b8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x103ffa0c

    if-eq v3, v13, :cond_2b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b8

    :cond_2b8
    const/16 v1, 0x65

    :goto_2b9
    const/16 v3, 0x74

    if-ge v1, v3, :cond_2b9

    const/16 v3, 0x2b9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5203a0e4

    if-eq v3, v13, :cond_2b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b9

    :cond_2b9
    const/16 v1, 0x62

    :goto_2ba
    const/16 v3, 0x79

    if-ge v1, v3, :cond_2ba

    const/16 v3, 0x2ba

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5691fee0

    if-eq v3, v13, :cond_2ba

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ba

    :cond_2ba
    const/16 v1, 0x40

    :goto_2bb
    const/16 v3, 0x4a

    if-ge v1, v3, :cond_2bb

    const/16 v3, 0x2bb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xc988153

    if-eq v3, v13, :cond_2bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_2bb

    :cond_2bb
    const/16 v1, 0x40

    :goto_2bc
    const/16 v3, 0x54

    if-ge v1, v3, :cond_2bc

    const/16 v3, 0x2bc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6776451a

    if-eq v3, v13, :cond_2bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_2bc

    :cond_2bc
    move v1, v8

    :goto_2bd
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_2bd

    const/16 v3, 0x2bd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2065a171

    if-eq v3, v13, :cond_2bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_2bd

    :cond_2bd
    const/16 v1, -0x1c

    :goto_2be
    const/16 v3, -0xb

    if-ge v1, v3, :cond_2be

    const/16 v3, 0x2be

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4206e059

    if-eq v3, v13, :cond_2be

    add-int/lit8 v1, v1, 0x1

    goto :goto_2be

    :cond_2be
    const/16 v1, -0x1b

    :goto_2bf
    const/16 v3, -0xb

    if-ge v1, v3, :cond_2bf

    const/16 v3, 0x2bf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x21caecf8

    if-eq v3, v13, :cond_2bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_2bf

    :cond_2bf
    const/16 v1, -0x9

    :goto_2c0
    const/16 v3, 0xe

    if-ge v1, v3, :cond_2c0

    const/16 v3, 0x2c0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4259cdaf

    if-eq v3, v13, :cond_2c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c0

    :cond_2c0
    const/4 v1, -0x7

    :goto_2c1
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2c1

    const/16 v3, 0x2c1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4259cdaf

    if-eq v3, v13, :cond_2c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c1

    :cond_2c1
    move v1, v2

    :goto_2c2
    const/16 v3, 0x58

    if-ge v1, v3, :cond_2c2

    const/16 v3, 0x2c2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x463a894c

    if-eq v3, v13, :cond_2c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c2

    :cond_2c2
    const/16 v1, -0x5e

    :goto_2c3
    const/16 v3, -0x4e

    if-ge v1, v3, :cond_2c3

    const/16 v3, 0x2c3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3777763

    if-eq v3, v13, :cond_2c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c3

    :cond_2c3
    const/4 v1, 0x1

    :goto_2c4
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2c4

    const/16 v3, 0x2c4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6a767594

    if-eq v3, v13, :cond_2c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c4

    :cond_2c4
    const/16 v1, -0x5e

    :goto_2c5
    const/16 v3, -0x51

    if-ge v1, v3, :cond_2c5

    const/16 v3, 0x2c5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5f0d542c

    if-eq v3, v13, :cond_2c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c5

    :cond_2c5
    const/4 v1, 0x1

    :goto_2c6
    const/16 v3, 0x17

    if-ge v1, v3, :cond_2c6

    const/16 v3, 0x2c6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x14867ad6

    if-eq v3, v13, :cond_2c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c6

    :cond_2c6
    const/16 v1, -0x80

    :goto_2c7
    const/16 v3, -0x6f

    if-ge v1, v3, :cond_2c7

    const/16 v3, 0x2c7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x729c4c17

    if-eq v3, v13, :cond_2c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c7

    :cond_2c7
    const/16 v1, 0x5e

    :goto_2c8
    const/16 v3, 0x63

    if-ge v1, v3, :cond_2c8

    const/16 v3, 0x2c8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xa4232fd

    if-eq v3, v13, :cond_2c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c8

    :cond_2c8
    const/16 v1, 0x5c

    :goto_2c9
    const/16 v3, 0x6d

    if-ge v1, v3, :cond_2c9

    const/16 v3, 0x2c9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x757f78bc

    if-eq v3, v13, :cond_2c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c9

    :cond_2c9
    const/16 v1, 0x74

    :goto_2ca
    if-ge v1, v5, :cond_2ca

    const/16 v3, 0x2ca

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x234190d5

    if-eq v3, v13, :cond_2ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ca

    :cond_2ca
    const/16 v1, -0x1d

    :goto_2cb
    if-ge v1, v7, :cond_2cb

    const/16 v3, 0x2cb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x76753f1c

    if-eq v3, v13, :cond_2cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_2cb

    :cond_2cb
    const/16 v1, -0x3d

    :goto_2cc
    const/16 v3, -0x33

    if-ge v1, v3, :cond_2cc

    const/16 v3, 0x2cc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x562a2c78

    if-eq v3, v13, :cond_2cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_2cc

    :cond_2cc
    const/16 v1, 0x10

    :goto_2cd
    const/16 v3, 0x23

    if-ge v1, v3, :cond_2cd

    const/16 v3, 0x2cd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x302449cd

    if-eq v3, v13, :cond_2cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_2cd

    :cond_2cd
    const/16 v1, 0x22

    :goto_2ce
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_2ce

    const/16 v3, 0x2ce

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1b38ff15

    if-eq v3, v13, :cond_2ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ce

    :cond_2ce
    const/16 v1, 0x28

    :goto_2cf
    const/16 v3, 0x43

    if-ge v1, v3, :cond_2cf

    const/16 v3, 0x2cf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6c3e4fa6

    if-eq v3, v13, :cond_2cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_2cf

    :cond_2cf
    const/16 v1, -0x28

    :goto_2d0
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_2d0

    const/16 v3, 0x2d0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5e1e5132

    if-eq v3, v13, :cond_2d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d0

    :cond_2d0
    const/16 v1, 0x31

    :goto_2d1
    const/16 v3, 0x44

    if-ge v1, v3, :cond_2d1

    const/16 v3, 0x2d1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5bc76508

    if-eq v3, v13, :cond_2d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d1

    :cond_2d1
    const/4 v1, -0x3

    :goto_2d2
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2d2

    const/16 v3, 0x2d2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x12dcfdaa

    if-eq v3, v13, :cond_2d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d2

    :cond_2d2
    const/16 v1, 0xa

    :goto_2d3
    const/16 v3, 0x13

    if-ge v1, v3, :cond_2d3

    const/16 v3, 0x2d3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7f9e2fe6

    if-eq v3, v13, :cond_2d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d3

    :cond_2d3
    const/16 v1, -0x77

    :goto_2d4
    const/16 v3, -0x62

    if-ge v1, v3, :cond_2d4

    const/16 v3, 0x2d4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x15ecc72e

    if-eq v3, v13, :cond_2d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d4

    :cond_2d4
    const/16 v1, 0x12

    :goto_2d5
    const/16 v3, 0x24

    if-ge v1, v3, :cond_2d5

    const/16 v3, 0x2d5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x53c556f2

    if-eq v3, v13, :cond_2d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d5

    :cond_2d5
    const/16 v1, 0xf

    :goto_2d6
    const/16 v3, 0x16

    if-ge v1, v3, :cond_2d6

    const/16 v3, 0x2d6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1e851fb2

    if-eq v3, v13, :cond_2d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d6

    :cond_2d6
    const/16 v1, -0x7c

    :goto_2d7
    const/16 v3, -0x76

    if-ge v1, v3, :cond_2d7

    const/16 v3, 0x2d7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1c7ef796

    if-eq v3, v13, :cond_2d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d7

    :cond_2d7
    const/16 v1, -0x11

    :goto_2d8
    const/4 v3, 0x4

    if-ge v1, v3, :cond_2d8

    const/16 v3, 0x2d8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3639159d

    if-eq v3, v13, :cond_2d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d8

    :cond_2d8
    const/16 v1, -0xb

    :goto_2d9
    const/4 v3, -0x1

    if-ge v1, v3, :cond_2d9

    const/16 v3, 0x2d9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xd4ff790

    if-eq v3, v13, :cond_2d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d9

    :cond_2d9
    const/16 v1, 0x3b

    :goto_2da
    const/16 v3, 0x52

    if-ge v1, v3, :cond_2da

    const/16 v3, 0x2da

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1a112275

    if-eq v3, v13, :cond_2da

    add-int/lit8 v1, v1, 0x1

    goto :goto_2da

    :cond_2da
    const/16 v1, 0x3a

    :goto_2db
    const/16 v3, 0x45

    if-ge v1, v3, :cond_2db

    const/16 v3, 0x2db

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2a067cb5

    if-eq v3, v13, :cond_2db

    add-int/lit8 v1, v1, 0x1

    goto :goto_2db

    :cond_2db
    const/16 v1, -0x34

    :goto_2dc
    const/16 v3, -0x26

    if-ge v1, v3, :cond_2dc

    const/16 v3, 0x2dc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x670af71d

    if-eq v3, v13, :cond_2dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_2dc

    :cond_2dc
    const/16 v1, -0x1d

    :goto_2dd
    const/16 v3, -0x17

    if-ge v1, v3, :cond_2dd

    const/16 v3, 0x2dd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4636f7a8

    if-eq v3, v13, :cond_2dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_2dd

    :cond_2dd
    const/16 v1, -0x2a

    :goto_2de
    if-ge v1, v10, :cond_2de

    const/16 v3, 0x2de

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x359e29b

    if-eq v3, v13, :cond_2de

    add-int/lit8 v1, v1, 0x1

    goto :goto_2de

    :cond_2de
    const/16 v1, -0x63

    :goto_2df
    const/16 v3, -0x59

    if-ge v1, v3, :cond_2df

    const/16 v3, 0x2df

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4e56e1f3    # 9.0128301E8f

    if-eq v3, v13, :cond_2df

    add-int/lit8 v1, v1, 0x1

    goto :goto_2df

    :cond_2df
    const/16 v1, -0x79

    :goto_2e0
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_2e0

    const/16 v3, 0x2e0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x121eddf4

    if-eq v3, v13, :cond_2e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e0

    :cond_2e0
    const/16 v1, 0x6a

    :goto_2e1
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_2e1

    const/16 v3, 0x2e1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x454fefe0

    if-eq v3, v13, :cond_2e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e1

    :cond_2e1
    const/4 v1, 0x3

    :goto_2e2
    const/16 v3, 0xc

    if-ge v1, v3, :cond_2e2

    const/16 v3, 0x2e2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7b241dc8

    if-eq v3, v13, :cond_2e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e2

    :cond_2e2
    const/16 v1, 0x5f

    :goto_2e3
    const/16 v3, 0x64

    if-ge v1, v3, :cond_2e3

    const/16 v3, 0x2e3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x73ed1d6f

    if-eq v3, v13, :cond_2e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e3

    :cond_2e3
    const/16 v1, 0xd

    :goto_2e4
    const/16 v3, 0x17

    if-ge v1, v3, :cond_2e4

    const/16 v3, 0x2e4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1861f220

    if-eq v3, v13, :cond_2e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e4

    :cond_2e4
    move v1, v11

    :goto_2e5
    if-ge v1, v5, :cond_2e5

    const/16 v3, 0x2e5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2277a51a

    if-eq v3, v13, :cond_2e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e5

    :cond_2e5
    const/16 v1, -0x65

    :goto_2e6
    const/16 v3, -0x4c

    if-ge v1, v3, :cond_2e6

    const/16 v3, 0x2e6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4c192a07    # 4.0151068E7f

    if-eq v3, v13, :cond_2e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e6

    :cond_2e6
    const/16 v1, 0x3a

    :goto_2e7
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_2e7

    const/16 v3, 0x2e7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x51ee724f

    if-eq v3, v13, :cond_2e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e7

    :cond_2e7
    const/16 v1, -0x80

    :goto_2e8
    const/16 v3, -0x77

    if-ge v1, v3, :cond_2e8

    const/16 v3, 0x2e8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x35ef6552

    if-eq v3, v13, :cond_2e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e8

    :cond_2e8
    const/16 v1, 0x37

    :goto_2e9
    const/16 v3, 0x48

    if-ge v1, v3, :cond_2e9

    const/16 v3, 0x2e9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x81000ed

    if-eq v3, v13, :cond_2e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e9

    :cond_2e9
    const/16 v1, -0x21

    :goto_2ea
    const/16 v3, -0xc

    if-ge v1, v3, :cond_2ea

    const/16 v3, 0x2ea

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x329cf5f8

    if-eq v3, v13, :cond_2ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ea

    :cond_2ea
    const/16 v1, -0x25

    :goto_2eb
    const/16 v3, -0x16

    if-ge v1, v3, :cond_2eb

    const/16 v3, 0x2eb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x15ca5a88

    if-eq v3, v13, :cond_2eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_2eb

    :cond_2eb
    const/16 v1, -0x5f

    :goto_2ec
    const/16 v3, -0x56

    if-ge v1, v3, :cond_2ec

    const/16 v3, 0x2ec

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6153859a

    if-eq v3, v13, :cond_2ec

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ec

    :cond_2ec
    const/16 v1, -0x67

    :goto_2ed
    const/16 v3, -0x53

    if-ge v1, v3, :cond_2ed

    const/16 v3, 0x2ed

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x18d6988a

    if-eq v3, v13, :cond_2ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ed

    :cond_2ed
    const/16 v1, -0x74

    :goto_2ee
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_2ee

    const/16 v3, 0x2ee

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x43629e1d

    if-eq v3, v13, :cond_2ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ee

    :cond_2ee
    const/16 v1, -0x19

    :goto_2ef
    if-ge v1, v7, :cond_2ef

    const/16 v3, 0x2ef

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4f62fc74

    if-eq v3, v13, :cond_2ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ef

    :cond_2ef
    const/16 v1, 0xf

    :goto_2f0
    const/16 v3, 0x21

    if-ge v1, v3, :cond_2f0

    const/16 v3, 0x2f0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45e85669

    if-eq v3, v13, :cond_2f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f0

    :cond_2f0
    const/16 v1, 0x3c

    :goto_2f1
    const/16 v3, 0x53

    if-ge v1, v3, :cond_2f1

    const/16 v3, 0x2f1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x39deb8d6

    if-eq v3, v13, :cond_2f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f1

    :cond_2f1
    const/16 v1, -0x31

    :goto_2f2
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_2f2

    const/16 v3, 0x2f2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x41a53a0

    if-eq v3, v13, :cond_2f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f2

    :cond_2f2
    const/16 v1, 0x4e

    :goto_2f3
    const/16 v3, 0x64

    if-ge v1, v3, :cond_2f3

    const/16 v3, 0x2f3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xb6c7a4f

    if-eq v3, v13, :cond_2f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f3

    :cond_2f3
    const/16 v1, 0x38

    :goto_2f4
    const/16 v3, 0x46

    if-ge v1, v3, :cond_2f4

    const/16 v3, 0x2f4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6b503755

    if-eq v3, v13, :cond_2f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f4

    :cond_2f4
    move v1, v6

    :goto_2f5
    const/16 v3, 0x55

    if-ge v1, v3, :cond_2f5

    const/16 v3, 0x2f5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x54ff9f88

    if-eq v3, v13, :cond_2f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f5

    :cond_2f5
    const/4 v1, -0x6

    :goto_2f6
    const/16 v3, 0xe

    if-ge v1, v3, :cond_2f6

    const/16 v3, 0x2f6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x71cd3466

    if-eq v3, v13, :cond_2f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f6

    :cond_2f6
    const/16 v1, -0xc

    :goto_2f7
    const/16 v3, 0xe

    if-ge v1, v3, :cond_2f7

    const/16 v3, 0x2f7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1d01fed4

    if-eq v3, v13, :cond_2f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f7

    :cond_2f7
    const/16 v1, -0x75

    :goto_2f8
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_2f8

    const/16 v3, 0x2f8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x74996a67

    if-eq v3, v13, :cond_2f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f8

    :cond_2f8
    const/16 v1, 0x63

    :goto_2f9
    const/16 v3, 0x71

    if-ge v1, v3, :cond_2f9

    const/16 v3, 0x2f9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x166317b4

    if-eq v3, v13, :cond_2f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f9

    :cond_2f9
    const/16 v1, -0x7d

    :goto_2fa
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_2fa

    const/16 v3, 0x2fa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3e484f06

    if-eq v3, v13, :cond_2fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fa

    :cond_2fa
    const/16 v1, -0x4b

    :goto_2fb
    const/16 v3, -0x36

    if-ge v1, v3, :cond_2fb

    const/16 v3, 0x2fb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6331b290

    if-eq v3, v13, :cond_2fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fb

    :cond_2fb
    const/16 v1, 0x37

    :goto_2fc
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_2fc

    const/16 v3, 0x2fc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4d8fa7db

    if-eq v3, v13, :cond_2fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fc

    :cond_2fc
    const/16 v1, -0x38

    :goto_2fd
    const/16 v3, -0x21

    if-ge v1, v3, :cond_2fd

    const/16 v3, 0x2fd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x121390fa

    if-eq v3, v13, :cond_2fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fd

    :cond_2fd
    const/16 v1, -0x18

    :goto_2fe
    const/4 v3, -0x7

    if-ge v1, v3, :cond_2fe

    const/16 v3, 0x2fe

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x53b33427

    if-eq v3, v13, :cond_2fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_2fe

    :cond_2fe
    const/16 v1, -0x80

    :goto_2ff
    const/16 v3, -0x72

    if-ge v1, v3, :cond_2ff

    const/16 v3, 0x2ff

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x20c9eb2d

    if-eq v3, v13, :cond_2ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ff

    :cond_2ff
    const/16 v1, 0x56

    :goto_300
    const/16 v3, 0x67

    if-ge v1, v3, :cond_300

    const/16 v3, 0x300

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1701ff2d

    if-eq v3, v13, :cond_300

    add-int/lit8 v1, v1, 0x1

    goto :goto_300

    :cond_300
    const/16 v1, 0x3f

    :goto_301
    const/16 v3, 0x51

    if-ge v1, v3, :cond_301

    const/16 v3, 0x301

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3498123c

    if-eq v3, v13, :cond_301

    add-int/lit8 v1, v1, 0x1

    goto :goto_301

    :cond_301
    move v1, v4

    :goto_302
    const/4 v3, -0x1

    if-ge v1, v3, :cond_302

    const/16 v3, 0x302

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1a8fe321

    if-eq v3, v13, :cond_302

    add-int/lit8 v1, v1, 0x1

    goto :goto_302

    :cond_302
    const/16 v1, 0xc

    :goto_303
    const/16 v3, 0x23

    if-ge v1, v3, :cond_303

    const/16 v3, 0x303

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7de56179

    if-eq v3, v13, :cond_303

    add-int/lit8 v1, v1, 0x1

    goto :goto_303

    :cond_303
    const/16 v1, 0x50

    :goto_304
    const/16 v3, 0x61

    if-ge v1, v3, :cond_304

    const/16 v3, 0x304

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x581e83e6

    if-eq v3, v13, :cond_304

    add-int/lit8 v1, v1, 0x1

    goto :goto_304

    :cond_304
    const/4 v1, -0x3

    :goto_305
    const/16 v3, 0x15

    if-ge v1, v3, :cond_305

    const/16 v3, 0x305

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x25347d4b

    if-eq v3, v13, :cond_305

    add-int/lit8 v1, v1, 0x1

    goto :goto_305

    :cond_305
    const/16 v1, -0x22

    :goto_306
    if-ge v1, v10, :cond_306

    const/16 v3, 0x306

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x444a48d0

    if-eq v3, v13, :cond_306

    add-int/lit8 v1, v1, 0x1

    goto :goto_306

    :cond_306
    const/16 v1, -0xb

    :goto_307
    const/4 v3, 0x2

    if-ge v1, v3, :cond_307

    const/16 v3, 0x307

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x173bb00f

    if-eq v3, v13, :cond_307

    add-int/lit8 v1, v1, 0x1

    goto :goto_307

    :cond_307
    const/16 v1, -0x38

    :goto_308
    const/16 v3, -0x23

    if-ge v1, v3, :cond_308

    const/16 v3, 0x308

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13c8aa8e

    if-eq v3, v13, :cond_308

    add-int/lit8 v1, v1, 0x1

    goto :goto_308

    :cond_308
    const/16 v1, -0x4c

    :goto_309
    const/16 v3, -0x30

    if-ge v1, v3, :cond_309

    const/16 v3, 0x309

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x34aee6f0

    if-eq v3, v13, :cond_309

    add-int/lit8 v1, v1, 0x1

    goto :goto_309

    :cond_309
    const/16 v1, -0x62

    :goto_30a
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_30a

    const/16 v3, 0x30a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x676bc04a

    if-eq v3, v13, :cond_30a

    add-int/lit8 v1, v1, 0x1

    goto :goto_30a

    :cond_30a
    const/16 v1, 0x6c

    :goto_30b
    const/16 v3, 0x79

    if-ge v1, v3, :cond_30b

    const/16 v3, 0x30b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5d66c63b

    if-eq v3, v13, :cond_30b

    add-int/lit8 v1, v1, 0x1

    goto :goto_30b

    :cond_30b
    const/16 v1, -0x4e

    :goto_30c
    const/16 v3, -0x47

    if-ge v1, v3, :cond_30c

    const/16 v3, 0x30c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4e8c9afa

    if-eq v3, v13, :cond_30c

    add-int/lit8 v1, v1, 0x1

    goto :goto_30c

    :cond_30c
    const/16 v1, 0x19

    :goto_30d
    const/16 v3, 0x21

    if-ge v1, v3, :cond_30d

    const/16 v3, 0x30d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6b8584d4

    if-eq v3, v13, :cond_30d

    add-int/lit8 v1, v1, 0x1

    goto :goto_30d

    :cond_30d
    const/16 v1, -0x22

    :goto_30e
    const/16 v3, -0x18

    if-ge v1, v3, :cond_30e

    const/16 v3, 0x30e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7c9be8b4

    if-eq v3, v13, :cond_30e

    add-int/lit8 v1, v1, 0x1

    goto :goto_30e

    :cond_30e
    const/16 v1, -0x56

    :goto_30f
    const/16 v3, -0x3f

    if-ge v1, v3, :cond_30f

    const/16 v3, 0x30f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x18788291

    if-eq v3, v13, :cond_30f

    add-int/lit8 v1, v1, 0x1

    goto :goto_30f

    :cond_30f
    const/16 v1, 0x37

    :goto_310
    const/16 v3, 0x43

    if-ge v1, v3, :cond_310

    const/16 v3, 0x310

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1f2beaed

    if-eq v3, v13, :cond_310

    add-int/lit8 v1, v1, 0x1

    goto :goto_310

    :cond_310
    move v1, v12

    :goto_311
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_311

    const/16 v3, 0x311

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x26c325d0

    if-eq v3, v13, :cond_311

    add-int/lit8 v1, v1, 0x1

    goto :goto_311

    :cond_311
    const/16 v1, -0x11

    :goto_312
    const/4 v3, 0x6

    if-ge v1, v3, :cond_312

    const/16 v3, 0x312

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x345da205    # -2.1281782E7f

    if-eq v3, v13, :cond_312

    add-int/lit8 v1, v1, 0x1

    goto :goto_312

    :cond_312
    const/16 v1, -0x1e

    :goto_313
    const/4 v3, -0x7

    if-ge v1, v3, :cond_313

    const/16 v3, 0x313

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4a716b22    # 3955400.5f

    if-eq v3, v13, :cond_313

    add-int/lit8 v1, v1, 0x1

    goto :goto_313

    :cond_313
    const/4 v1, -0x4

    :goto_314
    const/4 v3, 0x6

    if-ge v1, v3, :cond_314

    const/16 v3, 0x314

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xbdc017b

    if-eq v3, v13, :cond_314

    add-int/lit8 v1, v1, 0x1

    goto :goto_314

    :cond_314
    const/16 v1, -0x46

    :goto_315
    const/16 v3, -0x35

    if-ge v1, v3, :cond_315

    const/16 v3, 0x315

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x682baaba

    if-eq v3, v13, :cond_315

    add-int/lit8 v1, v1, 0x1

    goto :goto_315

    :cond_315
    move v1, v10

    :goto_316
    const/4 v3, -0x3

    if-ge v1, v3, :cond_316

    const/16 v3, 0x316

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6dcfa9c9

    if-eq v3, v13, :cond_316

    add-int/lit8 v1, v1, 0x1

    goto :goto_316

    :cond_316
    const/16 v1, 0x5a

    :goto_317
    const/16 v3, 0x66

    if-ge v1, v3, :cond_317

    const/16 v3, 0x317

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x431c8907

    if-eq v3, v13, :cond_317

    add-int/lit8 v1, v1, 0x1

    goto :goto_317

    :cond_317
    const/16 v1, -0x26

    :goto_318
    const/16 v3, -0x1b

    if-ge v1, v3, :cond_318

    const/16 v3, 0x318

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x52d1f3d4

    if-eq v3, v13, :cond_318

    add-int/lit8 v1, v1, 0x1

    goto :goto_318

    :cond_318
    const/16 v1, -0x80

    :goto_319
    const/16 v3, -0x74

    if-ge v1, v3, :cond_319

    const/16 v3, 0x319

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x36b44438    # -834492.5f

    if-eq v3, v13, :cond_319

    add-int/lit8 v1, v1, 0x1

    goto :goto_319

    :cond_319
    const/16 v1, 0x2e

    :goto_31a
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_31a

    const/16 v3, 0x31a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x59af57e7

    if-eq v3, v13, :cond_31a

    add-int/lit8 v1, v1, 0x1

    goto :goto_31a

    :cond_31a
    const/16 v1, -0x46

    :goto_31b
    const/16 v3, -0x3d

    if-ge v1, v3, :cond_31b

    const/16 v3, 0x31b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xda7c8dd

    if-eq v3, v13, :cond_31b

    add-int/lit8 v1, v1, 0x1

    goto :goto_31b

    :cond_31b
    const/16 v1, -0x3b

    :goto_31c
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_31c

    const/16 v3, 0x31c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x464f430

    if-eq v3, v13, :cond_31c

    add-int/lit8 v1, v1, 0x1

    goto :goto_31c

    :cond_31c
    const/16 v1, -0x44

    :goto_31d
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_31d

    const/16 v3, 0x31d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x56a38941

    if-eq v3, v13, :cond_31d

    add-int/lit8 v1, v1, 0x1

    goto :goto_31d

    :cond_31d
    const/4 v1, -0x1

    :goto_31e
    const/4 v3, 0x3

    if-ge v1, v3, :cond_31e

    const/16 v3, 0x31e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x27e5e93c

    if-eq v3, v13, :cond_31e

    add-int/lit8 v1, v1, 0x1

    goto :goto_31e

    :cond_31e
    const/16 v1, -0x3e

    :goto_31f
    const/16 v3, -0x30

    if-ge v1, v3, :cond_31f

    const/16 v3, 0x31f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6bbd1b1

    if-eq v3, v13, :cond_31f

    add-int/lit8 v1, v1, 0x1

    goto :goto_31f

    :cond_31f
    move v1, v10

    :goto_320
    if-ge v1, v4, :cond_320

    const/16 v3, 0x320

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x22a65b10

    if-eq v3, v13, :cond_320

    add-int/lit8 v1, v1, 0x1

    goto :goto_320

    :cond_320
    const/16 v1, -0x38

    :goto_321
    const/16 v3, -0x25

    if-ge v1, v3, :cond_321

    const/16 v3, 0x321

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x509f33ef

    if-eq v3, v13, :cond_321

    add-int/lit8 v1, v1, 0x1

    goto :goto_321

    :cond_321
    const/16 v1, 0x56

    :goto_322
    const/16 v3, 0x62

    if-ge v1, v3, :cond_322

    const/16 v3, 0x322

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x439b1a4e

    if-eq v3, v13, :cond_322

    add-int/lit8 v1, v1, 0x1

    goto :goto_322

    :cond_322
    const/16 v1, 0x4a

    :goto_323
    const/16 v3, 0x62

    if-ge v1, v3, :cond_323

    const/16 v3, 0x323

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x31c13ddc

    if-eq v3, v13, :cond_323

    add-int/lit8 v1, v1, 0x1

    goto :goto_323

    :cond_323
    const/16 v1, -0x33

    :goto_324
    const/16 v3, -0x1d

    if-ge v1, v3, :cond_324

    const/16 v3, 0x324

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5add74ab

    if-eq v3, v13, :cond_324

    add-int/lit8 v1, v1, 0x1

    goto :goto_324

    :cond_324
    const/16 v1, -0x18

    :goto_325
    const/16 v3, -0xa

    if-ge v1, v3, :cond_325

    const/16 v3, 0x325

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x39814227

    if-eq v3, v13, :cond_325

    add-int/lit8 v1, v1, 0x1

    goto :goto_325

    :cond_325
    const/16 v1, -0x4b

    :goto_326
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_326

    const/16 v3, 0x326

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4f40b8b9

    if-eq v3, v13, :cond_326

    add-int/lit8 v1, v1, 0x1

    goto :goto_326

    :cond_326
    const/16 v1, 0x26

    :goto_327
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_327

    const/16 v3, 0x327

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6e51688b

    if-eq v3, v13, :cond_327

    add-int/lit8 v1, v1, 0x1

    goto :goto_327

    :cond_327
    const/16 v1, -0x2d

    :goto_328
    const/16 v3, -0x23

    if-ge v1, v3, :cond_328

    const/16 v3, 0x328

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x68a84d27

    if-eq v3, v13, :cond_328

    add-int/lit8 v1, v1, 0x1

    goto :goto_328

    :cond_328
    const/16 v1, -0x63

    :goto_329
    const/16 v3, -0x54

    if-ge v1, v3, :cond_329

    const/16 v3, 0x329

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x60d9419c

    if-eq v3, v13, :cond_329

    add-int/lit8 v1, v1, 0x1

    goto :goto_329

    :cond_329
    const/16 v1, -0x5b

    :goto_32a
    const/16 v3, -0x4e

    if-ge v1, v3, :cond_32a

    const/16 v3, 0x32a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5253f383

    if-eq v3, v13, :cond_32a

    add-int/lit8 v1, v1, 0x1

    goto :goto_32a

    :cond_32a
    const/16 v1, -0x11

    :goto_32b
    const/4 v3, -0x8

    if-ge v1, v3, :cond_32b

    const/16 v3, 0x32b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5dd9f926

    if-eq v3, v13, :cond_32b

    add-int/lit8 v1, v1, 0x1

    goto :goto_32b

    :cond_32b
    move v1, v8

    :goto_32c
    const/16 v3, 0x47

    if-ge v1, v3, :cond_32c

    const/16 v3, 0x32c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x47b4faf6

    if-eq v3, v13, :cond_32c

    add-int/lit8 v1, v1, 0x1

    goto :goto_32c

    :cond_32c
    const/16 v1, -0x5a

    :goto_32d
    const/16 v3, -0x51

    if-ge v1, v3, :cond_32d

    const/16 v3, 0x32d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6b4ffc08

    if-eq v3, v13, :cond_32d

    add-int/lit8 v1, v1, 0x1

    goto :goto_32d

    :cond_32d
    const/16 v1, -0x3a

    :goto_32e
    const/16 v3, -0x21

    if-ge v1, v3, :cond_32e

    const/16 v3, 0x32e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1ef7fe3d

    if-eq v3, v13, :cond_32e

    add-int/lit8 v1, v1, 0x1

    goto :goto_32e

    :cond_32e
    const/16 v1, -0x41

    :goto_32f
    const/16 v3, -0x32

    if-ge v1, v3, :cond_32f

    const/16 v3, 0x32f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1549dfe5

    if-eq v3, v13, :cond_32f

    add-int/lit8 v1, v1, 0x1

    goto :goto_32f

    :cond_32f
    const/16 v1, 0x35

    :goto_330
    if-ge v1, v2, :cond_330

    const/16 v3, 0x330

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5a3f8eb3

    if-eq v3, v13, :cond_330

    add-int/lit8 v1, v1, 0x1

    goto :goto_330

    :cond_330
    const/16 v1, -0xf

    :goto_331
    const/4 v3, 0x3

    if-ge v1, v3, :cond_331

    const/16 v3, 0x331

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4689be35

    if-eq v3, v13, :cond_331

    add-int/lit8 v1, v1, 0x1

    goto :goto_331

    :cond_331
    const/16 v1, -0x66

    :goto_332
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_332

    const/16 v3, 0x332

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7c0030f4

    if-eq v3, v13, :cond_332

    add-int/lit8 v1, v1, 0x1

    goto :goto_332

    :cond_332
    const/16 v1, -0x4e

    :goto_333
    const/16 v3, -0x40

    if-ge v1, v3, :cond_333

    const/16 v3, 0x333

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x16c7be34

    if-eq v3, v13, :cond_333

    add-int/lit8 v1, v1, 0x1

    goto :goto_333

    :cond_333
    const/16 v1, -0x1b

    :goto_334
    if-ge v1, v7, :cond_334

    const/16 v3, 0x334

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x658aceb2

    if-eq v3, v13, :cond_334

    add-int/lit8 v1, v1, 0x1

    goto :goto_334

    :cond_334
    const/16 v1, 0x59

    :goto_335
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_335

    const/16 v3, 0x335

    const/16 v13, 0x59

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1db1f105

    if-eq v3, v13, :cond_335

    add-int/lit8 v1, v1, 0x1

    goto :goto_335

    :cond_335
    move v1, v2

    :goto_336
    const/16 v3, 0x4c

    if-ge v1, v3, :cond_336

    const/16 v3, 0x336

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x307b34f3

    if-eq v3, v13, :cond_336

    add-int/lit8 v1, v1, 0x1

    goto :goto_336

    :cond_336
    const/16 v1, 0x63

    :goto_337
    if-ge v1, v15, :cond_337

    const/16 v3, 0x337

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x712ea712

    if-eq v3, v13, :cond_337

    add-int/lit8 v1, v1, 0x1

    goto :goto_337

    :cond_337
    const/16 v1, 0xd

    :goto_338
    const/16 v3, 0x18

    if-ge v1, v3, :cond_338

    const/16 v3, 0x338

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x192d3e48

    if-eq v3, v13, :cond_338

    add-int/lit8 v1, v1, 0x1

    goto :goto_338

    :cond_338
    const/16 v1, -0x3d

    :goto_339
    const/16 v3, -0x32

    if-ge v1, v3, :cond_339

    const/16 v3, 0x339

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x26703e86

    if-eq v3, v13, :cond_339

    add-int/lit8 v1, v1, 0x1

    goto :goto_339

    :cond_339
    move v1, v4

    :goto_33a
    const/4 v3, 0x3

    if-ge v1, v3, :cond_33a

    const/16 v3, 0x33a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x328c36df

    if-eq v3, v13, :cond_33a

    add-int/lit8 v1, v1, 0x1

    goto :goto_33a

    :cond_33a
    const/16 v1, 0x76

    :goto_33b
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_33b

    const/16 v3, 0x33b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x49e51277

    if-eq v3, v13, :cond_33b

    add-int/lit8 v1, v1, 0x1

    goto :goto_33b

    :cond_33b
    const/16 v1, -0x1c

    :goto_33c
    const/16 v3, -0x17

    if-ge v1, v3, :cond_33c

    const/16 v3, 0x33c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x10a2048d

    if-eq v3, v13, :cond_33c

    add-int/lit8 v1, v1, 0x1

    goto :goto_33c

    :cond_33c
    const/16 v1, -0x80

    :goto_33d
    const/16 v3, -0x73

    if-ge v1, v3, :cond_33d

    const/16 v3, 0x33d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2d49965d

    if-eq v3, v13, :cond_33d

    add-int/lit8 v1, v1, 0x1

    goto :goto_33d

    :cond_33d
    const/16 v1, -0x2e

    :goto_33e
    const/16 v3, -0x24

    if-ge v1, v3, :cond_33e

    const/16 v3, 0x33e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x73a3d485

    if-eq v3, v13, :cond_33e

    add-int/lit8 v1, v1, 0x1

    goto :goto_33e

    :cond_33e
    move v1, v2

    :goto_33f
    const/16 v3, 0x59

    if-ge v1, v3, :cond_33f

    const/16 v3, 0x33f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1645bd16

    if-eq v3, v13, :cond_33f

    add-int/lit8 v1, v1, 0x1

    goto :goto_33f

    :cond_33f
    const/16 v1, -0x11

    :goto_340
    const/16 v3, 0xb

    if-ge v1, v3, :cond_340

    const/16 v3, 0x340

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3f2c03eb

    if-eq v3, v13, :cond_340

    add-int/lit8 v1, v1, 0x1

    goto :goto_340

    :cond_340
    const/16 v1, 0x54

    :goto_341
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_341

    const/16 v3, 0x341

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5c47c580

    if-eq v3, v13, :cond_341

    add-int/lit8 v1, v1, 0x1

    goto :goto_341

    :cond_341
    const/16 v1, 0x67

    :goto_342
    if-ge v1, v5, :cond_342

    const/16 v3, 0x342

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x41eca0c3

    if-eq v3, v13, :cond_342

    add-int/lit8 v1, v1, 0x1

    goto :goto_342

    :cond_342
    const/16 v1, 0x3c

    :goto_343
    const/16 v3, 0x4e

    if-ge v1, v3, :cond_343

    const/16 v3, 0x343

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x76164299

    if-eq v3, v13, :cond_343

    add-int/lit8 v1, v1, 0x1

    goto :goto_343

    :cond_343
    const/16 v1, -0x10

    :goto_344
    const/4 v3, 0x6

    if-ge v1, v3, :cond_344

    const/16 v3, 0x344

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7beb4352

    if-eq v3, v13, :cond_344

    add-int/lit8 v1, v1, 0x1

    goto :goto_344

    :cond_344
    const/16 v1, -0x43

    :goto_345
    const/16 v3, -0x39

    if-ge v1, v3, :cond_345

    const/16 v3, 0x345

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x71fc0a90

    if-eq v3, v13, :cond_345

    add-int/lit8 v1, v1, 0x1

    goto :goto_345

    :cond_345
    const/16 v1, -0x20

    :goto_346
    const/16 v3, -0x19

    if-ge v1, v3, :cond_346

    const/16 v3, 0x346

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x68ed60f

    if-eq v3, v13, :cond_346

    add-int/lit8 v1, v1, 0x1

    goto :goto_346

    :cond_346
    const/16 v1, -0x80

    :goto_347
    const/16 v3, -0x6c

    if-ge v1, v3, :cond_347

    const/16 v3, 0x347

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6cd910e9

    if-eq v3, v13, :cond_347

    add-int/lit8 v1, v1, 0x1

    goto :goto_347

    :cond_347
    const/16 v1, -0x80

    :goto_348
    const/16 v3, -0x70

    if-ge v1, v3, :cond_348

    const/16 v3, 0x348

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2b3b9bef

    if-eq v3, v13, :cond_348

    add-int/lit8 v1, v1, 0x1

    goto :goto_348

    :cond_348
    const/16 v1, -0x1a

    :goto_349
    const/16 v3, -0x10

    if-ge v1, v3, :cond_349

    const/16 v3, 0x349

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7a6f56e3

    if-eq v3, v13, :cond_349

    add-int/lit8 v1, v1, 0x1

    goto :goto_349

    :cond_349
    const/16 v1, 0xd

    :goto_34a
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_34a

    const/16 v3, 0x34a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x653c8c50

    if-eq v3, v13, :cond_34a

    add-int/lit8 v1, v1, 0x1

    goto :goto_34a

    :cond_34a
    const/16 v1, -0x69

    :goto_34b
    const/16 v3, -0x57

    if-ge v1, v3, :cond_34b

    const/16 v3, 0x34b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2c85ac46

    if-eq v3, v13, :cond_34b

    add-int/lit8 v1, v1, 0x1

    goto :goto_34b

    :cond_34b
    const/16 v1, -0x3d

    :goto_34c
    const/16 v3, -0x30

    if-ge v1, v3, :cond_34c

    const/16 v3, 0x34c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x548d0ecb

    if-eq v3, v13, :cond_34c

    add-int/lit8 v1, v1, 0x1

    goto :goto_34c

    :cond_34c
    const/16 v1, -0x5e

    :goto_34d
    const/16 v3, -0x4a

    if-ge v1, v3, :cond_34d

    const/16 v3, 0x34d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xde55754

    if-eq v3, v13, :cond_34d

    add-int/lit8 v1, v1, 0x1

    goto :goto_34d

    :cond_34d
    const/16 v1, 0x1d

    :goto_34e
    const/16 v3, 0x26

    if-ge v1, v3, :cond_34e

    const/16 v3, 0x34e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x61160418

    if-eq v3, v13, :cond_34e

    add-int/lit8 v1, v1, 0x1

    goto :goto_34e

    :cond_34e
    const/16 v1, 0x5f

    :goto_34f
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_34f

    const/16 v3, 0x34f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x65d9bd32

    if-eq v3, v13, :cond_34f

    add-int/lit8 v1, v1, 0x1

    goto :goto_34f

    :cond_34f
    const/16 v1, -0x80

    :goto_350
    const/16 v3, -0x72

    if-ge v1, v3, :cond_350

    const/16 v3, 0x350

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x46a79430

    if-eq v3, v13, :cond_350

    add-int/lit8 v1, v1, 0x1

    goto :goto_350

    :cond_350
    const/16 v1, 0x24

    :goto_351
    if-ge v1, v8, :cond_351

    const/16 v3, 0x351

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7661ab06

    if-eq v3, v13, :cond_351

    add-int/lit8 v1, v1, 0x1

    goto :goto_351

    :cond_351
    const/16 v1, -0x6a

    :goto_352
    const/16 v3, -0x5f

    if-ge v1, v3, :cond_352

    const/16 v3, 0x352

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x737db9ba

    if-eq v3, v13, :cond_352

    add-int/lit8 v1, v1, 0x1

    goto :goto_352

    :cond_352
    const/16 v1, -0x3c

    :goto_353
    const/16 v3, -0x26

    if-ge v1, v3, :cond_353

    const/16 v3, 0x353

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5915308f

    if-eq v3, v13, :cond_353

    add-int/lit8 v1, v1, 0x1

    goto :goto_353

    :cond_353
    const/16 v1, 0x25

    :goto_354
    const/16 v3, 0x29

    if-ge v1, v3, :cond_354

    const/16 v3, 0x354

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x339a1c74    # -6.0263984E7f

    if-eq v3, v13, :cond_354

    add-int/lit8 v1, v1, 0x1

    goto :goto_354

    :cond_354
    const/4 v1, -0x8

    :goto_355
    const/16 v3, 0x8

    if-ge v1, v3, :cond_355

    const/16 v3, 0x355

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2683e67e

    if-eq v3, v13, :cond_355

    add-int/lit8 v1, v1, 0x1

    goto :goto_355

    :cond_355
    const/16 v1, -0x49

    :goto_356
    const/16 v3, -0x40

    if-ge v1, v3, :cond_356

    const/16 v3, 0x356

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x59a942f

    if-eq v3, v13, :cond_356

    add-int/lit8 v1, v1, 0x1

    goto :goto_356

    :cond_356
    const/16 v1, -0x49

    :goto_357
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_357

    const/16 v3, 0x357

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1ffc08da

    if-eq v3, v13, :cond_357

    add-int/lit8 v1, v1, 0x1

    goto :goto_357

    :cond_357
    const/16 v1, -0x2b

    :goto_358
    const/16 v3, -0x1d

    if-ge v1, v3, :cond_358

    const/16 v3, 0x358

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x13fa6712

    if-eq v3, v13, :cond_358

    add-int/lit8 v1, v1, 0x1

    goto :goto_358

    :cond_358
    const/16 v1, -0x7a

    :goto_359
    const/16 v3, -0x6d

    if-ge v1, v3, :cond_359

    const/16 v3, 0x359

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x17f8e760

    if-eq v3, v13, :cond_359

    add-int/lit8 v1, v1, 0x1

    goto :goto_359

    :cond_359
    const/16 v1, 0x71

    :goto_35a
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_35a

    const/16 v3, 0x35a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xcbf0550

    if-eq v3, v13, :cond_35a

    add-int/lit8 v1, v1, 0x1

    goto :goto_35a

    :cond_35a
    const/16 v1, 0x65

    :goto_35b
    if-ge v1, v5, :cond_35b

    const/16 v3, 0x35b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x126038af

    if-eq v3, v13, :cond_35b

    add-int/lit8 v1, v1, 0x1

    goto :goto_35b

    :cond_35b
    const/16 v1, 0x29

    :goto_35c
    const/16 v3, 0x45

    if-ge v1, v3, :cond_35c

    const/16 v3, 0x35c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x427f1a22

    if-eq v3, v13, :cond_35c

    add-int/lit8 v1, v1, 0x1

    goto :goto_35c

    :cond_35c
    const/16 v1, -0x74

    :goto_35d
    const/16 v3, -0x5e

    if-ge v1, v3, :cond_35d

    const/16 v3, 0x35d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x27dd7329

    if-eq v3, v13, :cond_35d

    add-int/lit8 v1, v1, 0x1

    goto :goto_35d

    :cond_35d
    const/16 v1, 0x4e

    :goto_35e
    const/16 v3, 0x63

    if-ge v1, v3, :cond_35e

    const/16 v3, 0x35e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3fe8f8c8

    if-eq v3, v13, :cond_35e

    add-int/lit8 v1, v1, 0x1

    goto :goto_35e

    :cond_35e
    const/16 v1, 0x6c

    :goto_35f
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_35f

    const/16 v3, 0x35f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x54bbdafe

    if-eq v3, v13, :cond_35f

    add-int/lit8 v1, v1, 0x1

    goto :goto_35f

    :cond_35f
    const/16 v1, -0x4b

    :goto_360
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_360

    const/16 v3, 0x360

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5a6009ed

    if-eq v3, v13, :cond_360

    add-int/lit8 v1, v1, 0x1

    goto :goto_360

    :cond_360
    const/16 v1, 0x4f

    :goto_361
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_361

    const/16 v3, 0x361

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43e3fbc2

    if-eq v3, v13, :cond_361

    add-int/lit8 v1, v1, 0x1

    goto :goto_361

    :cond_361
    const/4 v1, 0x2

    :goto_362
    const/16 v3, 0x8

    if-ge v1, v3, :cond_362

    const/16 v3, 0x362

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x75b71ebf

    if-eq v3, v13, :cond_362

    add-int/lit8 v1, v1, 0x1

    goto :goto_362

    :cond_362
    const/16 v1, 0x7c

    :goto_363
    if-ge v1, v5, :cond_363

    const/16 v3, 0x363

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6e4843bf

    if-eq v3, v13, :cond_363

    add-int/lit8 v1, v1, 0x1

    goto :goto_363

    :cond_363
    const/16 v1, -0x37

    :goto_364
    if-ge v1, v9, :cond_364

    const/16 v3, 0x364

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x61ec03f3

    if-eq v3, v13, :cond_364

    add-int/lit8 v1, v1, 0x1

    goto :goto_364

    :cond_364
    const/16 v1, -0x20

    :goto_365
    const/16 v3, -0x1e

    if-ge v1, v3, :cond_365

    const/16 v3, 0x365

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7fbd4be5

    if-eq v3, v13, :cond_365

    add-int/lit8 v1, v1, 0x1

    goto :goto_365

    :cond_365
    const/16 v1, 0x51

    :goto_366
    const/16 v3, 0x63

    if-ge v1, v3, :cond_366

    const/16 v3, 0x366

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5986d17e

    if-eq v3, v13, :cond_366

    add-int/lit8 v1, v1, 0x1

    goto :goto_366

    :cond_366
    const/16 v1, 0xf

    :goto_367
    const/16 v3, 0x23

    if-ge v1, v3, :cond_367

    const/16 v3, 0x367

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x29c05154

    if-eq v3, v13, :cond_367

    add-int/lit8 v1, v1, 0x1

    goto :goto_367

    :cond_367
    const/16 v1, -0x51

    :goto_368
    const/16 v3, -0x4c

    if-ge v1, v3, :cond_368

    const/16 v3, 0x368

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3a2bf0ea

    if-eq v3, v13, :cond_368

    add-int/lit8 v1, v1, 0x1

    goto :goto_368

    :cond_368
    const/16 v1, -0x56

    :goto_369
    const/16 v3, -0x3f

    if-ge v1, v3, :cond_369

    const/16 v3, 0x369

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45296ac1

    if-eq v3, v13, :cond_369

    add-int/lit8 v1, v1, 0x1

    goto :goto_369

    :cond_369
    const/16 v1, -0x1b

    :goto_36a
    const/16 v3, -0x10

    if-ge v1, v3, :cond_36a

    const/16 v3, 0x36a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ce1ee61

    if-eq v3, v13, :cond_36a

    add-int/lit8 v1, v1, 0x1

    goto :goto_36a

    :cond_36a
    const/16 v1, 0x77

    :goto_36b
    if-ge v1, v5, :cond_36b

    const/16 v3, 0x36b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x58d88dc6

    if-eq v3, v13, :cond_36b

    add-int/lit8 v1, v1, 0x1

    goto :goto_36b

    :cond_36b
    const/16 v1, 0x59

    :goto_36c
    const/16 v3, 0x6a

    if-ge v1, v3, :cond_36c

    const/16 v3, 0x36c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xb26a6ab

    if-eq v3, v13, :cond_36c

    add-int/lit8 v1, v1, 0x1

    goto :goto_36c

    :cond_36c
    const/4 v1, 0x6

    :goto_36d
    const/16 v3, 0x17

    if-ge v1, v3, :cond_36d

    const/16 v3, 0x36d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x40679c33

    if-eq v3, v13, :cond_36d

    add-int/lit8 v1, v1, 0x1

    goto :goto_36d

    :cond_36d
    const/16 v1, 0x24

    :goto_36e
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_36e

    const/16 v3, 0x36e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x17abb4b1

    if-eq v3, v13, :cond_36e

    add-int/lit8 v1, v1, 0x1

    goto :goto_36e

    :cond_36e
    const/16 v1, -0x44

    :goto_36f
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_36f

    const/16 v3, 0x36f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x421d015f

    if-eq v3, v13, :cond_36f

    add-int/lit8 v1, v1, 0x1

    goto :goto_36f

    :cond_36f
    const/16 v1, -0x9

    :goto_370
    const/16 v3, 0xe

    if-ge v1, v3, :cond_370

    const/16 v3, 0x370

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x421d015f

    if-eq v3, v13, :cond_370

    add-int/lit8 v1, v1, 0x1

    goto :goto_370

    :cond_370
    const/16 v1, 0x4d

    :goto_371
    const/16 v3, 0x5c

    if-ge v1, v3, :cond_371

    const/16 v3, 0x371

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3a9821e6

    if-eq v3, v13, :cond_371

    add-int/lit8 v1, v1, 0x1

    goto :goto_371

    :cond_371
    const/16 v1, -0x20

    :goto_372
    if-ge v1, v7, :cond_372

    const/16 v3, 0x372

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x30e44d3d

    if-eq v3, v13, :cond_372

    add-int/lit8 v1, v1, 0x1

    goto :goto_372

    :cond_372
    const/16 v1, -0x32

    :goto_373
    const/16 v3, -0x23

    if-ge v1, v3, :cond_373

    const/16 v3, 0x373

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2cbc6f49

    if-eq v3, v13, :cond_373

    add-int/lit8 v1, v1, 0x1

    goto :goto_373

    :cond_373
    const/16 v1, 0x38

    :goto_374
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_374

    const/16 v3, 0x374

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7a2f64c2

    if-eq v3, v13, :cond_374

    add-int/lit8 v1, v1, 0x1

    goto :goto_374

    :cond_374
    const/16 v1, -0x53

    :goto_375
    const/16 v3, -0x47

    if-ge v1, v3, :cond_375

    const/16 v3, 0x375

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x482923de

    if-eq v3, v13, :cond_375

    add-int/lit8 v1, v1, 0x1

    goto :goto_375

    :cond_375
    const/16 v1, 0x8

    :goto_376
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_376

    const/16 v3, 0x376

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x21c690b5

    if-eq v3, v13, :cond_376

    add-int/lit8 v1, v1, 0x1

    goto :goto_376

    :cond_376
    const/16 v1, -0x72

    :goto_377
    const/16 v3, -0x65

    if-ge v1, v3, :cond_377

    const/16 v3, 0x377

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1d102d18

    if-eq v3, v13, :cond_377

    add-int/lit8 v1, v1, 0x1

    goto :goto_377

    :cond_377
    const/16 v1, 0x59

    :goto_378
    if-ge v1, v11, :cond_378

    const/16 v3, 0x378

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1749b490

    if-eq v3, v13, :cond_378

    add-int/lit8 v1, v1, 0x1

    goto :goto_378

    :cond_378
    const/16 v1, -0x2c

    :goto_379
    const/16 v3, -0x1e

    if-ge v1, v3, :cond_379

    const/16 v3, 0x379

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4d23ea76    # 1.7187824E8f

    if-eq v3, v13, :cond_379

    add-int/lit8 v1, v1, 0x1

    goto :goto_379

    :cond_379
    const/16 v1, -0xc

    :goto_37a
    const/4 v3, 0x5

    if-ge v1, v3, :cond_37a

    const/16 v3, 0x37a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2cbff60e

    if-eq v3, v13, :cond_37a

    add-int/lit8 v1, v1, 0x1

    goto :goto_37a

    :cond_37a
    const/16 v1, 0x58

    :goto_37b
    const/16 v3, 0x6f

    if-ge v1, v3, :cond_37b

    const/16 v3, 0x37b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xd314cb8

    if-eq v3, v13, :cond_37b

    add-int/lit8 v1, v1, 0x1

    goto :goto_37b

    :cond_37b
    const/16 v1, 0x79

    :goto_37c
    if-ge v1, v5, :cond_37c

    const/16 v3, 0x37c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2be5c5d5

    if-eq v3, v13, :cond_37c

    add-int/lit8 v1, v1, 0x1

    goto :goto_37c

    :cond_37c
    const/16 v1, 0x22

    :goto_37d
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_37d

    const/16 v3, 0x37d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5de73831

    if-eq v3, v13, :cond_37d

    add-int/lit8 v1, v1, 0x1

    goto :goto_37d

    :cond_37d
    const/16 v1, -0x33

    :goto_37e
    const/16 v3, -0x2c

    if-ge v1, v3, :cond_37e

    const/16 v3, 0x37e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7119656

    if-eq v3, v13, :cond_37e

    add-int/lit8 v1, v1, 0x1

    goto :goto_37e

    :cond_37e
    const/16 v1, -0x23

    :goto_37f
    const/16 v3, -0x1f

    if-ge v1, v3, :cond_37f

    const/16 v3, 0x37f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7c1fa384

    if-eq v3, v13, :cond_37f

    add-int/lit8 v1, v1, 0x1

    goto :goto_37f

    :cond_37f
    const/16 v1, -0x17

    :goto_380
    const/4 v3, -0x5

    if-ge v1, v3, :cond_380

    const/16 v3, 0x380

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1d1977e

    if-eq v3, v13, :cond_380

    add-int/lit8 v1, v1, 0x1

    goto :goto_380

    :cond_380
    const/16 v1, -0xa

    :goto_381
    const/16 v3, 0x8

    if-ge v1, v3, :cond_381

    const/16 v3, 0x381

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1d1977e

    if-eq v3, v13, :cond_381

    add-int/lit8 v1, v1, 0x1

    goto :goto_381

    :cond_381
    const/16 v1, 0x42

    :goto_382
    const/16 v3, 0x55

    if-ge v1, v3, :cond_382

    const/16 v3, 0x382

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x38dee220

    if-eq v3, v13, :cond_382

    add-int/lit8 v1, v1, 0x1

    goto :goto_382

    :cond_382
    const/16 v1, -0x7c

    :goto_383
    const/16 v3, -0x68

    if-ge v1, v3, :cond_383

    const/16 v3, 0x383

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3a734a29

    if-eq v3, v13, :cond_383

    add-int/lit8 v1, v1, 0x1

    goto :goto_383

    :cond_383
    const/16 v1, -0x11

    :goto_384
    const/4 v3, -0x7

    if-ge v1, v3, :cond_384

    const/16 v3, 0x384

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5d38c8f4

    if-eq v3, v13, :cond_384

    add-int/lit8 v1, v1, 0x1

    goto :goto_384

    :cond_384
    const/16 v1, 0x50

    :goto_385
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_385

    const/16 v3, 0x385

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xc753546

    if-eq v3, v13, :cond_385

    add-int/lit8 v1, v1, 0x1

    goto :goto_385

    :cond_385
    const/16 v1, -0x47

    :goto_386
    const/16 v3, -0x29

    if-ge v1, v3, :cond_386

    const/16 v3, 0x386

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1378d1cd

    if-eq v3, v13, :cond_386

    add-int/lit8 v1, v1, 0x1

    goto :goto_386

    :cond_386
    const/16 v1, -0x11

    :goto_387
    const/4 v3, -0x2

    if-ge v1, v3, :cond_387

    const/16 v3, 0x387

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6e00231e

    if-eq v3, v13, :cond_387

    add-int/lit8 v1, v1, 0x1

    goto :goto_387

    :cond_387
    const/16 v1, 0x43

    :goto_388
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_388

    const/16 v3, 0x388

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5f75a4d6

    if-eq v3, v13, :cond_388

    add-int/lit8 v1, v1, 0x1

    goto :goto_388

    :cond_388
    const/16 v1, -0x51

    :goto_389
    const/16 v3, -0x40

    if-ge v1, v3, :cond_389

    const/16 v3, 0x389

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x42052f66

    if-eq v3, v13, :cond_389

    add-int/lit8 v1, v1, 0x1

    goto :goto_389

    :cond_389
    move v1, v2

    :goto_38a
    const/16 v3, 0x43

    if-ge v1, v3, :cond_38a

    const/16 v3, 0x38a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x388dcc14

    if-eq v3, v13, :cond_38a

    add-int/lit8 v1, v1, 0x1

    goto :goto_38a

    :cond_38a
    const/16 v1, 0x57

    :goto_38b
    const/16 v3, 0x65

    if-ge v1, v3, :cond_38b

    const/16 v3, 0x38b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5d07b427

    if-eq v3, v13, :cond_38b

    add-int/lit8 v1, v1, 0x1

    goto :goto_38b

    :cond_38b
    const/16 v1, -0x5f

    :goto_38c
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_38c

    const/16 v3, 0x38c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1991c910

    if-eq v3, v13, :cond_38c

    add-int/lit8 v1, v1, 0x1

    goto :goto_38c

    :cond_38c
    move v1, v14

    :goto_38d
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_38d

    const/16 v3, 0x38d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x10b94da9

    if-eq v3, v13, :cond_38d

    add-int/lit8 v1, v1, 0x1

    goto :goto_38d

    :cond_38d
    const/16 v1, 0x68

    :goto_38e
    if-ge v1, v11, :cond_38e

    const/16 v3, 0x38e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1653ba48

    if-eq v3, v13, :cond_38e

    add-int/lit8 v1, v1, 0x1

    goto :goto_38e

    :cond_38e
    const/16 v1, 0x1b

    :goto_38f
    const/16 v3, 0x26

    if-ge v1, v3, :cond_38f

    const/16 v3, 0x38f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6bc86b42

    if-eq v3, v13, :cond_38f

    add-int/lit8 v1, v1, 0x1

    goto :goto_38f

    :cond_38f
    const/16 v1, -0x3e

    :goto_390
    const/16 v3, -0x37

    if-ge v1, v3, :cond_390

    const/16 v3, 0x390

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4c356577    # 4.7551964E7f

    if-eq v3, v13, :cond_390

    add-int/lit8 v1, v1, 0x1

    goto :goto_390

    :cond_390
    const/16 v1, -0x68

    :goto_391
    const/16 v3, -0x52

    if-ge v1, v3, :cond_391

    const/16 v3, 0x391

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3f37b5d8

    if-eq v3, v13, :cond_391

    add-int/lit8 v1, v1, 0x1

    goto :goto_391

    :cond_391
    const/16 v1, -0x47

    :goto_392
    const/16 v3, -0x34

    if-ge v1, v3, :cond_392

    const/16 v3, 0x392

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3fa7ab2a

    if-eq v3, v13, :cond_392

    add-int/lit8 v1, v1, 0x1

    goto :goto_392

    :cond_392
    const/16 v1, -0x9

    :goto_393
    const/16 v3, 0xa

    if-ge v1, v3, :cond_393

    const/16 v3, 0x393

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x25e65f50

    if-eq v3, v13, :cond_393

    add-int/lit8 v1, v1, 0x1

    goto :goto_393

    :cond_393
    const/16 v1, -0x17

    :goto_394
    if-ge v1, v4, :cond_394

    const/16 v3, 0x394

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x613c085b

    if-eq v3, v13, :cond_394

    add-int/lit8 v1, v1, 0x1

    goto :goto_394

    :cond_394
    const/16 v1, -0x4f

    :goto_395
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_395

    const/16 v3, 0x395

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x592e6fa4

    if-eq v3, v13, :cond_395

    add-int/lit8 v1, v1, 0x1

    goto :goto_395

    :cond_395
    const/16 v1, -0x3a

    :goto_396
    const/16 v3, -0x29

    if-ge v1, v3, :cond_396

    const/16 v3, 0x396

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x41cb2688

    if-eq v3, v13, :cond_396

    add-int/lit8 v1, v1, 0x1

    goto :goto_396

    :cond_396
    const/4 v1, 0x4

    :goto_397
    const/16 v3, 0x10

    if-ge v1, v3, :cond_397

    const/16 v3, 0x397

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x523a4ac5

    if-eq v3, v13, :cond_397

    add-int/lit8 v1, v1, 0x1

    goto :goto_397

    :cond_397
    const/16 v1, 0x48

    :goto_398
    const/16 v3, 0x51

    if-ge v1, v3, :cond_398

    const/16 v3, 0x398

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x46671951

    if-eq v3, v13, :cond_398

    add-int/lit8 v1, v1, 0x1

    goto :goto_398

    :cond_398
    const/16 v1, -0x1a

    :goto_399
    const/4 v3, -0x3

    if-ge v1, v3, :cond_399

    const/16 v3, 0x399

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x405cc536

    if-eq v3, v13, :cond_399

    add-int/lit8 v1, v1, 0x1

    goto :goto_399

    :cond_399
    const/16 v1, 0x16

    :goto_39a
    const/16 v3, 0x2e

    if-ge v1, v3, :cond_39a

    const/16 v3, 0x39a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xf226710

    if-eq v3, v13, :cond_39a

    add-int/lit8 v1, v1, 0x1

    goto :goto_39a

    :cond_39a
    const/16 v1, -0x80

    :goto_39b
    const/16 v3, -0x79

    if-ge v1, v3, :cond_39b

    const/16 v3, 0x39b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5365873c

    if-eq v3, v13, :cond_39b

    add-int/lit8 v1, v1, 0x1

    goto :goto_39b

    :cond_39b
    const/16 v1, -0x4d

    :goto_39c
    const/16 v3, -0x41

    if-ge v1, v3, :cond_39c

    const/16 v3, 0x39c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xec19d7c

    if-eq v3, v13, :cond_39c

    add-int/lit8 v1, v1, 0x1

    goto :goto_39c

    :cond_39c
    const/16 v1, -0x29

    :goto_39d
    if-ge v1, v4, :cond_39d

    const/16 v3, 0x39d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7f6fd549

    if-eq v3, v13, :cond_39d

    add-int/lit8 v1, v1, 0x1

    goto :goto_39d

    :cond_39d
    const/16 v1, -0x32

    :goto_39e
    const/16 v3, -0x28

    if-ge v1, v3, :cond_39e

    const/16 v3, 0x39e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x55f6646f

    if-eq v3, v13, :cond_39e

    add-int/lit8 v1, v1, 0x1

    goto :goto_39e

    :cond_39e
    const/16 v1, -0x71

    :goto_39f
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_39f

    const/16 v3, 0x39f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5984b3fb

    if-eq v3, v13, :cond_39f

    add-int/lit8 v1, v1, 0x1

    goto :goto_39f

    :cond_39f
    const/16 v1, 0x1c

    :goto_3a0
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_3a0

    const/16 v3, 0x3a0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x17ca0dd8

    if-eq v3, v13, :cond_3a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a0

    :cond_3a0
    move v1, v12

    :goto_3a1
    const/16 v3, 0x43

    if-ge v1, v3, :cond_3a1

    const/16 v3, 0x3a1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3b71336c

    if-eq v3, v13, :cond_3a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a1

    :cond_3a1
    const/16 v1, -0x21

    :goto_3a2
    const/16 v3, -0xf

    if-ge v1, v3, :cond_3a2

    const/16 v3, 0x3a2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x55fdfec5

    if-eq v3, v13, :cond_3a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a2

    :cond_3a2
    const/16 v1, -0x10

    :goto_3a3
    const/4 v3, -0x8

    if-ge v1, v3, :cond_3a3

    const/16 v3, 0x3a3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7622e1c4

    if-eq v3, v13, :cond_3a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a3

    :cond_3a3
    const/16 v1, -0x7d

    :goto_3a4
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_3a4

    const/16 v3, 0x3a4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4aa64b10

    if-eq v3, v13, :cond_3a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a4

    :cond_3a4
    const/16 v1, -0x39

    :goto_3a5
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_3a5

    const/16 v3, 0x3a5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3855440c

    if-eq v3, v13, :cond_3a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a5

    :cond_3a5
    const/4 v1, 0x3

    :goto_3a6
    const/16 v3, 0x12

    if-ge v1, v3, :cond_3a6

    const/16 v3, 0x3a6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1c8ee34f

    if-eq v3, v13, :cond_3a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a6

    :cond_3a6
    const/16 v1, -0x13

    :goto_3a7
    const/16 v3, -0xb

    if-ge v1, v3, :cond_3a7

    const/16 v3, 0x3a7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3ab573b8

    if-eq v3, v13, :cond_3a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a7

    :cond_3a7
    const/16 v1, -0x4f

    :goto_3a8
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_3a8

    const/16 v3, 0x3a8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5c5eb5b7

    if-eq v3, v13, :cond_3a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a8

    :cond_3a8
    const/16 v1, 0x3f

    :goto_3a9
    const/16 v3, 0x54

    if-ge v1, v3, :cond_3a9

    const/16 v3, 0x3a9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7870c373

    if-eq v3, v13, :cond_3a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a9

    :cond_3a9
    const/16 v1, 0xe

    :goto_3aa
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_3aa

    const/16 v3, 0x3aa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x17f4543d

    if-eq v3, v13, :cond_3aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_3aa

    :cond_3aa
    const/16 v1, 0x34

    :goto_3ab
    const/16 v3, 0x4a

    if-ge v1, v3, :cond_3ab

    const/16 v3, 0x3ab

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6109903d

    if-eq v3, v13, :cond_3ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ab

    :cond_3ab
    const/16 v1, 0x30

    :goto_3ac
    const/16 v3, 0x43

    if-ge v1, v3, :cond_3ac

    const/16 v3, 0x3ac

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6cd4a15c

    if-eq v3, v13, :cond_3ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ac

    :cond_3ac
    const/16 v1, 0x11

    :goto_3ad
    const/16 v3, 0x22

    if-ge v1, v3, :cond_3ad

    const/16 v3, 0x3ad

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x73e663ac

    if-eq v3, v13, :cond_3ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ad

    :cond_3ad
    move v1, v15

    :goto_3ae
    if-ge v1, v5, :cond_3ae

    const/16 v3, 0x3ae

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7763c79d

    if-eq v3, v13, :cond_3ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ae

    :cond_3ae
    const/16 v1, -0x60

    :goto_3af
    const/16 v3, -0x56

    if-ge v1, v3, :cond_3af

    const/16 v3, 0x3af

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5f384c02

    if-eq v3, v13, :cond_3af

    add-int/lit8 v1, v1, 0x1

    goto :goto_3af

    :cond_3af
    const/16 v1, 0x68

    :goto_3b0
    if-ge v1, v11, :cond_3b0

    const/16 v3, 0x3b0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x727d1397

    if-eq v3, v13, :cond_3b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b0

    :cond_3b0
    const/16 v1, 0x56

    :goto_3b1
    const/16 v3, 0x62

    if-ge v1, v3, :cond_3b1

    const/16 v3, 0x3b1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x363fb088

    if-eq v3, v13, :cond_3b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b1

    :cond_3b1
    const/4 v1, -0x6

    :goto_3b2
    const/16 v3, 0xc

    if-ge v1, v3, :cond_3b2

    const/16 v3, 0x3b2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ca238c3

    if-eq v3, v13, :cond_3b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b2

    :cond_3b2
    const/16 v1, 0x3f

    :goto_3b3
    if-ge v1, v6, :cond_3b3

    const/16 v3, 0x3b3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x108bd2ab

    if-eq v3, v13, :cond_3b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b3

    :cond_3b3
    const/16 v1, -0x40

    :goto_3b4
    const/16 v3, -0x25

    if-ge v1, v3, :cond_3b4

    const/16 v3, 0x3b4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2e8d992a

    if-eq v3, v13, :cond_3b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b4

    :cond_3b4
    const/16 v1, 0x32

    :goto_3b5
    const/16 v3, 0x37

    if-ge v1, v3, :cond_3b5

    const/16 v3, 0x3b5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6d2ace2a

    if-eq v3, v13, :cond_3b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b5

    :cond_3b5
    move v1, v6

    :goto_3b6
    const/16 v3, 0x58

    if-ge v1, v3, :cond_3b6

    const/16 v3, 0x3b6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c4853f0

    if-eq v3, v13, :cond_3b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b6

    :cond_3b6
    const/16 v1, 0x26

    :goto_3b7
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_3b7

    const/16 v3, 0x3b7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7c7541e8

    if-eq v3, v13, :cond_3b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b7

    :cond_3b7
    const/16 v1, -0x4b

    :goto_3b8
    const/16 v3, -0x44

    if-ge v1, v3, :cond_3b8

    const/16 v3, 0x3b8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3938b1f0

    if-eq v3, v13, :cond_3b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b8

    :cond_3b8
    const/4 v1, 0x2

    :goto_3b9
    const/16 v3, 0xe

    if-ge v1, v3, :cond_3b9

    const/16 v3, 0x3b9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c8f1142

    if-eq v3, v13, :cond_3b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b9

    :cond_3b9
    const/16 v1, -0x7c

    :goto_3ba
    const/16 v3, -0x6f

    if-ge v1, v3, :cond_3ba

    const/16 v3, 0x3ba

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x76852ead

    if-eq v3, v13, :cond_3ba

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ba

    :cond_3ba
    const/16 v1, -0x2b

    :goto_3bb
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_3bb

    const/16 v3, 0x3bb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x369cb961

    if-eq v3, v13, :cond_3bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bb

    :cond_3bb
    const/16 v1, 0x67

    :goto_3bc
    if-ge v1, v11, :cond_3bc

    const/16 v3, 0x3bc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x759e0244

    if-eq v3, v13, :cond_3bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bc

    :cond_3bc
    const/16 v1, -0x55

    :goto_3bd
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_3bd

    const/16 v3, 0x3bd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6300a429

    if-eq v3, v13, :cond_3bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bd

    :cond_3bd
    const/16 v1, -0x17

    :goto_3be
    const/16 v3, -0x9

    if-ge v1, v3, :cond_3be

    const/16 v3, 0x3be

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3c8555ff

    if-eq v3, v13, :cond_3be

    add-int/lit8 v1, v1, 0x1

    goto :goto_3be

    :cond_3be
    const/16 v1, 0x31

    :goto_3bf
    const/16 v3, 0x36

    if-ge v1, v3, :cond_3bf

    const/16 v3, 0x3bf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4a57af1b

    if-eq v3, v13, :cond_3bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_3bf

    :cond_3bf
    const/16 v1, -0x7e

    :goto_3c0
    const/16 v3, -0x6c

    if-ge v1, v3, :cond_3c0

    const/16 v3, 0x3c0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6211e431

    if-eq v3, v13, :cond_3c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c0

    :cond_3c0
    const/16 v1, -0x37

    :goto_3c1
    const/16 v3, -0x26

    if-ge v1, v3, :cond_3c1

    const/16 v3, 0x3c1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x10913664

    if-eq v3, v13, :cond_3c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c1

    :cond_3c1
    const/16 v1, 0x9

    :goto_3c2
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_3c2

    const/16 v3, 0x3c2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x73da146

    if-eq v3, v13, :cond_3c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c2

    :cond_3c2
    const/16 v1, 0x47

    :goto_3c3
    const/16 v3, 0x55

    if-ge v1, v3, :cond_3c3

    const/16 v3, 0x3c3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3114d6ae

    if-eq v3, v13, :cond_3c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c3

    :cond_3c3
    const/16 v1, -0x20

    :goto_3c4
    const/4 v3, -0x6

    if-ge v1, v3, :cond_3c4

    const/16 v3, 0x3c4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13d88ef3

    if-eq v3, v13, :cond_3c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c4

    :cond_3c4
    const/16 v1, 0x1c

    :goto_3c5
    const/16 v3, 0x35

    if-ge v1, v3, :cond_3c5

    const/16 v3, 0x3c5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2f84803d

    if-eq v3, v13, :cond_3c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c5

    :cond_3c5
    const/16 v1, 0x32

    :goto_3c6
    const/16 v3, 0x44

    if-ge v1, v3, :cond_3c6

    const/16 v3, 0x3c6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x52d3f853

    if-eq v3, v13, :cond_3c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c6

    :cond_3c6
    const/16 v1, -0x1e

    :goto_3c7
    const/4 v3, -0x4

    if-ge v1, v3, :cond_3c7

    const/16 v3, 0x3c7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1778ca44

    if-eq v3, v13, :cond_3c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c7

    :cond_3c7
    const/16 v1, -0x20

    :goto_3c8
    if-ge v1, v10, :cond_3c8

    const/16 v3, 0x3c8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3a60fd21

    if-eq v3, v13, :cond_3c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c8

    :cond_3c8
    const/16 v1, 0x53

    :goto_3c9
    const/16 v3, 0x67

    if-ge v1, v3, :cond_3c9

    const/16 v3, 0x3c9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4a6abd74

    if-eq v3, v13, :cond_3c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3c9

    :cond_3c9
    const/16 v1, -0x31

    :goto_3ca
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_3ca

    const/16 v3, 0x3ca

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7cce007d

    if-eq v3, v13, :cond_3ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ca

    :cond_3ca
    const/16 v1, -0xb

    :goto_3cb
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3cb

    const/16 v3, 0x3cb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7cce007d

    if-eq v3, v13, :cond_3cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_3cb

    :cond_3cb
    const/16 v1, 0x47

    :goto_3cc
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_3cc

    const/16 v3, 0x3cc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x14234143

    if-eq v3, v13, :cond_3cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_3cc

    :cond_3cc
    const/16 v1, -0x1b

    :goto_3cd
    const/16 v3, -0xa

    if-ge v1, v3, :cond_3cd

    const/16 v3, 0x3cd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2e1b1c7f

    if-eq v3, v13, :cond_3cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_3cd

    :cond_3cd
    const/16 v1, 0x14

    :goto_3ce
    const/16 v3, 0x23

    if-ge v1, v3, :cond_3ce

    const/16 v3, 0x3ce

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1388d77

    if-eq v3, v13, :cond_3ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ce

    :cond_3ce
    const/16 v1, 0x3a

    :goto_3cf
    const/16 v3, 0x46

    if-ge v1, v3, :cond_3cf

    const/16 v3, 0x3cf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x668e12bd

    if-eq v3, v13, :cond_3cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_3cf

    :cond_3cf
    const/16 v1, -0x5b

    :goto_3d0
    const/16 v3, -0x4d

    if-ge v1, v3, :cond_3d0

    const/16 v3, 0x3d0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x628fe0ed

    if-eq v3, v13, :cond_3d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d0

    :cond_3d0
    const/4 v1, -0x1

    :goto_3d1
    const/16 v3, 0x11

    if-ge v1, v3, :cond_3d1

    const/16 v3, 0x3d1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3d30487a

    if-eq v3, v13, :cond_3d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d1

    :cond_3d1
    move v1, v8

    :goto_3d2
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_3d2

    const/16 v3, 0x3d2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x26cf4f9a

    if-eq v3, v13, :cond_3d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d2

    :cond_3d2
    const/16 v1, -0x5e

    :goto_3d3
    const/16 v3, -0x51

    if-ge v1, v3, :cond_3d3

    const/16 v3, 0x3d3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4910763c

    if-eq v3, v13, :cond_3d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d3

    :cond_3d3
    const/16 v1, -0x54

    :goto_3d4
    const/16 v3, -0x42

    if-ge v1, v3, :cond_3d4

    const/16 v3, 0x3d4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x392c06

    if-eq v3, v13, :cond_3d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d4

    :cond_3d4
    const/4 v1, -0x6

    :goto_3d5
    const/16 v3, 0x11

    if-ge v1, v3, :cond_3d5

    const/16 v3, 0x3d5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x54258ab0

    if-eq v3, v13, :cond_3d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d5

    :cond_3d5
    const/16 v1, -0x71

    :goto_3d6
    const/16 v3, -0x53

    if-ge v1, v3, :cond_3d6

    const/16 v3, 0x3d6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2824455d

    if-eq v3, v13, :cond_3d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d6

    :cond_3d6
    const/4 v1, 0x1

    :goto_3d7
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3d7

    const/16 v3, 0x3d7

    const/4 v13, 0x1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xd1fb2ce

    if-eq v3, v13, :cond_3d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d7

    :cond_3d7
    const/16 v1, -0x35

    :goto_3d8
    const/16 v3, -0x28

    if-ge v1, v3, :cond_3d8

    const/16 v3, 0x3d8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x12bfa302

    if-eq v3, v13, :cond_3d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d8

    :cond_3d8
    const/16 v1, 0x5c

    :goto_3d9
    if-ge v1, v15, :cond_3d9

    const/16 v3, 0x3d9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x533c3584

    if-eq v3, v13, :cond_3d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d9

    :cond_3d9
    const/16 v1, -0x7c

    :goto_3da
    const/16 v3, -0x72

    if-ge v1, v3, :cond_3da

    const/16 v3, 0x3da

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x19e6175d

    if-eq v3, v13, :cond_3da

    add-int/lit8 v1, v1, 0x1

    goto :goto_3da

    :cond_3da
    const/16 v1, 0x8

    :goto_3db
    const/16 v3, 0x14

    if-ge v1, v3, :cond_3db

    const/16 v3, 0x3db

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x43e66107

    if-eq v3, v13, :cond_3db

    add-int/lit8 v1, v1, 0x1

    goto :goto_3db

    :cond_3db
    const/16 v1, 0x23

    :goto_3dc
    if-ge v1, v8, :cond_3dc

    const/16 v3, 0x3dc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x26155127

    if-eq v3, v13, :cond_3dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_3dc

    :cond_3dc
    const/16 v1, 0x20

    :goto_3dd
    const/16 v3, 0x2e

    if-ge v1, v3, :cond_3dd

    const/16 v3, 0x3dd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x8914281

    if-eq v3, v13, :cond_3dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_3dd

    :cond_3dd
    const/16 v1, -0x73

    :goto_3de
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_3de

    const/16 v3, 0x3de

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x64589175

    if-eq v3, v13, :cond_3de

    add-int/lit8 v1, v1, 0x1

    goto :goto_3de

    :cond_3de
    const/16 v1, 0x4e

    :goto_3df
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_3df

    const/16 v3, 0x3df

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x51d20523

    if-eq v3, v13, :cond_3df

    add-int/lit8 v1, v1, 0x1

    goto :goto_3df

    :cond_3df
    move v1, v12

    :goto_3e0
    const/16 v3, 0x48

    if-ge v1, v3, :cond_3e0

    const/16 v3, 0x3e0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x42192a44

    if-eq v3, v13, :cond_3e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e0

    :cond_3e0
    const/16 v1, 0x5e

    :goto_3e1
    const/16 v3, 0x77

    if-ge v1, v3, :cond_3e1

    const/16 v3, 0x3e1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x373eb385

    if-eq v3, v13, :cond_3e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e1

    :cond_3e1
    const/16 v1, 0x44

    :goto_3e2
    const/16 v3, 0x52

    if-ge v1, v3, :cond_3e2

    const/16 v3, 0x3e2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x450001bf

    if-eq v3, v13, :cond_3e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e2

    :cond_3e2
    const/16 v1, 0x17

    :goto_3e3
    const/16 v3, 0x21

    if-ge v1, v3, :cond_3e3

    const/16 v3, 0x3e3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6903ae2b

    if-eq v3, v13, :cond_3e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e3

    :cond_3e3
    const/16 v1, -0x80

    :goto_3e4
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_3e4

    const/16 v3, 0x3e4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x15db54fe

    if-eq v3, v13, :cond_3e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e4

    :cond_3e4
    const/16 v1, 0x4a

    :goto_3e5
    const/16 v3, 0x51

    if-ge v1, v3, :cond_3e5

    const/16 v3, 0x3e5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x31d36ebb

    if-eq v3, v13, :cond_3e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e5

    :cond_3e5
    const/16 v1, -0x71

    :goto_3e6
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_3e6

    const/16 v3, 0x3e6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3b27f593

    if-eq v3, v13, :cond_3e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e6

    :cond_3e6
    const/16 v1, 0x55

    :goto_3e7
    const/16 v3, 0x68

    if-ge v1, v3, :cond_3e7

    const/16 v3, 0x3e7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x52fc416a

    if-eq v3, v13, :cond_3e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e7

    :cond_3e7
    const/16 v1, -0x5f

    :goto_3e8
    const/16 v3, -0x47

    if-ge v1, v3, :cond_3e8

    const/16 v3, 0x3e8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x56170e76

    if-eq v3, v13, :cond_3e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e8

    :cond_3e8
    const/16 v1, -0x1c

    :goto_3e9
    const/16 v3, -0xf

    if-ge v1, v3, :cond_3e9

    const/16 v3, 0x3e9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x680f0e85

    if-eq v3, v13, :cond_3e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e9

    :cond_3e9
    const/16 v1, 0x53

    :goto_3ea
    if-ge v1, v14, :cond_3ea

    const/16 v3, 0x3ea

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3013661

    if-eq v3, v13, :cond_3ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ea

    :cond_3ea
    const/16 v1, -0x30

    :goto_3eb
    const/16 v3, -0x27

    if-ge v1, v3, :cond_3eb

    const/16 v3, 0x3eb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2fdf4c81

    if-eq v3, v13, :cond_3eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_3eb

    :cond_3eb
    const/16 v1, -0x80

    :goto_3ec
    const/16 v3, -0x7a

    if-ge v1, v3, :cond_3ec

    const/16 v3, 0x3ec

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x8a2f319

    if-eq v3, v13, :cond_3ec

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ec

    :cond_3ec
    const/16 v1, -0x23

    :goto_3ed
    const/16 v3, -0x14

    if-ge v1, v3, :cond_3ed

    const/16 v3, 0x3ed

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x759ff7b0

    if-eq v3, v13, :cond_3ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ed

    :cond_3ed
    const/16 v1, 0x40

    :goto_3ee
    const/16 v3, 0x59

    if-ge v1, v3, :cond_3ee

    const/16 v3, 0x3ee

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x64479417

    if-eq v3, v13, :cond_3ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ee

    :cond_3ee
    const/16 v1, 0x35

    :goto_3ef
    const/16 v3, 0x45

    if-ge v1, v3, :cond_3ef

    const/16 v3, 0x3ef

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x20b98ac0

    if-eq v3, v13, :cond_3ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ef

    :cond_3ef
    const/16 v1, -0x27

    :goto_3f0
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_3f0

    const/16 v3, 0x3f0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3f583dfd

    if-eq v3, v13, :cond_3f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f0

    :cond_3f0
    const/16 v1, 0x4a

    :goto_3f1
    const/16 v3, 0x65

    if-ge v1, v3, :cond_3f1

    const/16 v3, 0x3f1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x609fa61b

    if-eq v3, v13, :cond_3f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f1

    :cond_3f1
    const/16 v1, -0xa

    :goto_3f2
    const/4 v3, 0x4

    if-ge v1, v3, :cond_3f2

    const/16 v3, 0x3f2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7fc93b69

    if-eq v3, v13, :cond_3f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f2

    :cond_3f2
    const/16 v1, -0x58

    :goto_3f3
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_3f3

    const/16 v3, 0x3f3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3ff190d5

    if-eq v3, v13, :cond_3f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f3

    :cond_3f3
    const/16 v1, -0xb

    :goto_3f4
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3f4

    const/16 v3, 0x3f4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x58dfe584

    if-eq v3, v13, :cond_3f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f4

    :cond_3f4
    const/16 v1, -0x70

    :goto_3f5
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_3f5

    const/16 v3, 0x3f5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7adc2c2e

    if-eq v3, v13, :cond_3f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f5

    :cond_3f5
    const/16 v1, 0x76

    :goto_3f6
    if-ge v1, v5, :cond_3f6

    const/16 v3, 0x3f6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2f450059

    if-eq v3, v13, :cond_3f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f6

    :cond_3f6
    move v1, v8

    :goto_3f7
    const/16 v3, 0x41

    if-ge v1, v3, :cond_3f7

    const/16 v3, 0x3f7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x615a0501

    if-eq v3, v13, :cond_3f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f7

    :cond_3f7
    const/16 v1, -0x80

    :goto_3f8
    const/16 v3, -0x72

    if-ge v1, v3, :cond_3f8

    const/16 v3, 0x3f8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5fd12bbb

    if-eq v3, v13, :cond_3f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f8

    :cond_3f8
    const/4 v1, -0x3

    :goto_3f9
    const/16 v3, 0xf

    if-ge v1, v3, :cond_3f9

    const/16 v3, 0x3f9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2fe1c12f

    if-eq v3, v13, :cond_3f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f9

    :cond_3f9
    const/16 v1, -0x24

    :goto_3fa
    if-ge v1, v10, :cond_3fa

    const/16 v3, 0x3fa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2dfedc87

    if-eq v3, v13, :cond_3fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fa

    :cond_3fa
    const/16 v1, 0xd

    :goto_3fb
    const/16 v3, 0x25

    if-ge v1, v3, :cond_3fb

    const/16 v3, 0x3fb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x17cab401

    if-eq v3, v13, :cond_3fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fb

    :cond_3fb
    const/16 v1, -0x63

    :goto_3fc
    const/16 v3, -0x54

    if-ge v1, v3, :cond_3fc

    const/16 v3, 0x3fc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7537ab78

    if-eq v3, v13, :cond_3fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fc

    :cond_3fc
    const/16 v1, -0x21

    :goto_3fd
    if-ge v1, v4, :cond_3fd

    const/16 v3, 0x3fd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x17b2bc06

    if-eq v3, v13, :cond_3fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fd

    :cond_3fd
    const/16 v1, -0x4f

    :goto_3fe
    const/16 v3, -0x42

    if-ge v1, v3, :cond_3fe

    const/16 v3, 0x3fe

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x175b2464

    if-eq v3, v13, :cond_3fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_3fe

    :cond_3fe
    move v1, v10

    :goto_3ff
    const/4 v3, -0x1

    if-ge v1, v3, :cond_3ff

    const/16 v3, 0x3ff

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x48065a6f

    if-eq v3, v13, :cond_3ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ff

    :cond_3ff
    const/16 v1, -0x80

    :goto_400
    const/16 v3, -0x6b

    if-ge v1, v3, :cond_400

    const/16 v3, 0x400

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5526df7c

    if-eq v3, v13, :cond_400

    add-int/lit8 v1, v1, 0x1

    goto :goto_400

    :cond_400
    const/16 v1, -0x26

    :goto_401
    const/16 v3, -0x16

    if-ge v1, v3, :cond_401

    const/16 v3, 0x401

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7dd758be

    if-eq v3, v13, :cond_401

    add-int/lit8 v1, v1, 0x1

    goto :goto_401

    :cond_401
    const/4 v1, -0x1

    :goto_402
    const/16 v3, 0x15

    if-ge v1, v3, :cond_402

    const/16 v3, 0x402

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x199b0aca

    if-eq v3, v13, :cond_402

    add-int/lit8 v1, v1, 0x1

    goto :goto_402

    :cond_402
    const/4 v1, 0x5

    :goto_403
    const/16 v3, 0x12

    if-ge v1, v3, :cond_403

    const/16 v3, 0x403

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2ca478a5

    if-eq v3, v13, :cond_403

    add-int/lit8 v1, v1, 0x1

    goto :goto_403

    :cond_403
    const/16 v1, 0x42

    :goto_404
    const/16 v3, 0x54

    if-ge v1, v3, :cond_404

    const/16 v3, 0x404

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x56524d88

    if-eq v3, v13, :cond_404

    add-int/lit8 v1, v1, 0x1

    goto :goto_404

    :cond_404
    const/16 v1, 0x1c

    :goto_405
    const/16 v3, 0x34

    if-ge v1, v3, :cond_405

    const/16 v3, 0x405

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x77a9672d

    if-eq v3, v13, :cond_405

    add-int/lit8 v1, v1, 0x1

    goto :goto_405

    :cond_405
    const/16 v1, 0x6b

    :goto_406
    const/16 v3, 0x6c

    if-ge v1, v3, :cond_406

    const/16 v3, 0x406

    const/16 v13, 0x6b

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x359a8650

    if-eq v3, v13, :cond_406

    add-int/lit8 v1, v1, 0x1

    goto :goto_406

    :cond_406
    const/16 v1, -0x20

    :goto_407
    const/4 v3, -0x8

    if-ge v1, v3, :cond_407

    const/16 v3, 0x407

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x79a7d8e3

    if-eq v3, v13, :cond_407

    add-int/lit8 v1, v1, 0x1

    goto :goto_407

    :cond_407
    move v1, v10

    :goto_408
    const/4 v3, -0x6

    if-ge v1, v3, :cond_408

    const/16 v3, 0x408

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x33b25649    # -5.3913308E7f

    if-eq v3, v13, :cond_408

    add-int/lit8 v1, v1, 0x1

    goto :goto_408

    :cond_408
    const/16 v1, 0x3c

    :goto_409
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_409

    const/16 v3, 0x409

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3343e8d1

    if-eq v3, v13, :cond_409

    add-int/lit8 v1, v1, 0x1

    goto :goto_409

    :cond_409
    const/16 v1, 0x29

    :goto_40a
    const/16 v3, 0x41

    if-ge v1, v3, :cond_40a

    const/16 v3, 0x40a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x45ee8160

    if-eq v3, v13, :cond_40a

    add-int/lit8 v1, v1, 0x1

    goto :goto_40a

    :cond_40a
    const/16 v1, 0x5f

    :goto_40b
    const/16 v3, 0x76

    if-ge v1, v3, :cond_40b

    const/16 v3, 0x40b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1a207033

    if-eq v3, v13, :cond_40b

    add-int/lit8 v1, v1, 0x1

    goto :goto_40b

    :cond_40b
    const/16 v1, -0x5c

    :goto_40c
    const/16 v3, -0x5a

    if-ge v1, v3, :cond_40c

    const/16 v3, 0x40c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x54ec1788

    if-eq v3, v13, :cond_40c

    add-int/lit8 v1, v1, 0x1

    goto :goto_40c

    :cond_40c
    const/16 v1, 0x64

    :goto_40d
    const/16 v3, 0x7b

    if-ge v1, v3, :cond_40d

    const/16 v3, 0x40d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ba73248

    if-eq v3, v13, :cond_40d

    add-int/lit8 v1, v1, 0x1

    goto :goto_40d

    :cond_40d
    const/16 v1, -0x5b

    :goto_40e
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_40e

    const/16 v3, 0x40e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5208ad6f

    if-eq v3, v13, :cond_40e

    add-int/lit8 v1, v1, 0x1

    goto :goto_40e

    :cond_40e
    move v1, v9

    :goto_40f
    const/16 v3, -0x16

    if-ge v1, v3, :cond_40f

    const/16 v3, 0x40f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x658bab43

    if-eq v3, v13, :cond_40f

    add-int/lit8 v1, v1, 0x1

    goto :goto_40f

    :cond_40f
    const/16 v1, -0x74

    :goto_410
    const/16 v3, -0x65

    if-ge v1, v3, :cond_410

    const/16 v3, 0x410

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4fbfecc7

    if-eq v3, v13, :cond_410

    add-int/lit8 v1, v1, 0x1

    goto :goto_410

    :cond_410
    const/16 v1, -0x17

    :goto_411
    const/16 v3, -0x13

    if-ge v1, v3, :cond_411

    const/16 v3, 0x411

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x276c5b63

    if-eq v3, v13, :cond_411

    add-int/lit8 v1, v1, 0x1

    goto :goto_411

    :cond_411
    const/16 v1, 0x6b

    :goto_412
    if-ge v1, v15, :cond_412

    const/16 v3, 0x412

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x329867b1

    if-eq v3, v13, :cond_412

    add-int/lit8 v1, v1, 0x1

    goto :goto_412

    :cond_412
    const/16 v1, 0x19

    :goto_413
    const/16 v3, 0x27

    if-ge v1, v3, :cond_413

    const/16 v3, 0x413

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2144ac63

    if-eq v3, v13, :cond_413

    add-int/lit8 v1, v1, 0x1

    goto :goto_413

    :cond_413
    const/16 v1, 0x28

    :goto_414
    if-ge v1, v2, :cond_414

    const/16 v3, 0x414

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6a5fba3f

    if-eq v3, v13, :cond_414

    add-int/lit8 v1, v1, 0x1

    goto :goto_414

    :cond_414
    const/16 v1, 0x63

    :goto_415
    const/16 v3, 0x6b

    if-ge v1, v3, :cond_415

    const/16 v3, 0x415

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3ba19eaa

    if-eq v3, v13, :cond_415

    add-int/lit8 v1, v1, 0x1

    goto :goto_415

    :cond_415
    const/16 v1, -0x15

    :goto_416
    const/4 v3, -0x8

    if-ge v1, v3, :cond_416

    const/16 v3, 0x416

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5d67ed8f

    if-eq v3, v13, :cond_416

    add-int/lit8 v1, v1, 0x1

    goto :goto_416

    :cond_416
    move v1, v12

    :goto_417
    if-ge v1, v6, :cond_417

    const/16 v3, 0x417

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3a05b896

    if-eq v3, v13, :cond_417

    add-int/lit8 v1, v1, 0x1

    goto :goto_417

    :cond_417
    const/16 v1, -0x7f

    :goto_418
    const/16 v3, -0x74

    if-ge v1, v3, :cond_418

    const/16 v3, 0x418

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x75385442

    if-eq v3, v13, :cond_418

    add-int/lit8 v1, v1, 0x1

    goto :goto_418

    :cond_418
    const/16 v1, -0x53

    :goto_419
    const/16 v3, -0x4a

    if-ge v1, v3, :cond_419

    const/16 v3, 0x419

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1dcdfcb7

    if-eq v3, v13, :cond_419

    add-int/lit8 v1, v1, 0x1

    goto :goto_419

    :cond_419
    const/16 v1, -0x6f

    :goto_41a
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_41a

    const/16 v3, 0x41a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5f839e3d

    if-eq v3, v13, :cond_41a

    add-int/lit8 v1, v1, 0x1

    goto :goto_41a

    :cond_41a
    const/16 v1, -0x1a

    :goto_41b
    if-ge v1, v4, :cond_41b

    const/16 v3, 0x41b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3febfe14

    if-eq v3, v13, :cond_41b

    add-int/lit8 v1, v1, 0x1

    goto :goto_41b

    :cond_41b
    const/16 v1, 0x56

    :goto_41c
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_41c

    const/16 v3, 0x41c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x62a49612

    if-eq v3, v13, :cond_41c

    add-int/lit8 v1, v1, 0x1

    goto :goto_41c

    :cond_41c
    move v1, v8

    :goto_41d
    const/16 v3, 0x40

    if-ge v1, v3, :cond_41d

    const/16 v3, 0x41d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x274d7520

    if-eq v3, v13, :cond_41d

    add-int/lit8 v1, v1, 0x1

    goto :goto_41d

    :cond_41d
    const/16 v1, 0x16

    :goto_41e
    const/16 v3, 0x24

    if-ge v1, v3, :cond_41e

    const/16 v3, 0x41e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6209e42

    if-eq v3, v13, :cond_41e

    add-int/lit8 v1, v1, 0x1

    goto :goto_41e

    :cond_41e
    const/16 v1, 0x5c

    :goto_41f
    const/16 v3, 0x5f

    if-ge v1, v3, :cond_41f

    const/16 v3, 0x41f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4d302341

    if-eq v3, v13, :cond_41f

    add-int/lit8 v1, v1, 0x1

    goto :goto_41f

    :cond_41f
    const/16 v1, -0x76

    :goto_420
    const/16 v3, -0x62

    if-ge v1, v3, :cond_420

    const/16 v3, 0x420

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6dbed8

    if-eq v3, v13, :cond_420

    add-int/lit8 v1, v1, 0x1

    goto :goto_420

    :cond_420
    const/16 v1, 0x32

    :goto_421
    const/16 v3, 0x3b

    if-ge v1, v3, :cond_421

    const/16 v3, 0x421

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x716cd250

    if-eq v3, v13, :cond_421

    add-int/lit8 v1, v1, 0x1

    goto :goto_421

    :cond_421
    const/16 v1, 0x4e

    :goto_422
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_422

    const/16 v3, 0x422

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x10286d07

    if-eq v3, v13, :cond_422

    add-int/lit8 v1, v1, 0x1

    goto :goto_422

    :cond_422
    const/16 v1, 0x1a

    :goto_423
    const/16 v3, 0x25

    if-ge v1, v3, :cond_423

    const/16 v3, 0x423

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x368b16af

    if-eq v3, v13, :cond_423

    add-int/lit8 v1, v1, 0x1

    goto :goto_423

    :cond_423
    const/16 v1, -0x32

    :goto_424
    const/16 v3, -0x1b

    if-ge v1, v3, :cond_424

    const/16 v3, 0x424

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x55d5ced

    if-eq v3, v13, :cond_424

    add-int/lit8 v1, v1, 0x1

    goto :goto_424

    :cond_424
    const/4 v1, 0x3

    :goto_425
    const/16 v3, 0x16

    if-ge v1, v3, :cond_425

    const/16 v3, 0x425

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ff51313

    if-eq v3, v13, :cond_425

    add-int/lit8 v1, v1, 0x1

    goto :goto_425

    :cond_425
    const/16 v1, -0x45

    :goto_426
    const/16 v3, -0x2e

    if-ge v1, v3, :cond_426

    const/16 v3, 0x426

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ffcbb4e

    if-eq v3, v13, :cond_426

    add-int/lit8 v1, v1, 0x1

    goto :goto_426

    :cond_426
    const/16 v1, 0x43

    :goto_427
    const/16 v3, 0x53

    if-ge v1, v3, :cond_427

    const/16 v3, 0x427

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4cb968d2

    if-eq v3, v13, :cond_427

    add-int/lit8 v1, v1, 0x1

    goto :goto_427

    :cond_427
    const/16 v1, 0x4c

    :goto_428
    const/16 v3, 0x61

    if-ge v1, v3, :cond_428

    const/16 v3, 0x428

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3676116e

    if-eq v3, v13, :cond_428

    add-int/lit8 v1, v1, 0x1

    goto :goto_428

    :cond_428
    const/16 v1, 0x36

    :goto_429
    const/16 v3, 0x3a

    if-ge v1, v3, :cond_429

    const/16 v3, 0x429

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ca8fba

    if-eq v3, v13, :cond_429

    add-int/lit8 v1, v1, 0x1

    goto :goto_429

    :cond_429
    const/16 v1, 0x41

    :goto_42a
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_42a

    const/16 v3, 0x42a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5083cbd0

    if-eq v3, v13, :cond_42a

    add-int/lit8 v1, v1, 0x1

    goto :goto_42a

    :cond_42a
    const/16 v1, 0x35

    :goto_42b
    const/16 v3, 0x45

    if-ge v1, v3, :cond_42b

    const/16 v3, 0x42b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x14152db1

    if-eq v3, v13, :cond_42b

    add-int/lit8 v1, v1, 0x1

    goto :goto_42b

    :cond_42b
    const/16 v1, -0x27

    :goto_42c
    const/16 v3, -0x1c

    if-ge v1, v3, :cond_42c

    const/16 v3, 0x42c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7e7eadcd

    if-eq v3, v13, :cond_42c

    add-int/lit8 v1, v1, 0x1

    goto :goto_42c

    :cond_42c
    const/16 v1, -0x6f

    :goto_42d
    const/16 v3, -0x62

    if-ge v1, v3, :cond_42d

    const/16 v3, 0x42d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x18c4617f

    if-eq v3, v13, :cond_42d

    add-int/lit8 v1, v1, 0x1

    goto :goto_42d

    :cond_42d
    const/16 v1, 0x27

    :goto_42e
    if-ge v1, v12, :cond_42e

    const/16 v3, 0x42e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2103e5f5

    if-eq v3, v13, :cond_42e

    add-int/lit8 v1, v1, 0x1

    goto :goto_42e

    :cond_42e
    const/16 v1, -0x3d

    :goto_42f
    const/16 v3, -0x35

    if-ge v1, v3, :cond_42f

    const/16 v3, 0x42f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6b5c4c6d

    if-eq v3, v13, :cond_42f

    add-int/lit8 v1, v1, 0x1

    goto :goto_42f

    :cond_42f
    const/16 v1, 0x4d

    :goto_430
    if-ge v1, v14, :cond_430

    const/16 v3, 0x430

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2070dcb2

    if-eq v3, v13, :cond_430

    add-int/lit8 v1, v1, 0x1

    goto :goto_430

    :cond_430
    const/16 v1, -0x77

    :goto_431
    const/16 v3, -0x69

    if-ge v1, v3, :cond_431

    const/16 v3, 0x431

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x762b4400

    if-eq v3, v13, :cond_431

    add-int/lit8 v1, v1, 0x1

    goto :goto_431

    :cond_431
    const/16 v1, -0x27

    :goto_432
    const/16 v3, -0x1f

    if-ge v1, v3, :cond_432

    const/16 v3, 0x432

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x36d84cb5

    if-eq v3, v13, :cond_432

    add-int/lit8 v1, v1, 0x1

    goto :goto_432

    :cond_432
    const/16 v1, 0x2a

    :goto_433
    const/16 v3, 0x40

    if-ge v1, v3, :cond_433

    const/16 v3, 0x433

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6c459a31

    if-eq v3, v13, :cond_433

    add-int/lit8 v1, v1, 0x1

    goto :goto_433

    :cond_433
    const/16 v1, -0x6f

    :goto_434
    const/16 v3, -0x68

    if-ge v1, v3, :cond_434

    const/16 v3, 0x434

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2bde3594

    if-eq v3, v13, :cond_434

    add-int/lit8 v1, v1, 0x1

    goto :goto_434

    :cond_434
    const/16 v1, -0x2d

    :goto_435
    const/16 v3, -0x24

    if-ge v1, v3, :cond_435

    const/16 v3, 0x435

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6541eeeb

    if-eq v3, v13, :cond_435

    add-int/lit8 v1, v1, 0x1

    goto :goto_435

    :cond_435
    const/16 v1, -0x37

    :goto_436
    const/16 v3, -0x27

    if-ge v1, v3, :cond_436

    const/16 v3, 0x436

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2db6a00f

    if-eq v3, v13, :cond_436

    add-int/lit8 v1, v1, 0x1

    goto :goto_436

    :cond_436
    const/16 v1, 0x6f

    :goto_437
    if-ge v1, v5, :cond_437

    const/16 v3, 0x437

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4e0c9c3

    if-eq v3, v13, :cond_437

    add-int/lit8 v1, v1, 0x1

    goto :goto_437

    :cond_437
    const/16 v1, -0x2c

    :goto_438
    const/16 v3, -0x21

    if-ge v1, v3, :cond_438

    const/16 v3, 0x438

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2ebdcaf4

    if-eq v3, v13, :cond_438

    add-int/lit8 v1, v1, 0x1

    goto :goto_438

    :cond_438
    const/4 v1, -0x3

    :goto_439
    const/16 v3, 0xc

    if-ge v1, v3, :cond_439

    const/16 v3, 0x439

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x33865c1c    # -6.544168E7f

    if-eq v3, v13, :cond_439

    add-int/lit8 v1, v1, 0x1

    goto :goto_439

    :cond_439
    const/16 v1, -0x61

    :goto_43a
    const/16 v3, -0x55

    if-ge v1, v3, :cond_43a

    const/16 v3, 0x43a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x14d3cdc3

    if-eq v3, v13, :cond_43a

    add-int/lit8 v1, v1, 0x1

    goto :goto_43a

    :cond_43a
    const/16 v1, -0x6b

    :goto_43b
    const/16 v3, -0x5e

    if-ge v1, v3, :cond_43b

    const/16 v3, 0x43b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7aa1645b

    if-eq v3, v13, :cond_43b

    add-int/lit8 v1, v1, 0x1

    goto :goto_43b

    :cond_43b
    const/16 v1, -0x7b

    :goto_43c
    const/16 v3, -0x72

    if-ge v1, v3, :cond_43c

    const/16 v3, 0x43c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x496a4ca6    # 959690.4f

    if-eq v3, v13, :cond_43c

    add-int/lit8 v1, v1, 0x1

    goto :goto_43c

    :cond_43c
    const/16 v1, 0xb

    :goto_43d
    const/16 v3, 0x15

    if-ge v1, v3, :cond_43d

    const/16 v3, 0x43d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3c89422e

    if-eq v3, v13, :cond_43d

    add-int/lit8 v1, v1, 0x1

    goto :goto_43d

    :cond_43d
    const/16 v1, -0x33

    :goto_43e
    const/16 v3, -0x19

    if-ge v1, v3, :cond_43e

    const/16 v3, 0x43e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x510ab52d

    if-eq v3, v13, :cond_43e

    add-int/lit8 v1, v1, 0x1

    goto :goto_43e

    :cond_43e
    const/16 v1, 0x3c

    :goto_43f
    const/16 v3, 0x44

    if-ge v1, v3, :cond_43f

    const/16 v3, 0x43f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6d88671e

    if-eq v3, v13, :cond_43f

    add-int/lit8 v1, v1, 0x1

    goto :goto_43f

    :cond_43f
    move v1, v7

    :goto_440
    const/4 v3, -0x7

    if-ge v1, v3, :cond_440

    const/16 v3, 0x440

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1e2e4b70

    if-eq v3, v13, :cond_440

    add-int/lit8 v1, v1, 0x1

    goto :goto_440

    :cond_440
    const/16 v1, -0x64

    :goto_441
    const/16 v3, -0x51

    if-ge v1, v3, :cond_441

    const/16 v3, 0x441

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2f095daa

    if-eq v3, v13, :cond_441

    add-int/lit8 v1, v1, 0x1

    goto :goto_441

    :cond_441
    const/16 v1, -0x6f

    :goto_442
    const/16 v3, -0x65

    if-ge v1, v3, :cond_442

    const/16 v3, 0x442

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x120066b7

    if-eq v3, v13, :cond_442

    add-int/lit8 v1, v1, 0x1

    goto :goto_442

    :cond_442
    const/16 v1, -0x25

    :goto_443
    const/16 v3, -0x10

    if-ge v1, v3, :cond_443

    const/16 v3, 0x443

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5f50b1ff

    if-eq v3, v13, :cond_443

    add-int/lit8 v1, v1, 0x1

    goto :goto_443

    :cond_443
    const/16 v1, 0x2a

    :goto_444
    const/16 v3, 0x41

    if-ge v1, v3, :cond_444

    const/16 v3, 0x444

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2bcbd9c5

    if-eq v3, v13, :cond_444

    add-int/lit8 v1, v1, 0x1

    goto :goto_444

    :cond_444
    const/16 v1, 0x79

    :goto_445
    if-ge v1, v5, :cond_445

    const/16 v3, 0x445

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x455e2376

    if-eq v3, v13, :cond_445

    add-int/lit8 v1, v1, 0x1

    goto :goto_445

    :cond_445
    const/16 v1, 0x5f

    :goto_446
    const/16 v3, 0x77

    if-ge v1, v3, :cond_446

    const/16 v3, 0x446

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6039f429

    if-eq v3, v13, :cond_446

    add-int/lit8 v1, v1, 0x1

    goto :goto_446

    :cond_446
    const/16 v1, -0x17

    :goto_447
    const/16 v3, -0xc

    if-ge v1, v3, :cond_447

    const/16 v3, 0x447

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3af0c51

    if-eq v3, v13, :cond_447

    add-int/lit8 v1, v1, 0x1

    goto :goto_447

    :cond_447
    const/4 v1, 0x3

    :goto_448
    const/16 v3, 0xc

    if-ge v1, v3, :cond_448

    const/16 v3, 0x448

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x451c171a

    if-eq v3, v13, :cond_448

    add-int/lit8 v1, v1, 0x1

    goto :goto_448

    :cond_448
    const/16 v1, 0x13

    :goto_449
    const/16 v3, 0x28

    if-ge v1, v3, :cond_449

    const/16 v3, 0x449

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xe70d383

    if-eq v3, v13, :cond_449

    add-int/lit8 v1, v1, 0x1

    goto :goto_449

    :cond_449
    move v1, v6

    :goto_44a
    const/16 v3, 0x66

    if-ge v1, v3, :cond_44a

    const/16 v3, 0x44a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x222dd1cb

    if-eq v3, v13, :cond_44a

    add-int/lit8 v1, v1, 0x1

    goto :goto_44a

    :cond_44a
    const/16 v1, 0x44

    :goto_44b
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_44b

    const/16 v3, 0x44b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43f4b828

    if-eq v3, v13, :cond_44b

    add-int/lit8 v1, v1, 0x1

    goto :goto_44b

    :cond_44b
    const/16 v1, -0x42

    :goto_44c
    const/16 v3, -0x30

    if-ge v1, v3, :cond_44c

    const/16 v3, 0x44c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x43fb822a

    if-eq v3, v13, :cond_44c

    add-int/lit8 v1, v1, 0x1

    goto :goto_44c

    :cond_44c
    const/16 v1, 0x56

    :goto_44d
    const/16 v3, 0x71

    if-ge v1, v3, :cond_44d

    const/16 v3, 0x44d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x96feaa6

    if-eq v3, v13, :cond_44d

    add-int/lit8 v1, v1, 0x1

    goto :goto_44d

    :cond_44d
    const/16 v1, 0x65

    :goto_44e
    const/16 v3, 0x78

    if-ge v1, v3, :cond_44e

    const/16 v3, 0x44e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x21b7ae56

    if-eq v3, v13, :cond_44e

    add-int/lit8 v1, v1, 0x1

    goto :goto_44e

    :cond_44e
    const/16 v3, -0x41

    :goto_44f
    const/16 v1, -0x2b

    if-ge v3, v1, :cond_44f

    const/16 v1, 0x44f

    int-to-byte v13, v3

    aput-byte v13, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v13, -0x6329d5d7

    if-eq v1, v13, :cond_44f

    add-int/lit8 v3, v3, 0x1

    goto :goto_44f

    :cond_44f
    const/16 v1, -0x6a

    :goto_450
    const/16 v3, -0x54

    if-ge v1, v3, :cond_450

    const/16 v3, 0x450

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x39202b5

    if-eq v3, v13, :cond_450

    add-int/lit8 v1, v1, 0x1

    goto :goto_450

    :cond_450
    const/16 v1, -0x76

    :goto_451
    const/16 v3, -0x67

    if-ge v1, v3, :cond_451

    const/16 v3, 0x451

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4950e2e4    # 855598.25f

    if-eq v3, v13, :cond_451

    add-int/lit8 v1, v1, 0x1

    goto :goto_451

    :cond_451
    move v1, v9

    :goto_452
    const/16 v3, -0x24

    if-ge v1, v3, :cond_452

    const/16 v3, 0x452

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x47a4eed3

    if-eq v3, v13, :cond_452

    add-int/lit8 v1, v1, 0x1

    goto :goto_452

    :cond_452
    const/16 v1, 0x7a

    :goto_453
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_453

    const/16 v3, 0x453

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x79e3e5e7

    if-eq v3, v13, :cond_453

    add-int/lit8 v1, v1, 0x1

    goto :goto_453

    :cond_453
    const/16 v1, -0x5f

    :goto_454
    const/16 v3, -0x49

    if-ge v1, v3, :cond_454

    const/16 v3, 0x454

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1b3b7991

    if-eq v3, v13, :cond_454

    add-int/lit8 v1, v1, 0x1

    goto :goto_454

    :cond_454
    const/16 v1, -0x60

    :goto_455
    const/16 v3, -0x5a

    if-ge v1, v3, :cond_455

    const/16 v3, 0x455

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3d115143

    if-eq v3, v13, :cond_455

    add-int/lit8 v1, v1, 0x1

    goto :goto_455

    :cond_455
    const/16 v3, -0x41

    :goto_456
    const/16 v1, -0x29

    if-ge v3, v1, :cond_456

    const/16 v1, 0x456

    int-to-byte v13, v3

    aput-byte v13, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v13, -0x22ee5d99

    if-eq v1, v13, :cond_456

    add-int/lit8 v3, v3, 0x1

    goto :goto_456

    :cond_456
    const/16 v1, -0x66

    :goto_457
    const/16 v3, -0x4d

    if-ge v1, v3, :cond_457

    const/16 v3, 0x457

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5e764c05

    if-eq v3, v13, :cond_457

    add-int/lit8 v1, v1, 0x1

    goto :goto_457

    :cond_457
    const/16 v1, 0x35

    :goto_458
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_458

    const/16 v3, 0x458

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3566fe74    # -5013702.0f

    if-eq v3, v13, :cond_458

    add-int/lit8 v1, v1, 0x1

    goto :goto_458

    :cond_458
    const/16 v1, -0x80

    :goto_459
    const/16 v3, -0x72

    if-ge v1, v3, :cond_459

    const/16 v3, 0x459

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6cfd01d3

    if-eq v3, v13, :cond_459

    add-int/lit8 v1, v1, 0x1

    goto :goto_459

    :cond_459
    const/16 v1, -0x43

    :goto_45a
    const/16 v3, -0x37

    if-ge v1, v3, :cond_45a

    const/16 v3, 0x45a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x50ea412c

    if-eq v3, v13, :cond_45a

    add-int/lit8 v1, v1, 0x1

    goto :goto_45a

    :cond_45a
    const/16 v1, -0x25

    :goto_45b
    const/4 v3, -0x8

    if-ge v1, v3, :cond_45b

    const/16 v3, 0x45b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xf7d7da4

    if-eq v3, v13, :cond_45b

    add-int/lit8 v1, v1, 0x1

    goto :goto_45b

    :cond_45b
    const/16 v1, 0x64

    :goto_45c
    const/16 v3, 0x71

    if-ge v1, v3, :cond_45c

    const/16 v3, 0x45c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x151494c

    if-eq v3, v13, :cond_45c

    add-int/lit8 v1, v1, 0x1

    goto :goto_45c

    :cond_45c
    const/16 v1, 0x67

    :goto_45d
    const/16 v3, 0x70

    if-ge v1, v3, :cond_45d

    const/16 v3, 0x45d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x458049ea

    if-eq v3, v13, :cond_45d

    add-int/lit8 v1, v1, 0x1

    goto :goto_45d

    :cond_45d
    const/16 v1, -0x3e

    :goto_45e
    const/16 v3, -0x32

    if-ge v1, v3, :cond_45e

    const/16 v3, 0x45e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x547f5ef6

    if-eq v3, v13, :cond_45e

    add-int/lit8 v1, v1, 0x1

    goto :goto_45e

    :cond_45e
    const/4 v1, 0x5

    :goto_45f
    const/16 v3, 0xf

    if-ge v1, v3, :cond_45f

    const/16 v3, 0x45f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x47ae715a

    if-eq v3, v13, :cond_45f

    add-int/lit8 v1, v1, 0x1

    goto :goto_45f

    :cond_45f
    const/16 v1, -0x56

    :goto_460
    const/16 v3, -0x46

    if-ge v1, v3, :cond_460

    const/16 v3, 0x460

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xfd5bfe3

    if-eq v3, v13, :cond_460

    add-int/lit8 v1, v1, 0x1

    goto :goto_460

    :cond_460
    const/16 v1, 0x31

    :goto_461
    if-ge v1, v6, :cond_461

    const/16 v3, 0x461

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4bdf85ba    # 2.9297524E7f

    if-eq v3, v13, :cond_461

    add-int/lit8 v1, v1, 0x1

    goto :goto_461

    :cond_461
    const/16 v1, 0x39

    :goto_462
    const/16 v3, 0x41

    if-ge v1, v3, :cond_462

    const/16 v3, 0x462

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x599ea8a3

    if-eq v3, v13, :cond_462

    add-int/lit8 v1, v1, 0x1

    goto :goto_462

    :cond_462
    const/4 v1, -0x8

    :goto_463
    const/16 v3, 0x10

    if-ge v1, v3, :cond_463

    const/16 v3, 0x463

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x70ab6655

    if-eq v3, v13, :cond_463

    add-int/lit8 v1, v1, 0x1

    goto :goto_463

    :cond_463
    const/16 v1, -0x44

    :goto_464
    const/16 v3, -0x34

    if-ge v1, v3, :cond_464

    const/16 v3, 0x464

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x605df8cc

    if-eq v3, v13, :cond_464

    add-int/lit8 v1, v1, 0x1

    goto :goto_464

    :cond_464
    const/16 v1, -0x73

    :goto_465
    const/16 v3, -0x61

    if-ge v1, v3, :cond_465

    const/16 v3, 0x465

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xa56403b

    if-eq v3, v13, :cond_465

    add-int/lit8 v1, v1, 0x1

    goto :goto_465

    :cond_465
    move v1, v10

    :goto_466
    const/4 v3, -0x8

    if-ge v1, v3, :cond_466

    const/16 v3, 0x466

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2c9e13b0

    if-eq v3, v13, :cond_466

    add-int/lit8 v1, v1, 0x1

    goto :goto_466

    :cond_466
    const/16 v1, -0x7f

    :goto_467
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_467

    const/16 v3, 0x467

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45fcf3eb

    if-eq v3, v13, :cond_467

    add-int/lit8 v1, v1, 0x1

    goto :goto_467

    :cond_467
    const/16 v1, 0x18

    :goto_468
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_468

    const/16 v3, 0x468

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5b5e4e37

    if-eq v3, v13, :cond_468

    add-int/lit8 v1, v1, 0x1

    goto :goto_468

    :cond_468
    const/4 v1, -0x5

    :goto_469
    const/16 v3, 0xc

    if-ge v1, v3, :cond_469

    const/16 v3, 0x469

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3dd8d831

    if-eq v3, v13, :cond_469

    add-int/lit8 v1, v1, 0x1

    goto :goto_469

    :cond_469
    const/16 v1, -0x80

    :goto_46a
    const/16 v3, -0x75

    if-ge v1, v3, :cond_46a

    const/16 v3, 0x46a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3b92eb6f

    if-eq v3, v13, :cond_46a

    add-int/lit8 v1, v1, 0x1

    goto :goto_46a

    :cond_46a
    const/16 v1, -0x57

    :goto_46b
    const/16 v3, -0x3f

    if-ge v1, v3, :cond_46b

    const/16 v3, 0x46b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x45e0b2e2

    if-eq v3, v13, :cond_46b

    add-int/lit8 v1, v1, 0x1

    goto :goto_46b

    :cond_46b
    move v1, v6

    :goto_46c
    const/16 v3, 0x59

    if-ge v1, v3, :cond_46c

    const/16 v3, 0x46c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x62bff5bc

    if-eq v3, v13, :cond_46c

    add-int/lit8 v1, v1, 0x1

    goto :goto_46c

    :cond_46c
    const/4 v1, -0x2

    :goto_46d
    const/16 v3, 0x17

    if-ge v1, v3, :cond_46d

    const/16 v3, 0x46d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1b45945b

    if-eq v3, v13, :cond_46d

    add-int/lit8 v1, v1, 0x1

    goto :goto_46d

    :cond_46d
    const/16 v1, 0x15

    :goto_46e
    const/16 v3, 0x28

    if-ge v1, v3, :cond_46e

    const/16 v3, 0x46e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x26662c61

    if-eq v3, v13, :cond_46e

    add-int/lit8 v1, v1, 0x1

    goto :goto_46e

    :cond_46e
    const/16 v1, 0x59

    :goto_46f
    const/16 v3, 0x68

    if-ge v1, v3, :cond_46f

    const/16 v3, 0x46f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2e95a8b9

    if-eq v3, v13, :cond_46f

    add-int/lit8 v1, v1, 0x1

    goto :goto_46f

    :cond_46f
    const/16 v1, 0x26

    :goto_470
    const/16 v3, 0x2b

    if-ge v1, v3, :cond_470

    const/16 v3, 0x470

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4e39018c    # 7.7597158E8f

    if-eq v3, v13, :cond_470

    add-int/lit8 v1, v1, 0x1

    goto :goto_470

    :cond_470
    const/16 v1, 0x3b

    :goto_471
    const/16 v3, 0x51

    if-ge v1, v3, :cond_471

    const/16 v3, 0x471

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xdbd0bbf

    if-eq v3, v13, :cond_471

    add-int/lit8 v1, v1, 0x1

    goto :goto_471

    :cond_471
    const/16 v1, -0x30

    :goto_472
    const/16 v3, -0x1d

    if-ge v1, v3, :cond_472

    const/16 v3, 0x472

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x126c1acb

    if-eq v3, v13, :cond_472

    add-int/lit8 v1, v1, 0x1

    goto :goto_472

    :cond_472
    const/16 v1, 0x55

    :goto_473
    const/16 v3, 0x6d

    if-ge v1, v3, :cond_473

    const/16 v3, 0x473

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x33ceac47    # -4.648522E7f

    if-eq v3, v13, :cond_473

    add-int/lit8 v1, v1, 0x1

    goto :goto_473

    :cond_473
    const/16 v1, -0x2c

    :goto_474
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_474

    const/16 v3, 0x474

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x61e5721f

    if-eq v3, v13, :cond_474

    add-int/lit8 v1, v1, 0x1

    goto :goto_474

    :cond_474
    const/4 v1, 0x2

    :goto_475
    const/16 v3, 0xb

    if-ge v1, v3, :cond_475

    const/16 v3, 0x475

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x34493c53    # -2.395529E7f

    if-eq v3, v13, :cond_475

    add-int/lit8 v1, v1, 0x1

    goto :goto_475

    :cond_475
    const/4 v1, 0x6

    :goto_476
    const/16 v3, 0x19

    if-ge v1, v3, :cond_476

    const/16 v3, 0x476

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ca96d4e

    if-eq v3, v13, :cond_476

    add-int/lit8 v1, v1, 0x1

    goto :goto_476

    :cond_476
    const/16 v1, 0x9

    :goto_477
    const/16 v3, 0x26

    if-ge v1, v3, :cond_477

    const/16 v3, 0x477

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1bdcd905

    if-eq v3, v13, :cond_477

    add-int/lit8 v1, v1, 0x1

    goto :goto_477

    :cond_477
    const/16 v1, 0x10

    :goto_478
    const/16 v3, 0x20

    if-ge v1, v3, :cond_478

    const/16 v3, 0x478

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x524544b2

    if-eq v3, v13, :cond_478

    add-int/lit8 v1, v1, 0x1

    goto :goto_478

    :cond_478
    const/16 v1, 0x75

    :goto_479
    if-ge v1, v5, :cond_479

    const/16 v3, 0x479

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x46f959f9

    if-eq v3, v13, :cond_479

    add-int/lit8 v1, v1, 0x1

    goto :goto_479

    :cond_479
    move v1, v12

    :goto_47a
    const/16 v3, 0x45

    if-ge v1, v3, :cond_47a

    const/16 v3, 0x47a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5a47fd50

    if-eq v3, v13, :cond_47a

    add-int/lit8 v1, v1, 0x1

    goto :goto_47a

    :cond_47a
    const/16 v1, -0x54

    :goto_47b
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_47b

    const/16 v3, 0x47b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2ef41568

    if-eq v3, v13, :cond_47b

    add-int/lit8 v1, v1, 0x1

    goto :goto_47b

    :cond_47b
    move v1, v9

    :goto_47c
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_47c

    const/16 v3, 0x47c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1786e5ed

    if-eq v3, v13, :cond_47c

    add-int/lit8 v1, v1, 0x1

    goto :goto_47c

    :cond_47c
    const/16 v1, -0x61

    :goto_47d
    const/16 v3, -0x50

    if-ge v1, v3, :cond_47d

    const/16 v3, 0x47d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1b9abcaf

    if-eq v3, v13, :cond_47d

    add-int/lit8 v1, v1, 0x1

    goto :goto_47d

    :cond_47d
    const/16 v1, 0x68

    :goto_47e
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_47e

    const/16 v3, 0x47e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5d5ebb74

    if-eq v3, v13, :cond_47e

    add-int/lit8 v1, v1, 0x1

    goto :goto_47e

    :cond_47e
    const/16 v1, -0x68

    :goto_47f
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_47f

    const/16 v3, 0x47f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x20ca9d2a

    if-eq v3, v13, :cond_47f

    add-int/lit8 v1, v1, 0x1

    goto :goto_47f

    :cond_47f
    const/16 v1, 0x60

    :goto_480
    const/16 v3, 0x78

    if-ge v1, v3, :cond_480

    const/16 v3, 0x480

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5946ca77

    if-eq v3, v13, :cond_480

    add-int/lit8 v1, v1, 0x1

    goto :goto_480

    :cond_480
    const/4 v1, 0x5

    :goto_481
    const/16 v3, 0x17

    if-ge v1, v3, :cond_481

    const/16 v3, 0x481

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1786090a

    if-eq v3, v13, :cond_481

    add-int/lit8 v1, v1, 0x1

    goto :goto_481

    :cond_481
    move v1, v14

    :goto_482
    const/16 v3, 0x71

    if-ge v1, v3, :cond_482

    const/16 v3, 0x482

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6ccac511

    if-eq v3, v13, :cond_482

    add-int/lit8 v1, v1, 0x1

    goto :goto_482

    :cond_482
    const/16 v1, 0x31

    :goto_483
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_483

    const/16 v3, 0x483

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x38c0e33

    if-eq v3, v13, :cond_483

    add-int/lit8 v1, v1, 0x1

    goto :goto_483

    :cond_483
    const/16 v1, -0x5f

    :goto_484
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_484

    const/16 v3, 0x484

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x303d7198

    if-eq v3, v13, :cond_484

    add-int/lit8 v1, v1, 0x1

    goto :goto_484

    :cond_484
    const/16 v1, -0x22

    :goto_485
    const/16 v3, -0xb

    if-ge v1, v3, :cond_485

    const/16 v3, 0x485

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x40bb2430

    if-eq v3, v13, :cond_485

    add-int/lit8 v1, v1, 0x1

    goto :goto_485

    :cond_485
    const/16 v1, 0x4f

    :goto_486
    const/16 v3, 0x65

    if-ge v1, v3, :cond_486

    const/16 v3, 0x486

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4712c6e

    if-eq v3, v13, :cond_486

    add-int/lit8 v1, v1, 0x1

    goto :goto_486

    :cond_486
    const/16 v1, -0x42

    :goto_487
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_487

    const/16 v3, 0x487

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2f61c66d

    if-eq v3, v13, :cond_487

    add-int/lit8 v1, v1, 0x1

    goto :goto_487

    :cond_487
    const/16 v1, -0x74

    :goto_488
    const/16 v3, -0x62

    if-ge v1, v3, :cond_488

    const/16 v3, 0x488

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6f8549cf

    if-eq v3, v13, :cond_488

    add-int/lit8 v1, v1, 0x1

    goto :goto_488

    :cond_488
    const/16 v1, -0x43

    :goto_489
    const/16 v3, -0x3f

    if-ge v1, v3, :cond_489

    const/16 v3, 0x489

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x40b82b30

    if-eq v3, v13, :cond_489

    add-int/lit8 v1, v1, 0x1

    goto :goto_489

    :cond_489
    const/16 v1, -0x5c

    :goto_48a
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_48a

    const/16 v3, 0x48a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6870609a

    if-eq v3, v13, :cond_48a

    add-int/lit8 v1, v1, 0x1

    goto :goto_48a

    :cond_48a
    const/16 v1, -0x80

    :goto_48b
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_48b

    const/16 v3, 0x48b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xf97a0ab

    if-eq v3, v13, :cond_48b

    add-int/lit8 v1, v1, 0x1

    goto :goto_48b

    :cond_48b
    const/16 v1, 0x47

    :goto_48c
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_48c

    const/16 v3, 0x48c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x37e4c2f9

    if-eq v3, v13, :cond_48c

    add-int/lit8 v1, v1, 0x1

    goto :goto_48c

    :cond_48c
    const/16 v1, 0x4f

    :goto_48d
    const/16 v3, 0x5f

    if-ge v1, v3, :cond_48d

    const/16 v3, 0x48d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2a4a71b7

    if-eq v3, v13, :cond_48d

    add-int/lit8 v1, v1, 0x1

    goto :goto_48d

    :cond_48d
    const/16 v1, -0x39

    :goto_48e
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_48e

    const/16 v3, 0x48e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x893775e

    if-eq v3, v13, :cond_48e

    add-int/lit8 v1, v1, 0x1

    goto :goto_48e

    :cond_48e
    move v1, v6

    :goto_48f
    if-ge v1, v14, :cond_48f

    const/16 v3, 0x48f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x341b1566

    if-eq v3, v13, :cond_48f

    add-int/lit8 v1, v1, 0x1

    goto :goto_48f

    :cond_48f
    const/16 v1, -0x5a

    :goto_490
    const/16 v3, -0x54

    if-ge v1, v3, :cond_490

    const/16 v3, 0x490

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x190705e

    if-eq v3, v13, :cond_490

    add-int/lit8 v1, v1, 0x1

    goto :goto_490

    :cond_490
    const/16 v1, -0xf

    :goto_491
    const/4 v3, -0x2

    if-ge v1, v3, :cond_491

    const/16 v3, 0x491

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x512d64be

    if-eq v3, v13, :cond_491

    add-int/lit8 v1, v1, 0x1

    goto :goto_491

    :cond_491
    const/16 v1, -0x9

    :goto_492
    const/16 v3, 0x12

    if-ge v1, v3, :cond_492

    const/16 v3, 0x492

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x598b7a24

    if-eq v3, v13, :cond_492

    add-int/lit8 v1, v1, 0x1

    goto :goto_492

    :cond_492
    const/16 v1, -0x18

    :goto_493
    const/4 v3, -0x7

    if-ge v1, v3, :cond_493

    const/16 v3, 0x493

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x67d52713

    if-eq v3, v13, :cond_493

    add-int/lit8 v1, v1, 0x1

    goto :goto_493

    :cond_493
    const/16 v1, -0x3d

    :goto_494
    const/16 v3, -0x2c

    if-ge v1, v3, :cond_494

    const/16 v3, 0x494

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x4ac53f4b    # 6463397.5f

    if-eq v3, v13, :cond_494

    add-int/lit8 v1, v1, 0x1

    goto :goto_494

    :cond_494
    const/16 v1, 0x6f

    :goto_495
    const/16 v3, 0x74

    if-ge v1, v3, :cond_495

    const/16 v3, 0x495

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x70f5881

    if-eq v3, v13, :cond_495

    add-int/lit8 v1, v1, 0x1

    goto :goto_495

    :cond_495
    const/16 v1, -0x36

    :goto_496
    const/16 v3, -0x33

    if-ge v1, v3, :cond_496

    const/16 v3, 0x496

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x60e99304

    if-eq v3, v13, :cond_496

    add-int/lit8 v1, v1, 0x1

    goto :goto_496

    :cond_496
    const/16 v1, -0x77

    :goto_497
    const/16 v3, -0x63

    if-ge v1, v3, :cond_497

    const/16 v3, 0x497

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x35375993

    if-eq v3, v13, :cond_497

    add-int/lit8 v1, v1, 0x1

    goto :goto_497

    :cond_497
    const/16 v1, 0x1a

    :goto_498
    const/16 v3, 0x2c

    if-ge v1, v3, :cond_498

    const/16 v3, 0x498

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7a2a2b85

    if-eq v3, v13, :cond_498

    add-int/lit8 v1, v1, 0x1

    goto :goto_498

    :cond_498
    const/16 v1, 0x25

    :goto_499
    const/16 v3, 0x36

    if-ge v1, v3, :cond_499

    const/16 v3, 0x499

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x91d76d2

    if-eq v3, v13, :cond_499

    add-int/lit8 v1, v1, 0x1

    goto :goto_499

    :cond_499
    const/4 v1, 0x7

    :goto_49a
    const/16 v3, 0x18

    if-ge v1, v3, :cond_49a

    const/16 v3, 0x49a

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x2427054

    if-eq v3, v13, :cond_49a

    add-int/lit8 v1, v1, 0x1

    goto :goto_49a

    :cond_49a
    move v1, v8

    :goto_49b
    const/16 v3, 0x43

    if-ge v1, v3, :cond_49b

    const/16 v3, 0x49b

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xd559c0

    if-eq v3, v13, :cond_49b

    add-int/lit8 v1, v1, 0x1

    goto :goto_49b

    :cond_49b
    const/16 v1, 0x1d

    :goto_49c
    const/16 v3, 0x23

    if-ge v1, v3, :cond_49c

    const/16 v3, 0x49c

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x79dc9eb0

    if-eq v3, v13, :cond_49c

    add-int/lit8 v1, v1, 0x1

    goto :goto_49c

    :cond_49c
    const/16 v1, -0x1a

    :goto_49d
    const/16 v3, -0xa

    if-ge v1, v3, :cond_49d

    const/16 v3, 0x49d

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x3b591024

    if-eq v3, v13, :cond_49d

    add-int/lit8 v1, v1, 0x1

    goto :goto_49d

    :cond_49d
    const/16 v1, 0x56

    :goto_49e
    const/16 v3, 0x66

    if-ge v1, v3, :cond_49e

    const/16 v3, 0x49e

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x402892e

    if-eq v3, v13, :cond_49e

    add-int/lit8 v1, v1, 0x1

    goto :goto_49e

    :cond_49e
    const/4 v1, 0x0

    :goto_49f
    const/16 v3, 0x12

    if-ge v1, v3, :cond_49f

    const/16 v3, 0x49f

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x53317a39

    if-eq v3, v13, :cond_49f

    add-int/lit8 v1, v1, 0x1

    goto :goto_49f

    :cond_49f
    const/16 v1, -0x17

    :goto_4a0
    const/4 v3, -0x2

    if-ge v1, v3, :cond_4a0

    const/16 v3, 0x4a0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7cb89eea

    if-eq v3, v13, :cond_4a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a0

    :cond_4a0
    const/16 v1, -0x1c

    :goto_4a1
    const/16 v3, -0xb

    if-ge v1, v3, :cond_4a1

    const/16 v3, 0x4a1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4836e50e

    if-eq v3, v13, :cond_4a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a1

    :cond_4a1
    const/16 v1, 0x25

    :goto_4a2
    const/16 v3, 0x31

    if-ge v1, v3, :cond_4a2

    const/16 v3, 0x4a2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0xbea2244

    if-eq v3, v13, :cond_4a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a2

    :cond_4a2
    const/16 v1, 0x4f

    :goto_4a3
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_4a3

    const/16 v3, 0x4a3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7c862982

    if-eq v3, v13, :cond_4a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a3

    :cond_4a3
    const/16 v1, 0x58

    :goto_4a4
    const/16 v3, 0x75

    if-ge v1, v3, :cond_4a4

    const/16 v3, 0x4a4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x28799ead

    if-eq v3, v13, :cond_4a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a4

    :cond_4a4
    const/16 v1, 0x62

    :goto_4a5
    const/16 v3, 0x74

    if-ge v1, v3, :cond_4a5

    const/16 v3, 0x4a5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6099e969

    if-eq v3, v13, :cond_4a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a5

    :cond_4a5
    const/16 v1, -0x2e

    :goto_4a6
    const/16 v3, -0x27

    if-ge v1, v3, :cond_4a6

    const/16 v3, 0x4a6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x1a96275d

    if-eq v3, v13, :cond_4a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a6

    :cond_4a6
    const/16 v1, 0x68

    :goto_4a7
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_4a7

    const/16 v3, 0x4a7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x3ff8c19c

    if-eq v3, v13, :cond_4a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a7

    :cond_4a7
    move v1, v12

    :goto_4a8
    const/16 v3, 0x4b

    if-ge v1, v3, :cond_4a8

    const/16 v3, 0x4a8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x47f6d8df

    if-eq v3, v13, :cond_4a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a8

    :cond_4a8
    const/16 v1, -0x80

    :goto_4a9
    const/16 v3, -0x78

    if-ge v1, v3, :cond_4a9

    const/16 v3, 0x4a9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7b6d4692

    if-eq v3, v13, :cond_4a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a9

    :cond_4a9
    const/16 v1, -0x40

    :goto_4aa
    const/16 v3, -0x27

    if-ge v1, v3, :cond_4aa

    const/16 v3, 0x4aa

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x78d4a4a

    if-eq v3, v13, :cond_4aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_4aa

    :cond_4aa
    const/16 v1, 0x18

    :goto_4ab
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_4ab

    const/16 v3, 0x4ab

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7ce32bf3

    if-eq v3, v13, :cond_4ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ab

    :cond_4ab
    const/16 v1, -0x76

    :goto_4ac
    const/16 v3, -0x62

    if-ge v1, v3, :cond_4ac

    const/16 v3, 0x4ac

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5fab211d

    if-eq v3, v13, :cond_4ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ac

    :cond_4ac
    const/16 v1, 0x58

    :goto_4ad
    const/16 v3, 0x64

    if-ge v1, v3, :cond_4ad

    const/16 v3, 0x4ad

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x16cf7234

    if-eq v3, v13, :cond_4ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ad

    :cond_4ad
    move v1, v14

    :goto_4ae
    const/16 v3, 0x67

    if-ge v1, v3, :cond_4ae

    const/16 v3, 0x4ae

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6f4ac0d1

    if-eq v3, v13, :cond_4ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ae

    :cond_4ae
    const/16 v1, 0x68

    :goto_4af
    if-ge v1, v5, :cond_4af

    const/16 v3, 0x4af

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x6b4bceae

    if-eq v3, v13, :cond_4af

    add-int/lit8 v1, v1, 0x1

    goto :goto_4af

    :cond_4af
    const/16 v1, 0x68

    :goto_4b0
    if-ge v1, v5, :cond_4b0

    const/16 v3, 0x4b0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7bec9399

    if-eq v3, v13, :cond_4b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b0

    :cond_4b0
    const/16 v1, -0x6b

    :goto_4b1
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_4b1

    const/16 v3, 0x4b1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x67965b86

    if-eq v3, v13, :cond_4b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b1

    :cond_4b1
    const/16 v1, -0x1e

    :goto_4b2
    const/16 v3, -0xf

    if-ge v1, v3, :cond_4b2

    const/16 v3, 0x4b2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x73aa9221

    if-eq v3, v13, :cond_4b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b2

    :cond_4b2
    const/4 v1, -0x1

    :goto_4b3
    const/16 v3, 0x13

    if-ge v1, v3, :cond_4b3

    const/16 v3, 0x4b3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1f0b1940

    if-eq v3, v13, :cond_4b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b3

    :cond_4b3
    const/16 v1, -0x3e

    :goto_4b4
    const/16 v3, -0x36

    if-ge v1, v3, :cond_4b4

    const/16 v3, 0x4b4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x49f34ed0    # 1993178.0f

    if-eq v3, v13, :cond_4b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b4

    :cond_4b4
    move v1, v14

    :goto_4b5
    const/16 v3, 0x78

    if-ge v1, v3, :cond_4b5

    const/16 v3, 0x4b5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7bf3e5a1

    if-eq v3, v13, :cond_4b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b5

    :cond_4b5
    const/16 v1, -0x23

    :goto_4b6
    if-ge v1, v7, :cond_4b6

    const/16 v3, 0x4b6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5189e508

    if-eq v3, v13, :cond_4b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b6

    :cond_4b6
    const/16 v1, -0x4e

    :goto_4b7
    const/16 v3, -0x45

    if-ge v1, v3, :cond_4b7

    const/16 v3, 0x4b7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5c72263b

    if-eq v3, v13, :cond_4b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b7

    :cond_4b7
    const/16 v1, -0x80

    :goto_4b8
    const/16 v3, -0x69

    if-ge v1, v3, :cond_4b8

    const/16 v3, 0x4b8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xee71583

    if-eq v3, v13, :cond_4b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b8

    :cond_4b8
    const/16 v1, -0x6f

    :goto_4b9
    const/16 v3, -0x62

    if-ge v1, v3, :cond_4b9

    const/16 v3, 0x4b9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x13760029

    if-eq v3, v13, :cond_4b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b9

    :cond_4b9
    const/16 v1, -0x31

    const/16 v3, -0x41

    :goto_4ba
    if-ge v3, v1, :cond_4ba

    const/16 v1, 0x4ba

    int-to-byte v13, v3

    aput-byte v13, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v13, 0x58f93b2

    if-eq v1, v13, :cond_4ba

    add-int/lit8 v3, v3, 0x1

    const/16 v1, -0x31

    goto :goto_4ba

    :cond_4ba
    const/16 v1, 0x30

    :goto_4bb
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_4bb

    const/16 v3, 0x4bb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x7cb39d5b

    if-eq v3, v13, :cond_4bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_4bb

    :cond_4bb
    const/16 v1, -0x5a

    :goto_4bc
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_4bc

    const/16 v3, 0x4bc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0xbfb3b27

    if-eq v3, v13, :cond_4bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_4bc

    :cond_4bc
    const/16 v1, 0x4f

    :goto_4bd
    const/16 v3, 0x66

    if-ge v1, v3, :cond_4bd

    const/16 v3, 0x4bd

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x539c1a06

    if-eq v3, v13, :cond_4bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_4bd

    :cond_4bd
    const/16 v1, -0x20

    :goto_4be
    const/16 v3, -0xb

    if-ge v1, v3, :cond_4be

    const/16 v3, 0x4be

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x79fef793

    if-eq v3, v13, :cond_4be

    add-int/lit8 v1, v1, 0x1

    goto :goto_4be

    :cond_4be
    const/16 v1, -0x73

    :goto_4bf
    const/16 v3, -0x68

    if-ge v1, v3, :cond_4bf

    const/16 v3, 0x4bf

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x30fa998f

    if-eq v3, v13, :cond_4bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_4bf

    :cond_4bf
    const/16 v1, -0x77

    :goto_4c0
    const/16 v3, -0x65

    if-ge v1, v3, :cond_4c0

    const/16 v3, 0x4c0

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5885bca3

    if-eq v3, v13, :cond_4c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c0

    :cond_4c0
    const/16 v1, -0x4a

    :goto_4c1
    const/16 v3, -0x31

    if-ge v1, v3, :cond_4c1

    const/16 v3, 0x4c1

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x7e655df1

    if-eq v3, v13, :cond_4c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c1

    :cond_4c1
    const/16 v1, 0x71

    :goto_4c2
    if-ge v1, v5, :cond_4c2

    const/16 v3, 0x4c2

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x37687187

    if-eq v3, v13, :cond_4c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c2

    :cond_4c2
    const/16 v1, -0xf

    :goto_4c3
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4c3

    const/16 v3, 0x4c3

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1808b7c7

    if-eq v3, v13, :cond_4c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c3

    :cond_4c3
    const/16 v1, -0x80

    :goto_4c4
    const/16 v3, -0x74

    if-ge v1, v3, :cond_4c4

    const/16 v3, 0x4c4

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x52bb31e1

    if-eq v3, v13, :cond_4c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c4

    :cond_4c4
    const/16 v1, -0x76

    :goto_4c5
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_4c5

    const/16 v3, 0x4c5

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x2ae41a9c

    if-eq v3, v13, :cond_4c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c5

    :cond_4c5
    const/16 v1, 0x6e

    :goto_4c6
    if-ge v1, v5, :cond_4c6

    const/16 v3, 0x4c6

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x6fa82ac0

    if-eq v3, v13, :cond_4c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c6

    :cond_4c6
    const/16 v1, -0x5b

    :goto_4c7
    const/16 v3, -0x4b

    if-ge v1, v3, :cond_4c7

    const/16 v3, 0x4c7

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x1bf53ecc

    if-eq v3, v13, :cond_4c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c7

    :cond_4c7
    const/16 v1, -0x15

    :goto_4c8
    const/4 v3, -0x8

    if-ge v1, v3, :cond_4c8

    const/16 v3, 0x4c8

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x5689f88

    if-eq v3, v13, :cond_4c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c8

    :cond_4c8
    const/16 v1, 0x17

    :goto_4c9
    const/16 v3, 0x24

    if-ge v1, v3, :cond_4c9

    const/16 v3, 0x4c9

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x4a387979

    if-eq v3, v13, :cond_4c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c9

    :cond_4c9
    const/16 v1, -0x6a

    :goto_4ca
    const/16 v3, -0x59

    if-ge v1, v3, :cond_4ca

    const/16 v3, 0x4ca

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x5fbec370

    if-eq v3, v13, :cond_4ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ca

    :cond_4ca
    const/16 v1, -0x48

    :goto_4cb
    const/16 v3, -0x38

    if-ge v1, v3, :cond_4cb

    const/16 v3, 0x4cb

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, 0x27564e3

    if-eq v3, v13, :cond_4cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_4cb

    :cond_4cb
    const/4 v1, 0x7

    :goto_4cc
    const/16 v3, 0x15

    if-ge v1, v3, :cond_4cc

    const/16 v3, 0x4cc

    int-to-byte v13, v1

    aput-byte v13, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v13, -0x103b3149

    if-eq v3, v13, :cond_4cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_4cc

    :cond_4cc
    :goto_4cd
    const/4 v1, 0x3

    if-ge v10, v1, :cond_4cd

    const/16 v1, 0x4cd

    int-to-byte v3, v10

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, -0x5b7897df

    if-eq v1, v3, :cond_4cd

    add-int/lit8 v10, v10, 0x1

    goto :goto_4cd

    :cond_4cd
    const/4 v1, -0x8

    :goto_4ce
    const/16 v3, 0xb

    if-ge v1, v3, :cond_4ce

    const/16 v3, 0x4ce

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x21d96c90

    if-eq v3, v10, :cond_4ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ce

    :cond_4ce
    const/16 v1, -0x46

    :goto_4cf
    const/16 v3, -0x30

    if-ge v1, v3, :cond_4cf

    const/16 v3, 0x4cf

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6496a423

    if-eq v3, v10, :cond_4cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_4cf

    :cond_4cf
    const/16 v1, -0x26

    :goto_4d0
    const/16 v3, -0x17

    if-ge v1, v3, :cond_4d0

    const/16 v3, 0x4d0

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3a2dafa0

    if-eq v3, v10, :cond_4d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d0

    :cond_4d0
    const/16 v1, -0x45

    :goto_4d1
    const/16 v3, -0x40

    if-ge v1, v3, :cond_4d1

    const/16 v3, 0x4d1

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7d0ee85e

    if-eq v3, v10, :cond_4d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d1

    :cond_4d1
    const/16 v1, 0x67

    :goto_4d2
    if-ge v1, v5, :cond_4d2

    const/16 v3, 0x4d2

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x161af67

    if-eq v3, v10, :cond_4d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d2

    :cond_4d2
    const/16 v1, 0x6f

    :goto_4d3
    if-ge v1, v5, :cond_4d3

    const/16 v3, 0x4d3

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1d29b956

    if-eq v3, v10, :cond_4d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d3

    :cond_4d3
    const/16 v1, -0x48

    :goto_4d4
    const/16 v3, -0x32

    if-ge v1, v3, :cond_4d4

    const/16 v3, 0x4d4

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6c2bf0f7

    if-eq v3, v10, :cond_4d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d4

    :cond_4d4
    const/16 v1, -0x48

    :goto_4d5
    const/16 v3, -0x39

    if-ge v1, v3, :cond_4d5

    const/16 v3, 0x4d5

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6ee2a848

    if-eq v3, v10, :cond_4d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d5

    :cond_4d5
    const/16 v1, -0x73

    :goto_4d6
    const/16 v3, -0x6c

    if-ge v1, v3, :cond_4d6

    const/16 v3, 0x4d6

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x5843d0fa

    if-eq v3, v10, :cond_4d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d6

    :cond_4d6
    const/16 v1, -0x4b

    :goto_4d7
    const/16 v3, -0x43

    if-ge v1, v3, :cond_4d7

    const/16 v3, 0x4d7

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x32eeeb26

    if-eq v3, v10, :cond_4d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d7

    :cond_4d7
    const/16 v1, 0x43

    :goto_4d8
    const/16 v3, 0x53

    if-ge v1, v3, :cond_4d8

    const/16 v3, 0x4d8

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4f913422

    if-eq v3, v10, :cond_4d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d8

    :cond_4d8
    const/16 v1, 0x3a

    :goto_4d9
    const/16 v3, 0x59

    if-ge v1, v3, :cond_4d9

    const/16 v3, 0x4d9

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4fe9e41f

    if-eq v3, v10, :cond_4d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d9

    :cond_4d9
    const/16 v1, -0x50

    :goto_4da
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_4da

    const/16 v3, 0x4da

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x771ee1ef

    if-eq v3, v10, :cond_4da

    add-int/lit8 v1, v1, 0x1

    goto :goto_4da

    :cond_4da
    const/16 v1, 0x1a

    :goto_4db
    if-ge v1, v8, :cond_4db

    const/16 v3, 0x4db

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x402288ca

    if-eq v3, v10, :cond_4db

    add-int/lit8 v1, v1, 0x1

    goto :goto_4db

    :cond_4db
    const/16 v1, -0x80

    :goto_4dc
    const/16 v3, -0x77

    if-ge v1, v3, :cond_4dc

    const/16 v3, 0x4dc

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3a3d046c

    if-eq v3, v10, :cond_4dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_4dc

    :cond_4dc
    const/16 v1, 0x60

    :goto_4dd
    const/16 v3, 0x6c

    if-ge v1, v3, :cond_4dd

    const/16 v3, 0x4dd

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x76fa5bcf

    if-eq v3, v10, :cond_4dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_4dd

    :cond_4dd
    const/16 v1, 0x15

    :goto_4de
    const/16 v3, 0x29

    if-ge v1, v3, :cond_4de

    const/16 v3, 0x4de

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4d1fb874

    if-eq v3, v10, :cond_4de

    add-int/lit8 v1, v1, 0x1

    goto :goto_4de

    :cond_4de
    const/16 v1, -0x43

    :goto_4df
    const/16 v3, -0x37

    if-ge v1, v3, :cond_4df

    const/16 v3, 0x4df

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3cfd2337

    if-eq v3, v10, :cond_4df

    add-int/lit8 v1, v1, 0x1

    goto :goto_4df

    :cond_4df
    const/16 v1, -0x25

    :goto_4e0
    const/16 v3, -0x11

    if-ge v1, v3, :cond_4e0

    const/16 v3, 0x4e0

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x440d346f

    if-eq v3, v10, :cond_4e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e0

    :cond_4e0
    const/16 v1, 0xa

    :goto_4e1
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_4e1

    const/16 v3, 0x4e1

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6e040b95

    if-eq v3, v10, :cond_4e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e1

    :cond_4e1
    const/16 v1, -0x56

    :goto_4e2
    const/16 v3, -0x42

    if-ge v1, v3, :cond_4e2

    const/16 v3, 0x4e2

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x359a5d6d

    if-eq v3, v10, :cond_4e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e2

    :cond_4e2
    const/16 v1, -0x7d

    :goto_4e3
    const/16 v3, -0x73

    if-ge v1, v3, :cond_4e3

    const/16 v3, 0x4e3

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3fca869f

    if-eq v3, v10, :cond_4e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e3

    :cond_4e3
    const/16 v1, 0x14

    :goto_4e4
    const/16 v3, 0x18

    if-ge v1, v3, :cond_4e4

    const/16 v3, 0x4e4

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6267ccc4

    if-eq v3, v10, :cond_4e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e4

    :cond_4e4
    const/16 v1, 0xb

    :goto_4e5
    const/16 v3, 0x1c

    if-ge v1, v3, :cond_4e5

    const/16 v3, 0x4e5

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7fc97e2d

    if-eq v3, v10, :cond_4e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e5

    :cond_4e5
    const/16 v1, -0x64

    :goto_4e6
    const/16 v3, -0x5e

    if-ge v1, v3, :cond_4e6

    const/16 v3, 0x4e6

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x55f5a697

    if-eq v3, v10, :cond_4e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e6

    :cond_4e6
    const/16 v1, 0x2c

    :goto_4e7
    const/16 v3, 0x3c

    if-ge v1, v3, :cond_4e7

    const/16 v3, 0x4e7

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x59cb7b69

    if-eq v3, v10, :cond_4e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e7

    :cond_4e7
    move v1, v7

    :goto_4e8
    const/4 v3, -0x8

    if-ge v1, v3, :cond_4e8

    const/16 v3, 0x4e8

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x66d5feaa

    if-eq v3, v10, :cond_4e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e8

    :cond_4e8
    const/16 v1, 0x61

    :goto_4e9
    if-ge v1, v11, :cond_4e9

    const/16 v3, 0x4e9

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7e135d86

    if-eq v3, v10, :cond_4e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e9

    :cond_4e9
    const/16 v1, 0x68

    :goto_4ea
    const/16 v3, 0x78

    if-ge v1, v3, :cond_4ea

    const/16 v3, 0x4ea

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x251493ed

    if-eq v3, v10, :cond_4ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ea

    :cond_4ea
    const/16 v1, 0x9

    :goto_4eb
    const/16 v3, 0xe

    if-ge v1, v3, :cond_4eb

    const/16 v3, 0x4eb

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1317a203

    if-eq v3, v10, :cond_4eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_4eb

    :cond_4eb
    const/16 v1, 0x79

    :goto_4ec
    if-ge v1, v5, :cond_4ec

    const/16 v3, 0x4ec

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x33a90f00    # -5.63456E7f

    if-eq v3, v10, :cond_4ec

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ec

    :cond_4ec
    const/16 v1, -0x52

    :goto_4ed
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_4ed

    const/16 v3, 0x4ed

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x2b3881a3

    if-eq v3, v10, :cond_4ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ed

    :cond_4ed
    const/16 v1, 0x4e

    :goto_4ee
    const/16 v3, 0x59

    if-ge v1, v3, :cond_4ee

    const/16 v3, 0x4ee

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4d351923

    if-eq v3, v10, :cond_4ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ee

    :cond_4ee
    const/16 v1, -0x5c

    :goto_4ef
    const/16 v3, -0x40

    if-ge v1, v3, :cond_4ef

    const/16 v3, 0x4ef

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x41d1f94e

    if-eq v3, v10, :cond_4ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ef

    :cond_4ef
    const/16 v1, -0x36

    :goto_4f0
    const/16 v3, -0x1e

    if-ge v1, v3, :cond_4f0

    const/16 v3, 0x4f0

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x74a57b89

    if-eq v3, v10, :cond_4f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f0

    :cond_4f0
    const/16 v1, -0x7f

    :goto_4f1
    const/16 v3, -0x76

    if-ge v1, v3, :cond_4f1

    const/16 v3, 0x4f1

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1d97fabb

    if-eq v3, v10, :cond_4f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f1

    :cond_4f1
    const/16 v1, 0x70

    :goto_4f2
    if-ge v1, v5, :cond_4f2

    const/16 v3, 0x4f2

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x298369e1

    if-eq v3, v10, :cond_4f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f2

    :cond_4f2
    const/16 v1, 0x10

    :goto_4f3
    const/16 v3, 0x25

    if-ge v1, v3, :cond_4f3

    const/16 v3, 0x4f3

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x62d457c4

    if-eq v3, v10, :cond_4f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f3

    :cond_4f3
    const/16 v1, -0x59

    :goto_4f4
    const/16 v3, -0x4c

    if-ge v1, v3, :cond_4f4

    const/16 v3, 0x4f4

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x120e1eba

    if-eq v3, v10, :cond_4f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f4

    :cond_4f4
    const/16 v1, 0x60

    :goto_4f5
    const/16 v3, 0x74

    if-ge v1, v3, :cond_4f5

    const/16 v3, 0x4f5

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x74aead04

    if-eq v3, v10, :cond_4f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f5

    :cond_4f5
    const/16 v1, -0x80

    :goto_4f6
    const/16 v3, -0x76

    if-ge v1, v3, :cond_4f6

    const/16 v3, 0x4f6

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7c3e098f

    if-eq v3, v10, :cond_4f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f6

    :cond_4f6
    const/16 v1, 0x40

    :goto_4f7
    if-ge v1, v6, :cond_4f7

    const/16 v3, 0x4f7

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x18b87c86

    if-eq v3, v10, :cond_4f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f7

    :cond_4f7
    const/16 v1, -0x5e

    :goto_4f8
    const/16 v3, -0x56

    if-ge v1, v3, :cond_4f8

    const/16 v3, 0x4f8

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4aeff53

    if-eq v3, v10, :cond_4f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f8

    :cond_4f8
    const/16 v1, 0x55

    :goto_4f9
    if-ge v1, v11, :cond_4f9

    const/16 v3, 0x4f9

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x55e2bcf3

    if-eq v3, v10, :cond_4f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4f9

    :cond_4f9
    move v1, v12

    :goto_4fa
    if-ge v1, v8, :cond_4fa

    const/16 v3, 0x4fa

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x70689784

    if-eq v3, v10, :cond_4fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fa

    :cond_4fa
    const/16 v1, -0x80

    :goto_4fb
    const/16 v3, -0x73

    if-ge v1, v3, :cond_4fb

    const/16 v3, 0x4fb

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x50c08044

    if-eq v3, v10, :cond_4fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fb

    :cond_4fb
    const/16 v1, 0x55

    :goto_4fc
    const/16 v3, 0x6b

    if-ge v1, v3, :cond_4fc

    const/16 v3, 0x4fc

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x30516b4d

    if-eq v3, v10, :cond_4fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fc

    :cond_4fc
    const/16 v1, 0xc

    :goto_4fd
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_4fd

    const/16 v3, 0x4fd

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x22554e21

    if-eq v3, v10, :cond_4fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fd

    :cond_4fd
    const/16 v1, 0x3d

    :goto_4fe
    if-ge v1, v6, :cond_4fe

    const/16 v3, 0x4fe

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x2fcedfac

    if-eq v3, v10, :cond_4fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_4fe

    :cond_4fe
    const/16 v1, -0x24

    :goto_4ff
    const/16 v3, -0x16

    if-ge v1, v3, :cond_4ff

    const/16 v3, 0x4ff

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x65db7e9a

    if-eq v3, v10, :cond_4ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_4ff

    :cond_4ff
    const/16 v1, -0x1c

    :goto_500
    if-ge v1, v7, :cond_500

    const/16 v3, 0x500

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x4de16631    # 4.72696352E8f

    if-eq v3, v10, :cond_500

    add-int/lit8 v1, v1, 0x1

    goto :goto_500

    :cond_500
    const/16 v1, 0x77

    :goto_501
    if-ge v1, v5, :cond_501

    const/16 v3, 0x501

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x36eb651

    if-eq v3, v10, :cond_501

    add-int/lit8 v1, v1, 0x1

    goto :goto_501

    :cond_501
    const/16 v1, -0x72

    :goto_502
    const/16 v3, -0x65

    if-ge v1, v3, :cond_502

    const/16 v3, 0x502

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x5e15dc58

    if-eq v3, v10, :cond_502

    add-int/lit8 v1, v1, 0x1

    goto :goto_502

    :cond_502
    const/16 v1, -0x61

    :goto_503
    const/16 v3, -0x51

    if-ge v1, v3, :cond_503

    const/16 v3, 0x503

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x713e5b92

    if-eq v3, v10, :cond_503

    add-int/lit8 v1, v1, 0x1

    goto :goto_503

    :cond_503
    const/16 v1, -0x22

    :goto_504
    const/16 v3, -0x10

    if-ge v1, v3, :cond_504

    const/16 v3, 0x504

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x703a5843

    if-eq v3, v10, :cond_504

    add-int/lit8 v1, v1, 0x1

    goto :goto_504

    :cond_504
    const/16 v1, -0x7a

    :goto_505
    const/16 v3, -0x69

    if-ge v1, v3, :cond_505

    const/16 v3, 0x505

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x672cf90

    if-eq v3, v10, :cond_505

    add-int/lit8 v1, v1, 0x1

    goto :goto_505

    :cond_505
    const/16 v1, 0xc

    :goto_506
    const/16 v3, 0x15

    if-ge v1, v3, :cond_506

    const/16 v3, 0x506

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3459879c

    if-eq v3, v10, :cond_506

    add-int/lit8 v1, v1, 0x1

    goto :goto_506

    :cond_506
    move v1, v2

    :goto_507
    if-ge v1, v14, :cond_507

    const/16 v3, 0x507

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x71489db1

    if-eq v3, v10, :cond_507

    add-int/lit8 v1, v1, 0x1

    goto :goto_507

    :cond_507
    const/16 v1, -0x4c

    :goto_508
    const/16 v3, -0x3a

    if-ge v1, v3, :cond_508

    const/16 v3, 0x508

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x64506ba9

    if-eq v3, v10, :cond_508

    add-int/lit8 v1, v1, 0x1

    goto :goto_508

    :cond_508
    const/16 v1, 0x4b

    :goto_509
    const/16 v3, 0x58

    if-ge v1, v3, :cond_509

    const/16 v3, 0x509

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7404d2f5

    if-eq v3, v10, :cond_509

    add-int/lit8 v1, v1, 0x1

    goto :goto_509

    :cond_509
    const/16 v1, -0x18

    :goto_50a
    const/4 v3, 0x3

    if-ge v1, v3, :cond_50a

    const/16 v3, 0x50a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x75ca5441

    if-eq v3, v10, :cond_50a

    add-int/lit8 v1, v1, 0x1

    goto :goto_50a

    :cond_50a
    move v1, v7

    :goto_50b
    if-gez v1, :cond_50b

    const/16 v3, 0x50b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0xee47b0d

    if-eq v3, v10, :cond_50b

    add-int/lit8 v1, v1, 0x1

    goto :goto_50b

    :cond_50b
    const/16 v1, 0x32

    :goto_50c
    const/16 v3, 0x47

    if-ge v1, v3, :cond_50c

    const/16 v3, 0x50c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1303c0a8

    if-eq v3, v10, :cond_50c

    add-int/lit8 v1, v1, 0x1

    goto :goto_50c

    :cond_50c
    const/16 v1, 0xf

    :goto_50d
    const/16 v3, 0x23

    if-ge v1, v3, :cond_50d

    const/16 v3, 0x50d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x5e951256

    if-eq v3, v10, :cond_50d

    add-int/lit8 v1, v1, 0x1

    goto :goto_50d

    :cond_50d
    const/16 v1, 0x55

    :goto_50e
    const/16 v3, 0x65

    if-ge v1, v3, :cond_50e

    const/16 v3, 0x50e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x27d1553b

    if-eq v3, v10, :cond_50e

    add-int/lit8 v1, v1, 0x1

    goto :goto_50e

    :cond_50e
    const/16 v1, 0x32

    :goto_50f
    const/16 v3, 0x43

    if-ge v1, v3, :cond_50f

    const/16 v3, 0x50f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x344e6731

    if-eq v3, v10, :cond_50f

    add-int/lit8 v1, v1, 0x1

    goto :goto_50f

    :cond_50f
    const/16 v1, -0x65

    :goto_510
    const/16 v3, -0x4a

    if-ge v1, v3, :cond_510

    const/16 v3, 0x510

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x50d80b83

    if-eq v3, v10, :cond_510

    add-int/lit8 v1, v1, 0x1

    goto :goto_510

    :cond_510
    const/4 v1, -0x6

    :goto_511
    if-gez v1, :cond_511

    const/16 v3, 0x511

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x2f51d084

    if-eq v3, v10, :cond_511

    add-int/lit8 v1, v1, 0x1

    goto :goto_511

    :cond_511
    const/16 v1, 0x11

    :goto_512
    const/16 v3, 0x27

    if-ge v1, v3, :cond_512

    const/16 v3, 0x512

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6adc280

    if-eq v3, v10, :cond_512

    add-int/lit8 v1, v1, 0x1

    goto :goto_512

    :cond_512
    const/16 v1, -0x45

    :goto_513
    const/16 v3, -0x38

    if-ge v1, v3, :cond_513

    const/16 v3, 0x513

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x458c2607

    if-eq v3, v10, :cond_513

    add-int/lit8 v1, v1, 0x1

    goto :goto_513

    :cond_513
    const/16 v1, -0x53

    const/16 v3, -0x41

    :goto_514
    if-ge v1, v3, :cond_514

    const/16 v10, 0x514

    int-to-byte v13, v1

    aput-byte v13, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v13, 0x74fc8c1d

    if-eq v10, v13, :cond_514

    add-int/lit8 v1, v1, 0x1

    goto :goto_514

    :cond_514
    const/16 v1, -0x19

    :goto_515
    const/4 v3, -0x7

    if-ge v1, v3, :cond_515

    const/16 v3, 0x515

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1e9f51c8

    if-eq v3, v10, :cond_515

    add-int/lit8 v1, v1, 0x1

    goto :goto_515

    :cond_515
    const/16 v1, 0x63

    :goto_516
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_516

    const/16 v3, 0x516

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x74782ab9

    if-eq v3, v10, :cond_516

    add-int/lit8 v1, v1, 0x1

    goto :goto_516

    :cond_516
    const/4 v1, -0x5

    :goto_517
    const/16 v3, 0x8

    if-ge v1, v3, :cond_517

    const/16 v3, 0x517

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7bdadd81

    if-eq v3, v10, :cond_517

    add-int/lit8 v1, v1, 0x1

    goto :goto_517

    :cond_517
    const/16 v1, 0x61

    :goto_518
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_518

    const/16 v3, 0x518

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3234b9c2

    if-eq v3, v10, :cond_518

    add-int/lit8 v1, v1, 0x1

    goto :goto_518

    :cond_518
    const/4 v1, -0x5

    :goto_519
    const/16 v3, 0x8

    if-ge v1, v3, :cond_519

    const/16 v3, 0x519

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x228b9909

    if-eq v3, v10, :cond_519

    add-int/lit8 v1, v1, 0x1

    goto :goto_519

    :cond_519
    const/16 v1, 0x5c

    :goto_51a
    const/16 v3, 0x6f

    if-ge v1, v3, :cond_51a

    const/16 v3, 0x51a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x48b0acee

    if-eq v3, v10, :cond_51a

    add-int/lit8 v1, v1, 0x1

    goto :goto_51a

    :cond_51a
    const/16 v1, -0x7e

    :goto_51b
    const/16 v3, -0x70

    if-ge v1, v3, :cond_51b

    const/16 v3, 0x51b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1ff1db65

    if-eq v3, v10, :cond_51b

    add-int/lit8 v1, v1, 0x1

    goto :goto_51b

    :cond_51b
    const/4 v1, 0x4

    :goto_51c
    const/16 v3, 0x8

    if-ge v1, v3, :cond_51c

    const/16 v3, 0x51c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x4c1e75cb    # 4.1539372E7f

    if-eq v3, v10, :cond_51c

    add-int/lit8 v1, v1, 0x1

    goto :goto_51c

    :cond_51c
    const/16 v1, 0xe

    :goto_51d
    const/16 v3, 0x15

    if-ge v1, v3, :cond_51d

    const/16 v3, 0x51d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x256161bb

    if-eq v3, v10, :cond_51d

    add-int/lit8 v1, v1, 0x1

    goto :goto_51d

    :cond_51d
    const/16 v1, -0x43

    :goto_51e
    const/16 v3, -0x35

    if-ge v1, v3, :cond_51e

    const/16 v3, 0x51e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x42ca5d64

    if-eq v3, v10, :cond_51e

    add-int/lit8 v1, v1, 0x1

    goto :goto_51e

    :cond_51e
    const/16 v1, 0x2e

    :goto_51f
    const/16 v3, 0x39

    if-ge v1, v3, :cond_51f

    const/16 v3, 0x51f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7c8b39d5

    if-eq v3, v10, :cond_51f

    add-int/lit8 v1, v1, 0x1

    goto :goto_51f

    :cond_51f
    const/16 v1, 0x5d

    :goto_520
    const/16 v3, 0x65

    if-ge v1, v3, :cond_520

    const/16 v3, 0x520

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x63a138af

    if-eq v3, v10, :cond_520

    add-int/lit8 v1, v1, 0x1

    goto :goto_520

    :cond_520
    const/16 v1, -0x17

    :goto_521
    const/4 v3, -0x6

    if-ge v1, v3, :cond_521

    const/16 v3, 0x521

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6979e36b

    if-eq v3, v10, :cond_521

    add-int/lit8 v1, v1, 0x1

    goto :goto_521

    :cond_521
    const/16 v1, -0x27

    :goto_522
    const/16 v3, -0xf

    if-ge v1, v3, :cond_522

    const/16 v3, 0x522

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7935dbd9

    if-eq v3, v10, :cond_522

    add-int/lit8 v1, v1, 0x1

    goto :goto_522

    :cond_522
    const/16 v1, 0x23

    :goto_523
    const/16 v3, 0x40

    if-ge v1, v3, :cond_523

    const/16 v3, 0x523

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7a9ee677

    if-eq v3, v10, :cond_523

    add-int/lit8 v1, v1, 0x1

    goto :goto_523

    :cond_523
    const/16 v1, 0xe

    const/16 v3, 0x24

    :goto_524
    if-ge v1, v3, :cond_524

    const/16 v10, 0x524

    int-to-byte v13, v1

    aput-byte v13, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v13, -0x4efd2d9c

    if-eq v10, v13, :cond_524

    add-int/lit8 v1, v1, 0x1

    goto :goto_524

    :cond_524
    const/16 v1, 0x19

    :goto_525
    const/16 v10, 0x2d

    if-ge v1, v10, :cond_525

    const/16 v10, 0x525

    int-to-byte v13, v1

    aput-byte v13, v0, v10

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v10

    const v13, 0x12f9dd08

    if-eq v10, v13, :cond_525

    add-int/lit8 v1, v1, 0x1

    goto :goto_525

    :cond_525
    :goto_526
    const/16 v1, 0x35

    if-ge v3, v1, :cond_526

    const/16 v1, 0x526

    int-to-byte v10, v3

    aput-byte v10, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v10, -0x549aa30f

    if-eq v1, v10, :cond_526

    add-int/lit8 v3, v3, 0x1

    goto :goto_526

    :cond_526
    const/16 v1, -0x9

    :goto_527
    const/4 v3, -0x1

    if-ge v1, v3, :cond_527

    const/16 v3, 0x527

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x511c457e

    if-eq v3, v10, :cond_527

    add-int/lit8 v1, v1, 0x1

    goto :goto_527

    :cond_527
    const/16 v1, 0x2a

    :goto_528
    const/16 v3, 0x38

    if-ge v1, v3, :cond_528

    const/16 v3, 0x528

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x2421130f

    if-eq v3, v10, :cond_528

    add-int/lit8 v1, v1, 0x1

    goto :goto_528

    :cond_528
    const/4 v1, 0x3

    :goto_529
    const/16 v3, 0x15

    if-ge v1, v3, :cond_529

    const/16 v3, 0x529

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1e153959

    if-eq v3, v10, :cond_529

    add-int/lit8 v1, v1, 0x1

    goto :goto_529

    :cond_529
    const/16 v1, 0x7a

    :goto_52a
    if-ge v1, v5, :cond_52a

    const/16 v3, 0x52a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4b8734bd

    if-eq v3, v10, :cond_52a

    add-int/lit8 v1, v1, 0x1

    goto :goto_52a

    :cond_52a
    const/16 v1, 0x5f

    :goto_52b
    const/16 v3, 0x6e

    if-ge v1, v3, :cond_52b

    const/16 v3, 0x52b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x461fb195

    if-eq v3, v10, :cond_52b

    add-int/lit8 v1, v1, 0x1

    goto :goto_52b

    :cond_52b
    const/16 v1, 0x5c

    :goto_52c
    const/16 v3, 0x71

    if-ge v1, v3, :cond_52c

    const/16 v3, 0x52c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x37ef1c59

    if-eq v3, v10, :cond_52c

    add-int/lit8 v1, v1, 0x1

    goto :goto_52c

    :cond_52c
    const/16 v1, -0x2b

    :goto_52d
    const/16 v3, -0x11

    if-ge v1, v3, :cond_52d

    const/16 v3, 0x52d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x56df75c9

    if-eq v3, v10, :cond_52d

    add-int/lit8 v1, v1, 0x1

    goto :goto_52d

    :cond_52d
    const/16 v1, -0x74

    :goto_52e
    const/16 v3, -0x64

    if-ge v1, v3, :cond_52e

    const/16 v3, 0x52e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0xa93be6c

    if-eq v3, v10, :cond_52e

    add-int/lit8 v1, v1, 0x1

    goto :goto_52e

    :cond_52e
    const/16 v1, -0x1b

    :goto_52f
    if-ge v1, v4, :cond_52f

    const/16 v3, 0x52f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x63476516

    if-eq v3, v10, :cond_52f

    add-int/lit8 v1, v1, 0x1

    goto :goto_52f

    :cond_52f
    const/16 v1, -0xb

    :goto_530
    const/4 v3, 0x7

    if-ge v1, v3, :cond_530

    const/16 v3, 0x530

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7154b68b

    if-eq v3, v10, :cond_530

    add-int/lit8 v1, v1, 0x1

    goto :goto_530

    :cond_530
    const/16 v1, -0x16

    :goto_531
    const/4 v3, -0x1

    if-ge v1, v3, :cond_531

    const/16 v3, 0x531

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7ebf2442

    if-eq v3, v10, :cond_531

    add-int/lit8 v1, v1, 0x1

    goto :goto_531

    :cond_531
    const/16 v1, 0x3f

    :goto_532
    const/16 v3, 0x54

    if-ge v1, v3, :cond_532

    const/16 v3, 0x532

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x662f5237

    if-eq v3, v10, :cond_532

    add-int/lit8 v1, v1, 0x1

    goto :goto_532

    :cond_532
    const/16 v1, -0x59

    :goto_533
    const/16 v3, -0x47

    if-ge v1, v3, :cond_533

    const/16 v3, 0x533

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x2681004a

    if-eq v3, v10, :cond_533

    add-int/lit8 v1, v1, 0x1

    goto :goto_533

    :cond_533
    const/16 v1, 0x43

    :goto_534
    const/16 v3, 0x48

    if-ge v1, v3, :cond_534

    const/16 v3, 0x534

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7087d709

    if-eq v3, v10, :cond_534

    add-int/lit8 v1, v1, 0x1

    goto :goto_534

    :cond_534
    const/16 v1, -0x78

    :goto_535
    const/16 v3, -0x5a

    if-ge v1, v3, :cond_535

    const/16 v3, 0x535

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x4487964a

    if-eq v3, v10, :cond_535

    add-int/lit8 v1, v1, 0x1

    goto :goto_535

    :cond_535
    const/16 v1, 0x70

    :goto_536
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_536

    const/16 v3, 0x536

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x56584e9b

    if-eq v3, v10, :cond_536

    add-int/lit8 v1, v1, 0x1

    goto :goto_536

    :cond_536
    const/16 v1, 0x6c

    :goto_537
    if-ge v1, v5, :cond_537

    const/16 v3, 0x537

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6392f43c

    if-eq v3, v10, :cond_537

    add-int/lit8 v1, v1, 0x1

    goto :goto_537

    :cond_537
    const/16 v1, -0x3c

    :goto_538
    const/16 v3, -0x31

    if-ge v1, v3, :cond_538

    const/16 v3, 0x538

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x60c7df2

    if-eq v3, v10, :cond_538

    add-int/lit8 v1, v1, 0x1

    goto :goto_538

    :cond_538
    const/16 v1, 0x11

    :goto_539
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_539

    const/16 v3, 0x539

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x553d920b

    if-eq v3, v10, :cond_539

    add-int/lit8 v1, v1, 0x1

    goto :goto_539

    :cond_539
    const/16 v1, 0x25

    :goto_53a
    const/16 v3, 0x37

    if-ge v1, v3, :cond_53a

    const/16 v3, 0x53a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x2c5ce82

    if-eq v3, v10, :cond_53a

    add-int/lit8 v1, v1, 0x1

    goto :goto_53a

    :cond_53a
    const/16 v1, -0x78

    :goto_53b
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_53b

    const/16 v3, 0x53b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x394c4b1f

    if-eq v3, v10, :cond_53b

    add-int/lit8 v1, v1, 0x1

    goto :goto_53b

    :cond_53b
    const/16 v1, -0x50

    :goto_53c
    const/16 v3, -0x48

    if-ge v1, v3, :cond_53c

    const/16 v3, 0x53c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x410f21f

    if-eq v3, v10, :cond_53c

    add-int/lit8 v1, v1, 0x1

    goto :goto_53c

    :cond_53c
    const/16 v1, -0x80

    :goto_53d
    const/16 v3, -0x78

    if-ge v1, v3, :cond_53d

    const/16 v3, 0x53d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x134d6ca7

    if-eq v3, v10, :cond_53d

    add-int/lit8 v1, v1, 0x1

    goto :goto_53d

    :cond_53d
    const/16 v1, -0x7d

    :goto_53e
    const/16 v3, -0x6d

    if-ge v1, v3, :cond_53e

    const/16 v3, 0x53e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x30166780

    if-eq v3, v10, :cond_53e

    add-int/lit8 v1, v1, 0x1

    goto :goto_53e

    :cond_53e
    const/16 v1, -0x15

    :goto_53f
    const/4 v3, -0x2

    if-ge v1, v3, :cond_53f

    const/16 v3, 0x53f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x415c6005

    if-eq v3, v10, :cond_53f

    add-int/lit8 v1, v1, 0x1

    goto :goto_53f

    :cond_53f
    const/16 v1, -0x47

    :goto_540
    const/16 v3, -0x37

    if-ge v1, v3, :cond_540

    const/16 v3, 0x540

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x96f61c5

    if-eq v3, v10, :cond_540

    add-int/lit8 v1, v1, 0x1

    goto :goto_540

    :cond_540
    const/4 v1, 0x0

    :goto_541
    const/16 v3, 0x14

    if-ge v1, v3, :cond_541

    const/16 v3, 0x541

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x736b5ebc

    if-eq v3, v10, :cond_541

    add-int/lit8 v1, v1, 0x1

    goto :goto_541

    :cond_541
    const/16 v1, 0xb

    :goto_542
    const/16 v3, 0x23

    if-ge v1, v3, :cond_542

    const/16 v3, 0x542

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x251301de

    if-eq v3, v10, :cond_542

    add-int/lit8 v1, v1, 0x1

    goto :goto_542

    :cond_542
    const/16 v1, 0x18

    :goto_543
    const/16 v3, 0x25

    if-ge v1, v3, :cond_543

    const/16 v3, 0x543

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x4e204576    # 6.7222669E8f

    if-eq v3, v10, :cond_543

    add-int/lit8 v1, v1, 0x1

    goto :goto_543

    :cond_543
    const/4 v1, -0x2

    :goto_544
    const/16 v3, 0x10

    if-ge v1, v3, :cond_544

    const/16 v3, 0x544

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x308ad778

    if-eq v3, v10, :cond_544

    add-int/lit8 v1, v1, 0x1

    goto :goto_544

    :cond_544
    const/16 v1, -0x6d

    :goto_545
    const/16 v3, -0x68

    if-ge v1, v3, :cond_545

    const/16 v3, 0x545

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3a4d6ded

    if-eq v3, v10, :cond_545

    add-int/lit8 v1, v1, 0x1

    goto :goto_545

    :cond_545
    const/16 v1, 0xd

    :goto_546
    const/16 v3, 0x21

    if-ge v1, v3, :cond_546

    const/16 v3, 0x546

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7a42336e

    if-eq v3, v10, :cond_546

    add-int/lit8 v1, v1, 0x1

    goto :goto_546

    :cond_546
    const/16 v1, 0x44

    :goto_547
    const/16 v3, 0x63

    if-ge v1, v3, :cond_547

    const/16 v3, 0x547

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3d7ef398

    if-eq v3, v10, :cond_547

    add-int/lit8 v1, v1, 0x1

    goto :goto_547

    :cond_547
    const/16 v1, -0x80

    :goto_548
    const/16 v3, -0x76

    if-ge v1, v3, :cond_548

    const/16 v3, 0x548

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1b0b1f46

    if-eq v3, v10, :cond_548

    add-int/lit8 v1, v1, 0x1

    goto :goto_548

    :cond_548
    const/16 v1, -0x23

    :goto_549
    const/16 v3, -0xb

    if-ge v1, v3, :cond_549

    const/16 v3, 0x549

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6fe1780

    if-eq v3, v10, :cond_549

    add-int/lit8 v1, v1, 0x1

    goto :goto_549

    :cond_549
    const/16 v1, 0x30

    :goto_54a
    const/16 v3, 0x41

    if-ge v1, v3, :cond_54a

    const/16 v3, 0x54a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x5f05983a

    if-eq v3, v10, :cond_54a

    add-int/lit8 v1, v1, 0x1

    goto :goto_54a

    :cond_54a
    const/16 v1, -0x5c

    :goto_54b
    const/16 v3, -0x50

    if-ge v1, v3, :cond_54b

    const/16 v3, 0x54b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7db34409

    if-eq v3, v10, :cond_54b

    add-int/lit8 v1, v1, 0x1

    goto :goto_54b

    :cond_54b
    const/16 v1, 0x59

    :goto_54c
    if-ge v1, v15, :cond_54c

    const/16 v3, 0x54c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0xb1aaa55

    if-eq v3, v10, :cond_54c

    add-int/lit8 v1, v1, 0x1

    goto :goto_54c

    :cond_54c
    const/4 v1, -0x7

    :goto_54d
    const/4 v3, 0x2

    if-ge v1, v3, :cond_54d

    const/16 v3, 0x54d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x6540f3d8

    if-eq v3, v10, :cond_54d

    add-int/lit8 v1, v1, 0x1

    goto :goto_54d

    :cond_54d
    const/16 v1, -0x4c

    :goto_54e
    const/16 v3, -0x43

    if-ge v1, v3, :cond_54e

    const/16 v3, 0x54e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x636e36a4

    if-eq v3, v10, :cond_54e

    add-int/lit8 v1, v1, 0x1

    goto :goto_54e

    :cond_54e
    const/16 v1, -0x3a

    :goto_54f
    if-ge v1, v9, :cond_54f

    const/16 v3, 0x54f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x461cdd1a

    if-eq v3, v10, :cond_54f

    add-int/lit8 v1, v1, 0x1

    goto :goto_54f

    :cond_54f
    const/16 v1, 0x57

    :goto_550
    const/16 v3, 0x65

    if-ge v1, v3, :cond_550

    const/16 v3, 0x550

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x23dd29c7

    if-eq v3, v10, :cond_550

    add-int/lit8 v1, v1, 0x1

    goto :goto_550

    :cond_550
    const/16 v1, 0x68

    :goto_551
    const/16 v3, 0x78

    if-ge v1, v3, :cond_551

    const/16 v3, 0x551

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x30c13d3a

    if-eq v3, v10, :cond_551

    add-int/lit8 v1, v1, 0x1

    goto :goto_551

    :cond_551
    const/4 v1, -0x3

    :goto_552
    const/16 v3, 0x8

    if-ge v1, v3, :cond_552

    const/16 v3, 0x552

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x7b1a022c

    if-eq v3, v10, :cond_552

    add-int/lit8 v1, v1, 0x1

    goto :goto_552

    :cond_552
    const/16 v1, 0x29

    :goto_553
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_553

    const/16 v3, 0x553

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1756466d

    if-eq v3, v10, :cond_553

    add-int/lit8 v1, v1, 0x1

    goto :goto_553

    :cond_553
    const/16 v1, -0x29

    :goto_554
    const/16 v3, -0x1e

    if-ge v1, v3, :cond_554

    const/16 v3, 0x554

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1eda38e2

    if-eq v3, v10, :cond_554

    add-int/lit8 v1, v1, 0x1

    goto :goto_554

    :cond_554
    const/4 v1, 0x3

    :goto_555
    const/16 v3, 0x14

    if-ge v1, v3, :cond_555

    const/16 v3, 0x555

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0xc64e833

    if-eq v3, v10, :cond_555

    add-int/lit8 v1, v1, 0x1

    goto :goto_555

    :cond_555
    const/16 v1, 0x34

    :goto_556
    if-ge v1, v2, :cond_556

    const/16 v3, 0x556

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3e25d2bb

    if-eq v3, v10, :cond_556

    add-int/lit8 v1, v1, 0x1

    goto :goto_556

    :cond_556
    const/16 v1, 0x74

    :goto_557
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_557

    const/16 v3, 0x557

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4d00f8d6

    if-eq v3, v10, :cond_557

    add-int/lit8 v1, v1, 0x1

    goto :goto_557

    :cond_557
    const/16 v1, 0xe

    :goto_558
    const/16 v3, 0x18

    if-ge v1, v3, :cond_558

    const/16 v3, 0x558

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3e0c3a38

    if-eq v3, v10, :cond_558

    add-int/lit8 v1, v1, 0x1

    goto :goto_558

    :cond_558
    const/16 v1, 0x47

    :goto_559
    const/16 v3, 0x61

    if-ge v1, v3, :cond_559

    const/16 v3, 0x559

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x47e09bf2

    if-eq v3, v10, :cond_559

    add-int/lit8 v1, v1, 0x1

    goto :goto_559

    :cond_559
    const/16 v1, -0x7f

    :goto_55a
    const/16 v3, -0x7e

    if-ge v1, v3, :cond_55a

    const/16 v3, 0x55a

    const/16 v10, -0x7f

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6cf1fed3

    if-eq v3, v10, :cond_55a

    add-int/lit8 v1, v1, 0x1

    goto :goto_55a

    :cond_55a
    const/16 v1, -0x45

    :goto_55b
    const/16 v3, -0x2c

    if-ge v1, v3, :cond_55b

    const/16 v3, 0x55b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x339d9bfc

    if-eq v3, v10, :cond_55b

    add-int/lit8 v1, v1, 0x1

    goto :goto_55b

    :cond_55b
    const/16 v1, 0x27

    :goto_55c
    const/16 v3, 0x29

    if-ge v1, v3, :cond_55c

    const/16 v3, 0x55c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x5f84dc88

    if-eq v3, v10, :cond_55c

    add-int/lit8 v1, v1, 0x1

    goto :goto_55c

    :cond_55c
    const/16 v1, -0x80

    :goto_55d
    const/16 v3, -0x78

    if-ge v1, v3, :cond_55d

    const/16 v3, 0x55d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x61624b83

    if-eq v3, v10, :cond_55d

    add-int/lit8 v1, v1, 0x1

    goto :goto_55d

    :cond_55d
    const/16 v1, 0x30

    :goto_55e
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_55e

    const/16 v3, 0x55e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x56424b21

    if-eq v3, v10, :cond_55e

    add-int/lit8 v1, v1, 0x1

    goto :goto_55e

    :cond_55e
    const/16 v1, 0x74

    :goto_55f
    if-ge v1, v5, :cond_55f

    const/16 v3, 0x55f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x748a410c

    if-eq v3, v10, :cond_55f

    add-int/lit8 v1, v1, 0x1

    goto :goto_55f

    :cond_55f
    const/16 v1, -0x5b

    :goto_560
    const/16 v3, -0x53

    if-ge v1, v3, :cond_560

    const/16 v3, 0x560

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x41360b5d

    if-eq v3, v10, :cond_560

    add-int/lit8 v1, v1, 0x1

    goto :goto_560

    :cond_560
    const/16 v1, -0x15

    :goto_561
    const/16 v3, -0xc

    if-ge v1, v3, :cond_561

    const/16 v3, 0x561

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7578d2a7

    if-eq v3, v10, :cond_561

    add-int/lit8 v1, v1, 0x1

    goto :goto_561

    :cond_561
    const/16 v1, 0x48

    :goto_562
    const/16 v3, 0x58

    if-ge v1, v3, :cond_562

    const/16 v3, 0x562

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x5f1f10ad

    if-eq v3, v10, :cond_562

    add-int/lit8 v1, v1, 0x1

    goto :goto_562

    :cond_562
    const/16 v1, 0x66

    :goto_563
    const/16 v3, 0x77

    if-ge v1, v3, :cond_563

    const/16 v3, 0x563

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x23135fa0

    if-eq v3, v10, :cond_563

    add-int/lit8 v1, v1, 0x1

    goto :goto_563

    :cond_563
    const/16 v1, -0x19

    :goto_564
    const/16 v3, -0x9

    if-ge v1, v3, :cond_564

    const/16 v3, 0x564

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x357bfb01

    if-eq v3, v10, :cond_564

    add-int/lit8 v1, v1, 0x1

    goto :goto_564

    :cond_564
    const/16 v1, 0x71

    :goto_565
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_565

    const/16 v3, 0x565

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x4d370b0d    # 1.91934672E8f

    if-eq v3, v10, :cond_565

    add-int/lit8 v1, v1, 0x1

    goto :goto_565

    :cond_565
    const/16 v1, -0xa

    :goto_566
    const/16 v3, 0xc

    if-ge v1, v3, :cond_566

    const/16 v3, 0x566

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3e7913fc

    if-eq v3, v10, :cond_566

    add-int/lit8 v1, v1, 0x1

    goto :goto_566

    :cond_566
    const/16 v1, 0x36

    :goto_567
    const/16 v3, 0x41

    if-ge v1, v3, :cond_567

    const/16 v3, 0x567

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1cad2ef8

    if-eq v3, v10, :cond_567

    add-int/lit8 v1, v1, 0x1

    goto :goto_567

    :cond_567
    const/16 v1, -0x46

    :goto_568
    const/16 v3, -0x37

    if-ge v1, v3, :cond_568

    const/16 v3, 0x568

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0xa6e67ed

    if-eq v3, v10, :cond_568

    add-int/lit8 v1, v1, 0x1

    goto :goto_568

    :cond_568
    const/16 v1, 0x21

    :goto_569
    const/16 v3, 0x2a

    if-ge v1, v3, :cond_569

    const/16 v3, 0x569

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x123a1be

    if-eq v3, v10, :cond_569

    add-int/lit8 v1, v1, 0x1

    goto :goto_569

    :cond_569
    const/16 v1, -0x49

    :goto_56a
    const/16 v3, -0x33

    if-ge v1, v3, :cond_56a

    const/16 v3, 0x56a

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x59181227

    if-eq v3, v10, :cond_56a

    add-int/lit8 v1, v1, 0x1

    goto :goto_56a

    :cond_56a
    const/16 v1, -0x1c

    :goto_56b
    const/4 v3, -0x8

    if-ge v1, v3, :cond_56b

    const/16 v3, 0x56b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x758b59fd

    if-eq v3, v10, :cond_56b

    add-int/lit8 v1, v1, 0x1

    goto :goto_56b

    :cond_56b
    const/16 v1, -0x80

    :goto_56c
    const/16 v3, -0x71

    if-ge v1, v3, :cond_56c

    const/16 v3, 0x56c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x1fa704c4

    if-eq v3, v10, :cond_56c

    add-int/lit8 v1, v1, 0x1

    goto :goto_56c

    :cond_56c
    const/16 v3, -0x31

    :goto_56d
    const/16 v1, -0x24

    if-ge v3, v1, :cond_56d

    const/16 v1, 0x56d

    int-to-byte v10, v3

    aput-byte v10, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v10, 0x2681af87

    if-eq v1, v10, :cond_56d

    add-int/lit8 v3, v3, 0x1

    goto :goto_56d

    :cond_56d
    const/16 v1, -0x9

    :goto_56e
    if-gez v1, :cond_56e

    const/16 v3, 0x56e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1b571be3

    if-eq v3, v10, :cond_56e

    add-int/lit8 v1, v1, 0x1

    goto :goto_56e

    :cond_56e
    const/16 v1, -0x65

    :goto_56f
    const/16 v3, -0x4e

    if-ge v1, v3, :cond_56f

    const/16 v3, 0x56f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x2f5c7c2a

    if-eq v3, v10, :cond_56f

    add-int/lit8 v1, v1, 0x1

    goto :goto_56f

    :cond_56f
    const/4 v1, 0x6

    :goto_570
    const/16 v3, 0x15

    if-ge v1, v3, :cond_570

    const/16 v3, 0x570

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x26b4602b

    if-eq v3, v10, :cond_570

    add-int/lit8 v1, v1, 0x1

    goto :goto_570

    :cond_570
    const/16 v1, 0x76

    :goto_571
    const/16 v3, 0x7a

    if-ge v1, v3, :cond_571

    const/16 v3, 0x571

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x42c42049

    if-eq v3, v10, :cond_571

    add-int/lit8 v1, v1, 0x1

    goto :goto_571

    :cond_571
    const/16 v1, -0x80

    :goto_572
    const/16 v3, -0x77

    if-ge v1, v3, :cond_572

    const/16 v3, 0x572

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x77117358

    if-eq v3, v10, :cond_572

    add-int/lit8 v1, v1, 0x1

    goto :goto_572

    :cond_572
    const/16 v1, 0x6c

    :goto_573
    if-ge v1, v5, :cond_573

    const/16 v3, 0x573

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x453d0df6

    if-eq v3, v10, :cond_573

    add-int/lit8 v1, v1, 0x1

    goto :goto_573

    :cond_573
    const/16 v1, 0x2a

    :goto_574
    const/16 v3, 0x38

    if-ge v1, v3, :cond_574

    const/16 v3, 0x574

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0xee61b57

    if-eq v3, v10, :cond_574

    add-int/lit8 v1, v1, 0x1

    goto :goto_574

    :cond_574
    const/16 v1, 0x37

    :goto_575
    const/16 v3, 0x51

    if-ge v1, v3, :cond_575

    const/16 v3, 0x575

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x2d83f4f2

    if-eq v3, v10, :cond_575

    add-int/lit8 v1, v1, 0x1

    goto :goto_575

    :cond_575
    const/16 v1, 0x58

    :goto_576
    const/16 v3, 0x69

    if-ge v1, v3, :cond_576

    const/16 v3, 0x576

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x4dfdeb31

    if-eq v3, v10, :cond_576

    add-int/lit8 v1, v1, 0x1

    goto :goto_576

    :cond_576
    const/16 v1, -0x18

    :goto_577
    const/4 v3, -0x8

    if-ge v1, v3, :cond_577

    const/16 v3, 0x577

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x624d0b6a

    if-eq v3, v10, :cond_577

    add-int/lit8 v1, v1, 0x1

    goto :goto_577

    :cond_577
    const/16 v1, -0x1a

    :goto_578
    if-ge v1, v4, :cond_578

    const/16 v3, 0x578

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x58402675

    if-eq v3, v10, :cond_578

    add-int/lit8 v1, v1, 0x1

    goto :goto_578

    :cond_578
    const/16 v1, 0x79

    :goto_579
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_579

    const/16 v3, 0x579

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3e0b1bc6

    if-eq v3, v10, :cond_579

    add-int/lit8 v1, v1, 0x1

    goto :goto_579

    :cond_579
    const/16 v3, -0xb

    :goto_57a
    const/4 v1, 0x3

    if-ge v3, v1, :cond_57a

    const/16 v1, 0x57a

    int-to-byte v10, v3

    aput-byte v10, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v10, -0x3e0b1bc6

    if-eq v1, v10, :cond_57a

    add-int/lit8 v3, v3, 0x1

    goto :goto_57a

    :cond_57a
    const/16 v1, 0x68

    :goto_57b
    if-ge v1, v15, :cond_57b

    const/16 v3, 0x57b

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x7bdb4b1a

    if-eq v3, v10, :cond_57b

    add-int/lit8 v1, v1, 0x1

    goto :goto_57b

    :cond_57b
    const/16 v1, -0x66

    :goto_57c
    const/16 v3, -0x60

    if-ge v1, v3, :cond_57c

    const/16 v3, 0x57c

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x6dc0eef8

    if-eq v3, v10, :cond_57c

    add-int/lit8 v1, v1, 0x1

    goto :goto_57c

    :cond_57c
    const/16 v1, 0x2d

    :goto_57d
    const/16 v3, 0x32

    if-ge v1, v3, :cond_57d

    const/16 v3, 0x57d

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x3d040ca4

    if-eq v3, v10, :cond_57d

    add-int/lit8 v1, v1, 0x1

    goto :goto_57d

    :cond_57d
    const/4 v1, -0x1

    :goto_57e
    const/16 v3, 0x13

    if-ge v1, v3, :cond_57e

    const/16 v3, 0x57e

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x2d5eb168

    if-eq v3, v10, :cond_57e

    add-int/lit8 v1, v1, 0x1

    goto :goto_57e

    :cond_57e
    const/16 v1, 0x4a

    :goto_57f
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_57f

    const/16 v3, 0x57f

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x211450d8

    if-eq v3, v10, :cond_57f

    add-int/lit8 v1, v1, 0x1

    goto :goto_57f

    :cond_57f
    const/16 v1, -0x64

    :goto_580
    const/16 v3, -0x59

    if-ge v1, v3, :cond_580

    const/16 v3, 0x580

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x62108fa

    if-eq v3, v10, :cond_580

    add-int/lit8 v1, v1, 0x1

    goto :goto_580

    :cond_580
    const/16 v1, -0x62

    :goto_581
    const/16 v3, -0x57

    if-ge v1, v3, :cond_581

    const/16 v3, 0x581

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x3426360

    if-eq v3, v10, :cond_581

    add-int/lit8 v1, v1, 0x1

    goto :goto_581

    :cond_581
    const/16 v1, 0x6e

    :goto_582
    if-ge v1, v5, :cond_582

    const/16 v3, 0x582

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0xb20b993

    if-eq v3, v10, :cond_582

    add-int/lit8 v1, v1, 0x1

    goto :goto_582

    :cond_582
    const/16 v1, 0x31

    :goto_583
    const/16 v3, 0x47

    if-ge v1, v3, :cond_583

    const/16 v3, 0x583

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x1d5719e1

    if-eq v3, v10, :cond_583

    add-int/lit8 v1, v1, 0x1

    goto :goto_583

    :cond_583
    const/16 v1, -0x1e

    :goto_584
    const/16 v3, -0xa

    if-ge v1, v3, :cond_584

    const/16 v3, 0x584

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x50fe4f96

    if-eq v3, v10, :cond_584

    add-int/lit8 v1, v1, 0x1

    goto :goto_584

    :cond_584
    const/16 v1, 0x54

    :goto_585
    const/16 v3, 0x69

    if-ge v1, v3, :cond_585

    const/16 v3, 0x585

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x61a1aa1f

    if-eq v3, v10, :cond_585

    add-int/lit8 v1, v1, 0x1

    goto :goto_585

    :cond_585
    const/16 v1, -0x5e

    :goto_586
    const/16 v3, -0x4d

    if-ge v1, v3, :cond_586

    const/16 v3, 0x586

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, -0x9f1fcd2

    if-eq v3, v10, :cond_586

    add-int/lit8 v1, v1, 0x1

    goto :goto_586

    :cond_586
    const/16 v1, -0x1d

    :goto_587
    if-ge v1, v7, :cond_587

    const/16 v3, 0x587

    int-to-byte v10, v1

    aput-byte v10, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v10, 0x8288a19

    if-eq v3, v10, :cond_587

    add-int/lit8 v1, v1, 0x1

    goto :goto_587

    :cond_587
    const/16 v1, -0x37

    :goto_588
    const/16 v3, -0x29

    if-ge v1, v3, :cond_588

    const/16 v3, 0x588

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x2146a70f

    if-eq v3, v7, :cond_588

    add-int/lit8 v1, v1, 0x1

    goto :goto_588

    :cond_588
    const/16 v1, -0x5c

    :goto_589
    const/16 v3, -0x47

    if-ge v1, v3, :cond_589

    const/16 v3, 0x589

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x52e22bf7

    if-eq v3, v7, :cond_589

    add-int/lit8 v1, v1, 0x1

    goto :goto_589

    :cond_589
    const/16 v1, -0x6b

    :goto_58a
    const/16 v3, -0x63

    if-ge v1, v3, :cond_58a

    const/16 v3, 0x58a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3a43ccc3

    if-eq v3, v7, :cond_58a

    add-int/lit8 v1, v1, 0x1

    goto :goto_58a

    :cond_58a
    const/16 v1, -0x18

    :goto_58b
    const/4 v3, 0x5

    if-ge v1, v3, :cond_58b

    const/16 v3, 0x58b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x23a13795

    if-eq v3, v7, :cond_58b

    add-int/lit8 v1, v1, 0x1

    goto :goto_58b

    :cond_58b
    const/16 v1, 0x3f

    :goto_58c
    const/16 v3, 0x53

    if-ge v1, v3, :cond_58c

    const/16 v3, 0x58c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7d7e5615

    if-eq v3, v7, :cond_58c

    add-int/lit8 v1, v1, 0x1

    goto :goto_58c

    :cond_58c
    move v1, v9

    :goto_58d
    const/16 v3, -0x27

    if-ge v1, v3, :cond_58d

    const/16 v3, 0x58d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6fbb9307

    if-eq v3, v7, :cond_58d

    add-int/lit8 v1, v1, 0x1

    goto :goto_58d

    :cond_58d
    const/16 v1, -0x33

    :goto_58e
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_58e

    const/16 v3, 0x58e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x47144a77

    if-eq v3, v7, :cond_58e

    add-int/lit8 v1, v1, 0x1

    goto :goto_58e

    :cond_58e
    const/16 v1, 0x5a

    :goto_58f
    const/16 v3, 0x65

    if-ge v1, v3, :cond_58f

    const/16 v3, 0x58f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7af6182b

    if-eq v3, v7, :cond_58f

    add-int/lit8 v1, v1, 0x1

    goto :goto_58f

    :cond_58f
    const/16 v1, -0x4a

    :goto_590
    const/16 v3, -0x3b

    if-ge v1, v3, :cond_590

    const/16 v3, 0x590

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x59360105

    if-eq v3, v7, :cond_590

    add-int/lit8 v1, v1, 0x1

    goto :goto_590

    :cond_590
    const/16 v1, 0x41

    :goto_591
    const/16 v3, 0x52

    if-ge v1, v3, :cond_591

    const/16 v3, 0x591

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0xbb20c24

    if-eq v3, v7, :cond_591

    add-int/lit8 v1, v1, 0x1

    goto :goto_591

    :cond_591
    const/16 v1, 0xa

    :goto_592
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_592

    const/16 v3, 0x592

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x10d9a37a

    if-eq v3, v7, :cond_592

    add-int/lit8 v1, v1, 0x1

    goto :goto_592

    :cond_592
    const/16 v1, 0x7a

    :goto_593
    if-ge v1, v5, :cond_593

    const/16 v3, 0x593

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x242a3369

    if-eq v3, v7, :cond_593

    add-int/lit8 v1, v1, 0x1

    goto :goto_593

    :cond_593
    const/16 v1, 0x4e

    :goto_594
    if-ge v1, v14, :cond_594

    const/16 v3, 0x594

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x4fcd3000

    if-eq v3, v7, :cond_594

    add-int/lit8 v1, v1, 0x1

    goto :goto_594

    :cond_594
    const/16 v1, 0x5d

    :goto_595
    const/16 v3, 0x74

    if-ge v1, v3, :cond_595

    const/16 v3, 0x595

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3b8ac067

    if-eq v3, v7, :cond_595

    add-int/lit8 v1, v1, 0x1

    goto :goto_595

    :cond_595
    const/4 v1, 0x4

    :goto_596
    const/16 v3, 0x10

    if-ge v1, v3, :cond_596

    const/16 v3, 0x596

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x37eac96b

    if-eq v3, v7, :cond_596

    add-int/lit8 v1, v1, 0x1

    goto :goto_596

    :cond_596
    const/16 v1, -0x6d

    :goto_597
    const/16 v3, -0x57

    if-ge v1, v3, :cond_597

    const/16 v3, 0x597

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x377b632b

    if-eq v3, v7, :cond_597

    add-int/lit8 v1, v1, 0x1

    goto :goto_597

    :cond_597
    const/16 v1, 0x76

    :goto_598
    if-ge v1, v5, :cond_598

    const/16 v3, 0x598

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x91046be

    if-eq v3, v7, :cond_598

    add-int/lit8 v1, v1, 0x1

    goto :goto_598

    :cond_598
    const/16 v1, -0x7b

    :goto_599
    const/16 v3, -0x6e

    if-ge v1, v3, :cond_599

    const/16 v3, 0x599

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3bbbc4d1

    if-eq v3, v7, :cond_599

    add-int/lit8 v1, v1, 0x1

    goto :goto_599

    :cond_599
    move v1, v2

    :goto_59a
    const/16 v3, 0x47

    if-ge v1, v3, :cond_59a

    const/16 v3, 0x59a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x23b157a2

    if-eq v3, v7, :cond_59a

    add-int/lit8 v1, v1, 0x1

    goto :goto_59a

    :cond_59a
    const/16 v1, -0x80

    :goto_59b
    const/16 v3, -0x7c

    if-ge v1, v3, :cond_59b

    const/16 v3, 0x59b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x3983760e

    if-eq v3, v7, :cond_59b

    add-int/lit8 v1, v1, 0x1

    goto :goto_59b

    :cond_59b
    const/16 v1, 0x56

    :goto_59c
    const/16 v3, 0x6a

    if-ge v1, v3, :cond_59c

    const/16 v3, 0x59c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x29186a8e

    if-eq v3, v7, :cond_59c

    add-int/lit8 v1, v1, 0x1

    goto :goto_59c

    :cond_59c
    const/16 v1, -0x6f

    :goto_59d
    const/16 v3, -0x58

    if-ge v1, v3, :cond_59d

    const/16 v3, 0x59d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x548cd655

    if-eq v3, v7, :cond_59d

    add-int/lit8 v1, v1, 0x1

    goto :goto_59d

    :cond_59d
    const/16 v1, -0x40

    :goto_59e
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_59e

    const/16 v3, 0x59e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2a56112c

    if-eq v3, v7, :cond_59e

    add-int/lit8 v1, v1, 0x1

    goto :goto_59e

    :cond_59e
    const/16 v1, -0x13

    :goto_59f
    const/4 v3, 0x2

    if-ge v1, v3, :cond_59f

    const/16 v3, 0x59f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2e9f4c1f

    if-eq v3, v7, :cond_59f

    add-int/lit8 v1, v1, 0x1

    goto :goto_59f

    :cond_59f
    const/16 v1, 0x4c

    :goto_5a0
    const/16 v3, 0x52

    if-ge v1, v3, :cond_5a0

    const/16 v3, 0x5a0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6272290f

    if-eq v3, v7, :cond_5a0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a0

    :cond_5a0
    const/16 v1, -0x16

    :goto_5a1
    const/16 v3, -0xa

    if-ge v1, v3, :cond_5a1

    const/16 v3, 0x5a1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x19d3f2ce

    if-eq v3, v7, :cond_5a1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a1

    :cond_5a1
    const/16 v1, -0x2e

    :goto_5a2
    const/16 v3, -0x16

    if-ge v1, v3, :cond_5a2

    const/16 v3, 0x5a2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7adb98a

    if-eq v3, v7, :cond_5a2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a2

    :cond_5a2
    const/16 v1, -0x75

    :goto_5a3
    const/16 v3, -0x5b

    if-ge v1, v3, :cond_5a3

    const/16 v3, 0x5a3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x8a8e4cf

    if-eq v3, v7, :cond_5a3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a3

    :cond_5a3
    const/4 v1, 0x0

    :goto_5a4
    const/16 v3, 0x10

    if-ge v1, v3, :cond_5a4

    const/16 v3, 0x5a4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x13a932b

    if-eq v3, v7, :cond_5a4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a4

    :cond_5a4
    const/16 v1, -0x2a

    :goto_5a5
    const/16 v3, -0x11

    if-ge v1, v3, :cond_5a5

    const/16 v3, 0x5a5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x415d8e58

    if-eq v3, v7, :cond_5a5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a5

    :cond_5a5
    const/16 v1, 0x51

    :goto_5a6
    const/16 v3, 0x66

    if-ge v1, v3, :cond_5a6

    const/16 v3, 0x5a6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7815d8a0

    if-eq v3, v7, :cond_5a6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a6

    :cond_5a6
    const/16 v1, 0x2c

    :goto_5a7
    const/16 v3, 0x43

    if-ge v1, v3, :cond_5a7

    const/16 v3, 0x5a7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2210f647

    if-eq v3, v7, :cond_5a7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a7

    :cond_5a7
    const/16 v1, 0x6f

    :goto_5a8
    if-ge v1, v5, :cond_5a8

    const/16 v3, 0x5a8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1f69989a

    if-eq v3, v7, :cond_5a8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a8

    :cond_5a8
    const/16 v1, -0x16

    :goto_5a9
    const/4 v3, -0x6

    if-ge v1, v3, :cond_5a9

    const/16 v3, 0x5a9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x75e8f611

    if-eq v3, v7, :cond_5a9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5a9

    :cond_5a9
    const/16 v1, -0x16

    :goto_5aa
    const/4 v3, -0x2

    if-ge v1, v3, :cond_5aa

    const/16 v3, 0x5aa

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6bb32399

    if-eq v3, v7, :cond_5aa

    add-int/lit8 v1, v1, 0x1

    goto :goto_5aa

    :cond_5aa
    const/16 v1, 0x14

    :goto_5ab
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_5ab

    const/16 v3, 0x5ab

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x71baf833

    if-eq v3, v7, :cond_5ab

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ab

    :cond_5ab
    const/16 v1, 0x16

    :goto_5ac
    const/16 v3, 0x2d

    if-ge v1, v3, :cond_5ac

    const/16 v3, 0x5ac

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x6bdd291f

    if-eq v3, v7, :cond_5ac

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ac

    :cond_5ac
    const/16 v1, 0x5e

    :goto_5ad
    const/16 v3, 0x64

    if-ge v1, v3, :cond_5ad

    const/16 v3, 0x5ad

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1bcb2600

    if-eq v3, v7, :cond_5ad

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ad

    :cond_5ad
    const/16 v1, -0x80

    :goto_5ae
    const/16 v3, -0x77

    if-ge v1, v3, :cond_5ae

    const/16 v3, 0x5ae

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0xd976053

    if-eq v3, v7, :cond_5ae

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ae

    :cond_5ae
    const/16 v1, 0xc

    :goto_5af
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_5af

    const/16 v3, 0x5af

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x22a9a116

    if-eq v3, v7, :cond_5af

    add-int/lit8 v1, v1, 0x1

    goto :goto_5af

    :cond_5af
    const/16 v1, 0x13

    :goto_5b0
    const/16 v3, 0x30

    if-ge v1, v3, :cond_5b0

    const/16 v3, 0x5b0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x27ac7782

    if-eq v3, v7, :cond_5b0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b0

    :cond_5b0
    const/16 v1, 0x9

    :goto_5b1
    const/16 v3, 0x17

    if-ge v1, v3, :cond_5b1

    const/16 v3, 0x5b1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x18d39c4d

    if-eq v3, v7, :cond_5b1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b1

    :cond_5b1
    const/16 v1, -0x71

    :goto_5b2
    const/16 v3, -0x5c

    if-ge v1, v3, :cond_5b2

    const/16 v3, 0x5b2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x2de274e6

    if-eq v3, v7, :cond_5b2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b2

    :cond_5b2
    const/16 v1, -0x70

    :goto_5b3
    const/16 v3, -0x53

    if-ge v1, v3, :cond_5b3

    const/16 v3, 0x5b3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5a741522

    if-eq v3, v7, :cond_5b3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b3

    :cond_5b3
    const/16 v1, -0x80

    :goto_5b4
    const/16 v3, -0x71

    if-ge v1, v3, :cond_5b4

    const/16 v3, 0x5b4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x14539083

    if-eq v3, v7, :cond_5b4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b4

    :cond_5b4
    const/16 v1, 0xa

    :goto_5b5
    const/16 v3, 0x23

    if-ge v1, v3, :cond_5b5

    const/16 v3, 0x5b5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7b5da0bc

    if-eq v3, v7, :cond_5b5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b5

    :cond_5b5
    const/4 v1, 0x6

    :goto_5b6
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_5b6

    const/16 v3, 0x5b6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x34fc5eb1

    if-eq v3, v7, :cond_5b6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b6

    :cond_5b6
    const/16 v1, 0x69

    :goto_5b7
    if-ge v1, v11, :cond_5b7

    const/16 v3, 0x5b7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x31581656

    if-eq v3, v7, :cond_5b7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b7

    :cond_5b7
    const/16 v1, 0x44

    :goto_5b8
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_5b8

    const/16 v3, 0x5b8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x4b681398

    if-eq v3, v7, :cond_5b8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b8

    :cond_5b8
    const/16 v1, 0x78

    :goto_5b9
    if-ge v1, v5, :cond_5b9

    const/16 v3, 0x5b9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2017d2fa

    if-eq v3, v7, :cond_5b9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b9

    :cond_5b9
    const/16 v1, -0x72

    :goto_5ba
    const/16 v3, -0x63

    if-ge v1, v3, :cond_5ba

    const/16 v3, 0x5ba

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x68f1b931

    if-eq v3, v7, :cond_5ba

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ba

    :cond_5ba
    const/16 v1, -0x2d

    :goto_5bb
    const/16 v3, -0x15

    if-ge v1, v3, :cond_5bb

    const/16 v3, 0x5bb

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0xd1dc2a8

    if-eq v3, v7, :cond_5bb

    add-int/lit8 v1, v1, 0x1

    goto :goto_5bb

    :cond_5bb
    const/16 v1, -0xf

    :goto_5bc
    const/4 v3, -0x6

    if-ge v1, v3, :cond_5bc

    const/16 v3, 0x5bc

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6473f785

    if-eq v3, v7, :cond_5bc

    add-int/lit8 v1, v1, 0x1

    goto :goto_5bc

    :cond_5bc
    const/16 v1, -0x80

    :goto_5bd
    const/16 v3, -0x7b

    if-ge v1, v3, :cond_5bd

    const/16 v3, 0x5bd

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x41d7e8ab

    if-eq v3, v7, :cond_5bd

    add-int/lit8 v1, v1, 0x1

    goto :goto_5bd

    :cond_5bd
    const/16 v1, -0x32

    :goto_5be
    const/16 v3, -0x22

    if-ge v1, v3, :cond_5be

    const/16 v3, 0x5be

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x34717b28    # -1.868024E7f

    if-eq v3, v7, :cond_5be

    add-int/lit8 v1, v1, 0x1

    goto :goto_5be

    :cond_5be
    const/16 v1, 0x2b

    :goto_5bf
    const/16 v3, 0x3b

    if-ge v1, v3, :cond_5bf

    const/16 v3, 0x5bf

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x5707e192

    if-eq v3, v7, :cond_5bf

    add-int/lit8 v1, v1, 0x1

    goto :goto_5bf

    :cond_5bf
    const/16 v1, 0xd

    :goto_5c0
    const/16 v3, 0x1b

    if-ge v1, v3, :cond_5c0

    const/16 v3, 0x5c0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7c40ed9f

    if-eq v3, v7, :cond_5c0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c0

    :cond_5c0
    const/16 v1, 0xd

    :goto_5c1
    const/16 v3, 0x1f

    if-ge v1, v3, :cond_5c1

    const/16 v3, 0x5c1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x499ca1d2

    if-eq v3, v7, :cond_5c1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c1

    :cond_5c1
    const/16 v1, 0x38

    :goto_5c2
    const/16 v3, 0x4e

    if-ge v1, v3, :cond_5c2

    const/16 v3, 0x5c2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x66ba83d1

    if-eq v3, v7, :cond_5c2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c2

    :cond_5c2
    const/4 v1, 0x0

    :goto_5c3
    const/16 v3, 0xb

    if-ge v1, v3, :cond_5c3

    const/16 v3, 0x5c3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x79224b5b

    if-eq v3, v7, :cond_5c3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c3

    :cond_5c3
    const/16 v1, -0x62

    :goto_5c4
    const/16 v3, -0x56

    if-ge v1, v3, :cond_5c4

    const/16 v3, 0x5c4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x25d49b08

    if-eq v3, v7, :cond_5c4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c4

    :cond_5c4
    const/16 v1, -0x72

    :goto_5c5
    const/16 v3, -0x64

    if-ge v1, v3, :cond_5c5

    const/16 v3, 0x5c5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x6456080f

    if-eq v3, v7, :cond_5c5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c5

    :cond_5c5
    const/16 v1, -0x7e

    :goto_5c6
    const/16 v3, -0x72

    if-ge v1, v3, :cond_5c6

    const/16 v3, 0x5c6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5d4bda11

    if-eq v3, v7, :cond_5c6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c6

    :cond_5c6
    const/16 v1, -0x73

    :goto_5c7
    const/16 v3, -0x6f

    if-ge v1, v3, :cond_5c7

    const/16 v3, 0x5c7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x39af6925

    if-eq v3, v7, :cond_5c7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c7

    :cond_5c7
    const/16 v1, 0x59

    :goto_5c8
    const/16 v3, 0x5e

    if-ge v1, v3, :cond_5c8

    const/16 v3, 0x5c8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x4ebfd1b4    # 1.60909568E9f

    if-eq v3, v7, :cond_5c8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c8

    :cond_5c8
    const/16 v1, -0x37

    :goto_5c9
    const/16 v3, -0x25

    if-ge v1, v3, :cond_5c9

    const/16 v3, 0x5c9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6ab28014

    if-eq v3, v7, :cond_5c9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c9

    :cond_5c9
    const/16 v1, -0x36

    :goto_5ca
    const/16 v3, -0x2c

    if-ge v1, v3, :cond_5ca

    const/16 v3, 0x5ca

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x186f9d06

    if-eq v3, v7, :cond_5ca

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ca

    :cond_5ca
    const/16 v1, -0x63

    :goto_5cb
    const/16 v3, -0x55

    if-ge v1, v3, :cond_5cb

    const/16 v3, 0x5cb

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x234197a6

    if-eq v3, v7, :cond_5cb

    add-int/lit8 v1, v1, 0x1

    goto :goto_5cb

    :cond_5cb
    const/16 v1, 0x6e

    :goto_5cc
    if-ge v1, v15, :cond_5cc

    const/16 v3, 0x5cc

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x62aad979

    if-eq v3, v7, :cond_5cc

    add-int/lit8 v1, v1, 0x1

    goto :goto_5cc

    :cond_5cc
    const/16 v1, 0x6d

    :goto_5cd
    if-ge v1, v5, :cond_5cd

    const/16 v3, 0x5cd

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7eb1582c

    if-eq v3, v7, :cond_5cd

    add-int/lit8 v1, v1, 0x1

    goto :goto_5cd

    :cond_5cd
    const/16 v1, -0x56

    :goto_5ce
    const/16 v3, -0x46

    if-ge v1, v3, :cond_5ce

    const/16 v3, 0x5ce

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x4fcaa706

    if-eq v3, v7, :cond_5ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ce

    :cond_5ce
    const/16 v1, 0xa

    :goto_5cf
    const/16 v3, 0x18

    if-ge v1, v3, :cond_5cf

    const/16 v3, 0x5cf

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1ac279f2

    if-eq v3, v7, :cond_5cf

    add-int/lit8 v1, v1, 0x1

    goto :goto_5cf

    :cond_5cf
    const/16 v1, 0xf

    :goto_5d0
    const/16 v3, 0x1f

    if-ge v1, v3, :cond_5d0

    const/16 v3, 0x5d0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x6a8c6f53

    if-eq v3, v7, :cond_5d0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d0

    :cond_5d0
    const/16 v1, -0x80

    :goto_5d1
    const/16 v3, -0x70

    if-ge v1, v3, :cond_5d1

    const/16 v3, 0x5d1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x36dd3a29

    if-eq v3, v7, :cond_5d1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d1

    :cond_5d1
    const/16 v1, 0x57

    :goto_5d2
    const/16 v3, 0x74

    if-ge v1, v3, :cond_5d2

    const/16 v3, 0x5d2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x141290ec

    if-eq v3, v7, :cond_5d2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d2

    :cond_5d2
    const/4 v1, -0x5

    :goto_5d3
    const/4 v3, 0x7

    if-ge v1, v3, :cond_5d3

    const/16 v3, 0x5d3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x141290ec

    if-eq v3, v7, :cond_5d3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d3

    :cond_5d3
    const/16 v1, 0x32

    :goto_5d4
    const/16 v3, 0x45

    if-ge v1, v3, :cond_5d4

    const/16 v3, 0x5d4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x40c2d542

    if-eq v3, v7, :cond_5d4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d4

    :cond_5d4
    const/16 v1, 0x3a

    :goto_5d5
    const/16 v3, 0x51

    if-ge v1, v3, :cond_5d5

    const/16 v3, 0x5d5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x3652f8d0

    if-eq v3, v7, :cond_5d5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d5

    :cond_5d5
    const/16 v1, 0x1f

    :goto_5d6
    const/16 v3, 0x29

    if-ge v1, v3, :cond_5d6

    const/16 v3, 0x5d6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x44c3984d

    if-eq v3, v7, :cond_5d6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d6

    :cond_5d6
    const/16 v1, 0x4d

    :goto_5d7
    const/16 v3, 0x5d

    if-ge v1, v3, :cond_5d7

    const/16 v3, 0x5d7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x1c7184d2

    if-eq v3, v7, :cond_5d7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d7

    :cond_5d7
    const/16 v1, 0x53

    :goto_5d8
    const/16 v3, 0x65

    if-ge v1, v3, :cond_5d8

    const/16 v3, 0x5d8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x74516f37

    if-eq v3, v7, :cond_5d8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d8

    :cond_5d8
    const/16 v1, -0x4a

    :goto_5d9
    const/16 v3, -0x3e

    if-ge v1, v3, :cond_5d9

    const/16 v3, 0x5d9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1ed3c3b4

    if-eq v3, v7, :cond_5d9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d9

    :cond_5d9
    const/16 v1, -0x53

    :goto_5da
    const/16 v3, -0x3d

    if-ge v1, v3, :cond_5da

    const/16 v3, 0x5da

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x316996e

    if-eq v3, v7, :cond_5da

    add-int/lit8 v1, v1, 0x1

    goto :goto_5da

    :cond_5da
    const/16 v1, 0x4b

    :goto_5db
    const/16 v3, 0x65

    if-ge v1, v3, :cond_5db

    const/16 v3, 0x5db

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x15c9e243

    if-eq v3, v7, :cond_5db

    add-int/lit8 v1, v1, 0x1

    goto :goto_5db

    :cond_5db
    const/16 v1, -0x2d

    :goto_5dc
    const/16 v3, -0x20

    if-ge v1, v3, :cond_5dc

    const/16 v3, 0x5dc

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x18d2b388

    if-eq v3, v7, :cond_5dc

    add-int/lit8 v1, v1, 0x1

    goto :goto_5dc

    :cond_5dc
    const/16 v1, -0x6a

    :goto_5dd
    const/16 v3, -0x68

    if-ge v1, v3, :cond_5dd

    const/16 v3, 0x5dd

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5d9aa9b9

    if-eq v3, v7, :cond_5dd

    add-int/lit8 v1, v1, 0x1

    goto :goto_5dd

    :cond_5dd
    const/16 v1, -0x1c

    :goto_5de
    const/16 v3, -0x1a

    if-ge v1, v3, :cond_5de

    const/16 v3, 0x5de

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0xe0ff188

    if-eq v3, v7, :cond_5de

    add-int/lit8 v1, v1, 0x1

    goto :goto_5de

    :cond_5de
    const/16 v1, -0x29

    :goto_5df
    const/16 v3, -0x15

    if-ge v1, v3, :cond_5df

    const/16 v3, 0x5df

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x26dcce3a

    if-eq v3, v7, :cond_5df

    add-int/lit8 v1, v1, 0x1

    goto :goto_5df

    :cond_5df
    const/16 v1, -0x48

    :goto_5e0
    const/16 v3, -0x3c

    if-ge v1, v3, :cond_5e0

    const/16 v3, 0x5e0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x79729c22

    if-eq v3, v7, :cond_5e0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e0

    :cond_5e0
    const/16 v1, -0x6f

    :goto_5e1
    const/16 v3, -0x64

    if-ge v1, v3, :cond_5e1

    const/16 v3, 0x5e1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x67e576b

    if-eq v3, v7, :cond_5e1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e1

    :cond_5e1
    const/16 v1, 0x39

    :goto_5e2
    const/16 v3, 0x44

    if-ge v1, v3, :cond_5e2

    const/16 v3, 0x5e2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x42a61d35

    if-eq v3, v7, :cond_5e2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e2

    :cond_5e2
    const/16 v1, -0x25

    :goto_5e3
    const/16 v3, -0x13

    if-ge v1, v3, :cond_5e3

    const/16 v3, 0x5e3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x13fad614

    if-eq v3, v7, :cond_5e3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e3

    :cond_5e3
    const/16 v1, -0x14

    :goto_5e4
    const/16 v3, -0x11

    if-ge v1, v3, :cond_5e4

    const/16 v3, 0x5e4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x60d8b827

    if-eq v3, v7, :cond_5e4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e4

    :cond_5e4
    const/16 v1, 0x22

    :goto_5e5
    const/16 v3, 0x37

    if-ge v1, v3, :cond_5e5

    const/16 v3, 0x5e5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x35d1f05b

    if-eq v3, v7, :cond_5e5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e5

    :cond_5e5
    move v1, v15

    :goto_5e6
    if-ge v1, v5, :cond_5e6

    const/16 v3, 0x5e6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x24960ed

    if-eq v3, v7, :cond_5e6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e6

    :cond_5e6
    const/16 v1, 0x2c

    :goto_5e7
    const/16 v3, 0x44

    if-ge v1, v3, :cond_5e7

    const/16 v3, 0x5e7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x5beda46d

    if-eq v3, v7, :cond_5e7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e7

    :cond_5e7
    const/16 v1, 0x77

    :goto_5e8
    const/16 v3, 0x7f

    if-ge v1, v3, :cond_5e8

    const/16 v3, 0x5e8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0xf074d6e

    if-eq v3, v7, :cond_5e8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e8

    :cond_5e8
    const/16 v1, -0x69

    :goto_5e9
    const/16 v3, -0x4f

    if-ge v1, v3, :cond_5e9

    const/16 v3, 0x5e9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x71c3f4e0

    if-eq v3, v7, :cond_5e9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e9

    :cond_5e9
    const/16 v1, 0x37

    :goto_5ea
    const/16 v3, 0x4f

    if-ge v1, v3, :cond_5ea

    const/16 v3, 0x5ea

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x75c7fe98

    if-eq v3, v7, :cond_5ea

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ea

    :cond_5ea
    const/16 v1, 0x79

    :goto_5eb
    if-ge v1, v5, :cond_5eb

    const/16 v3, 0x5eb

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x2d1cd9e

    if-eq v3, v7, :cond_5eb

    add-int/lit8 v1, v1, 0x1

    goto :goto_5eb

    :cond_5eb
    :goto_5ec
    if-ge v11, v5, :cond_5ec

    const/16 v1, 0x5ec

    int-to-byte v3, v11

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, 0x61410de0

    if-eq v1, v3, :cond_5ec

    add-int/lit8 v11, v11, 0x1

    goto :goto_5ec

    :cond_5ec
    const/16 v1, 0x8

    :goto_5ed
    const/16 v3, 0x20

    if-ge v1, v3, :cond_5ed

    const/16 v3, 0x5ed

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x58f0d53e

    if-eq v3, v7, :cond_5ed

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ed

    :cond_5ed
    const/16 v1, -0x3d

    :goto_5ee
    const/16 v3, -0x2a

    if-ge v1, v3, :cond_5ee

    const/16 v3, 0x5ee

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x4220cdee

    if-eq v3, v7, :cond_5ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ee

    :cond_5ee
    const/16 v1, 0x56

    :goto_5ef
    const/16 v3, 0x62

    if-ge v1, v3, :cond_5ef

    const/16 v3, 0x5ef

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x782a3c83

    if-eq v3, v7, :cond_5ef

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ef

    :cond_5ef
    const/16 v1, 0x21

    :goto_5f0
    const/16 v3, 0x36

    if-ge v1, v3, :cond_5f0

    const/16 v3, 0x5f0

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x68d5f955

    if-eq v3, v7, :cond_5f0

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f0

    :cond_5f0
    const/16 v1, -0x50

    :goto_5f1
    const/16 v3, -0x34

    if-ge v1, v3, :cond_5f1

    const/16 v3, 0x5f1

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1f61b82e

    if-eq v3, v7, :cond_5f1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f1

    :cond_5f1
    const/16 v1, 0x61

    :goto_5f2
    const/16 v3, 0x64

    if-ge v1, v3, :cond_5f2

    const/16 v3, 0x5f2

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x16ac6782

    if-eq v3, v7, :cond_5f2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f2

    :cond_5f2
    move v1, v15

    :goto_5f3
    const/16 v3, 0x7c

    if-ge v1, v3, :cond_5f3

    const/16 v3, 0x5f3

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3464f8ed    # -2.0319782E7f

    if-eq v3, v7, :cond_5f3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f3

    :cond_5f3
    const/4 v1, 0x6

    :goto_5f4
    const/16 v3, 0x12

    if-ge v1, v3, :cond_5f4

    const/16 v3, 0x5f4

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5385f4eb

    if-eq v3, v7, :cond_5f4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f4

    :cond_5f4
    const/16 v1, -0x70

    :goto_5f5
    const/16 v3, -0x59

    if-ge v1, v3, :cond_5f5

    const/16 v3, 0x5f5

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x469a1050

    if-eq v3, v7, :cond_5f5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f5

    :cond_5f5
    const/16 v1, -0x51

    :goto_5f6
    const/16 v3, -0x35

    if-ge v1, v3, :cond_5f6

    const/16 v3, 0x5f6

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x38a6f206

    if-eq v3, v7, :cond_5f6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f6

    :cond_5f6
    const/16 v1, -0x5a

    :goto_5f7
    const/16 v3, -0x51

    if-ge v1, v3, :cond_5f7

    const/16 v3, 0x5f7

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7e329dd6

    if-eq v3, v7, :cond_5f7

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f7

    :cond_5f7
    const/16 v1, -0x56

    :goto_5f8
    const/16 v3, -0x52

    if-ge v1, v3, :cond_5f8

    const/16 v3, 0x5f8

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x2e84e5ae

    if-eq v3, v7, :cond_5f8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f8

    :cond_5f8
    const/16 v1, -0x77

    :goto_5f9
    const/16 v3, -0x66

    if-ge v1, v3, :cond_5f9

    const/16 v3, 0x5f9

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x67892ff2

    if-eq v3, v7, :cond_5f9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f9

    :cond_5f9
    const/4 v1, -0x2

    :goto_5fa
    const/4 v3, 0x5

    if-ge v1, v3, :cond_5fa

    const/16 v3, 0x5fa

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1306dce8

    if-eq v3, v7, :cond_5fa

    add-int/lit8 v1, v1, 0x1

    goto :goto_5fa

    :cond_5fa
    const/16 v1, 0x67

    :goto_5fb
    if-ge v1, v5, :cond_5fb

    const/16 v3, 0x5fb

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5bbfad1c

    if-eq v3, v7, :cond_5fb

    add-int/lit8 v1, v1, 0x1

    goto :goto_5fb

    :cond_5fb
    const/16 v1, -0x7a

    :goto_5fc
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_5fc

    const/16 v3, 0x5fc

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7001fb29

    if-eq v3, v7, :cond_5fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_5fc

    :cond_5fc
    const/16 v1, 0x4b

    :goto_5fd
    const/16 v3, 0x58

    if-ge v1, v3, :cond_5fd

    const/16 v3, 0x5fd

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x5b8b7348

    if-eq v3, v7, :cond_5fd

    add-int/lit8 v1, v1, 0x1

    goto :goto_5fd

    :cond_5fd
    const/16 v1, 0x63

    :goto_5fe
    const/16 v3, 0x6d

    if-ge v1, v3, :cond_5fe

    const/16 v3, 0x5fe

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x40c90c61

    if-eq v3, v7, :cond_5fe

    add-int/lit8 v1, v1, 0x1

    goto :goto_5fe

    :cond_5fe
    const/16 v1, -0x77

    :goto_5ff
    const/16 v3, -0x67

    if-ge v1, v3, :cond_5ff

    const/16 v3, 0x5ff

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x3f827897

    if-eq v3, v7, :cond_5ff

    add-int/lit8 v1, v1, 0x1

    goto :goto_5ff

    :cond_5ff
    const/16 v1, -0x14

    :goto_600
    const/4 v3, -0x7

    if-ge v1, v3, :cond_600

    const/16 v3, 0x600

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0xf0e6319

    if-eq v3, v7, :cond_600

    add-int/lit8 v1, v1, 0x1

    goto :goto_600

    :cond_600
    const/16 v1, 0x18

    :goto_601
    const/16 v3, 0x29

    if-ge v1, v3, :cond_601

    const/16 v3, 0x601

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x374555ea

    if-eq v3, v7, :cond_601

    add-int/lit8 v1, v1, 0x1

    goto :goto_601

    :cond_601
    move v1, v12

    :goto_602
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_602

    const/16 v3, 0x602

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x2446a9a6

    if-eq v3, v7, :cond_602

    add-int/lit8 v1, v1, 0x1

    goto :goto_602

    :cond_602
    const/16 v1, 0x6d

    :goto_603
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_603

    const/16 v3, 0x603

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1038f879

    if-eq v3, v7, :cond_603

    add-int/lit8 v1, v1, 0x1

    goto :goto_603

    :cond_603
    const/16 v1, -0x63

    :goto_604
    const/16 v3, -0x53

    if-ge v1, v3, :cond_604

    const/16 v3, 0x604

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x699ec2b1

    if-eq v3, v7, :cond_604

    add-int/lit8 v1, v1, 0x1

    goto :goto_604

    :cond_604
    const/16 v1, -0x79

    :goto_605
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_605

    const/16 v3, 0x605

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x211c4b05

    if-eq v3, v7, :cond_605

    add-int/lit8 v1, v1, 0x1

    goto :goto_605

    :cond_605
    const/16 v1, 0x21

    :goto_606
    const/16 v3, 0x37

    if-ge v1, v3, :cond_606

    const/16 v3, 0x606

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x60b58546

    if-eq v3, v7, :cond_606

    add-int/lit8 v1, v1, 0x1

    goto :goto_606

    :cond_606
    const/16 v3, -0xb

    :goto_607
    const/4 v1, -0x3

    if-ge v3, v1, :cond_607

    const/16 v1, 0x607

    int-to-byte v7, v3

    aput-byte v7, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v7, -0x2796f3d8

    if-eq v1, v7, :cond_607

    add-int/lit8 v3, v3, 0x1

    goto :goto_607

    :cond_607
    const/16 v1, 0x9

    :goto_608
    const/16 v3, 0x25

    if-ge v1, v3, :cond_608

    const/16 v3, 0x608

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x136fbe82

    if-eq v3, v7, :cond_608

    add-int/lit8 v1, v1, 0x1

    goto :goto_608

    :cond_608
    const/4 v3, 0x1

    :goto_609
    const/16 v1, 0x11

    if-ge v3, v1, :cond_609

    const/16 v1, 0x609

    int-to-byte v7, v3

    aput-byte v7, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v7, 0x2665c74a

    if-eq v1, v7, :cond_609

    add-int/lit8 v3, v3, 0x1

    goto :goto_609

    :cond_609
    const/16 v1, -0x54

    :goto_60a
    const/16 v3, -0x45

    if-ge v1, v3, :cond_60a

    const/16 v3, 0x60a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3ad64a46

    if-eq v3, v7, :cond_60a

    add-int/lit8 v1, v1, 0x1

    goto :goto_60a

    :cond_60a
    const/16 v1, -0x39

    :goto_60b
    const/16 v3, -0x23

    if-ge v1, v3, :cond_60b

    const/16 v3, 0x60b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x713e60ef

    if-eq v3, v7, :cond_60b

    add-int/lit8 v1, v1, 0x1

    goto :goto_60b

    :cond_60b
    const/4 v1, -0x1

    :goto_60c
    const/16 v3, 0xb

    if-ge v1, v3, :cond_60c

    const/16 v3, 0x60c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x79fb338b

    if-eq v3, v7, :cond_60c

    add-int/lit8 v1, v1, 0x1

    goto :goto_60c

    :cond_60c
    const/16 v1, 0x18

    :goto_60d
    const/16 v3, 0x30

    if-ge v1, v3, :cond_60d

    const/16 v3, 0x60d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x4501cbf0

    if-eq v3, v7, :cond_60d

    add-int/lit8 v1, v1, 0x1

    goto :goto_60d

    :cond_60d
    const/16 v1, 0x3d

    :goto_60e
    const/16 v3, 0x48

    if-ge v1, v3, :cond_60e

    const/16 v3, 0x60e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2f4ee77b

    if-eq v3, v7, :cond_60e

    add-int/lit8 v1, v1, 0x1

    goto :goto_60e

    :cond_60e
    const/4 v1, -0x5

    :goto_60f
    const/16 v3, 0xc

    if-ge v1, v3, :cond_60f

    const/16 v3, 0x60f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2f4ee77b

    if-eq v3, v7, :cond_60f

    add-int/lit8 v1, v1, 0x1

    goto :goto_60f

    :cond_60f
    const/16 v1, -0x68

    :goto_610
    const/16 v3, -0x5d

    if-ge v1, v3, :cond_610

    const/16 v3, 0x610

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x1257707f

    if-eq v3, v7, :cond_610

    add-int/lit8 v1, v1, 0x1

    goto :goto_610

    :cond_610
    const/16 v1, -0x66

    :goto_611
    const/16 v3, -0x52

    if-ge v1, v3, :cond_611

    const/16 v3, 0x611

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x337b6604

    if-eq v3, v7, :cond_611

    add-int/lit8 v1, v1, 0x1

    goto :goto_611

    :cond_611
    const/16 v1, 0x52

    :goto_612
    const/16 v3, 0x60

    if-ge v1, v3, :cond_612

    const/16 v3, 0x612

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x6015455d

    if-eq v3, v7, :cond_612

    add-int/lit8 v1, v1, 0x1

    goto :goto_612

    :cond_612
    const/16 v1, -0x6b

    :goto_613
    const/16 v3, -0x55

    if-ge v1, v3, :cond_613

    const/16 v3, 0x613

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x765755b9

    if-eq v3, v7, :cond_613

    add-int/lit8 v1, v1, 0x1

    goto :goto_613

    :cond_613
    const/16 v1, 0x3f

    :goto_614
    const/16 v3, 0x4e

    if-ge v1, v3, :cond_614

    const/16 v3, 0x614

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x522fdbe5

    if-eq v3, v7, :cond_614

    add-int/lit8 v1, v1, 0x1

    goto :goto_614

    :cond_614
    const/16 v3, 0x43

    :goto_615
    const/16 v1, 0x59

    if-ge v3, v1, :cond_615

    const/16 v1, 0x615

    int-to-byte v7, v3

    aput-byte v7, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v7, 0x1d15bc88

    if-eq v1, v7, :cond_615

    add-int/lit8 v3, v3, 0x1

    goto :goto_615

    :cond_615
    const/4 v1, 0x3

    :goto_616
    const/16 v3, 0xc

    if-ge v1, v3, :cond_616

    const/16 v3, 0x616

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x53aa5241

    if-eq v3, v7, :cond_616

    add-int/lit8 v1, v1, 0x1

    goto :goto_616

    :cond_616
    const/16 v3, -0x72

    :goto_617
    const/16 v1, -0x6a

    if-ge v3, v1, :cond_617

    const/16 v1, 0x617

    int-to-byte v7, v3

    aput-byte v7, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v7, -0x5331dd2

    if-eq v1, v7, :cond_617

    add-int/lit8 v3, v3, 0x1

    goto :goto_617

    :cond_617
    const/16 v1, -0x6f

    :goto_618
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_618

    const/16 v3, 0x618

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x697cab2

    if-eq v3, v7, :cond_618

    add-int/lit8 v1, v1, 0x1

    goto :goto_618

    :cond_618
    move v1, v14

    :goto_619
    const/16 v3, 0x65

    if-ge v1, v3, :cond_619

    const/16 v3, 0x619

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x487d6dd3

    if-eq v3, v7, :cond_619

    add-int/lit8 v1, v1, 0x1

    goto :goto_619

    :cond_619
    const/16 v1, -0x13

    :goto_61a
    if-ge v1, v4, :cond_61a

    const/16 v3, 0x61a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x43e63409

    if-eq v3, v7, :cond_61a

    add-int/lit8 v1, v1, 0x1

    goto :goto_61a

    :cond_61a
    const/16 v1, -0x64

    :goto_61b
    const/16 v3, -0x5f

    if-ge v1, v3, :cond_61b

    const/16 v3, 0x61b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2bf9f4f1

    if-eq v3, v7, :cond_61b

    add-int/lit8 v1, v1, 0x1

    goto :goto_61b

    :cond_61b
    const/16 v1, -0x66

    :goto_61c
    const/16 v3, -0x47

    if-ge v1, v3, :cond_61c

    const/16 v3, 0x61c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5ef80573

    if-eq v3, v7, :cond_61c

    add-int/lit8 v1, v1, 0x1

    goto :goto_61c

    :cond_61c
    const/16 v1, 0x57

    :goto_61d
    if-ge v1, v14, :cond_61d

    const/16 v3, 0x61d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x299f4e7e

    if-eq v3, v7, :cond_61d

    add-int/lit8 v1, v1, 0x1

    goto :goto_61d

    :cond_61d
    const/16 v1, -0x75

    :goto_61e
    const/16 v3, -0x65

    if-ge v1, v3, :cond_61e

    const/16 v3, 0x61e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x76c55aae

    if-eq v3, v7, :cond_61e

    add-int/lit8 v1, v1, 0x1

    goto :goto_61e

    :cond_61e
    const/16 v1, -0x1f

    :goto_61f
    const/4 v3, -0x7

    if-ge v1, v3, :cond_61f

    const/16 v3, 0x61f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x889ecf6

    if-eq v3, v7, :cond_61f

    add-int/lit8 v1, v1, 0x1

    goto :goto_61f

    :cond_61f
    const/16 v1, -0xa

    :goto_620
    const/4 v3, -0x4

    if-ge v1, v3, :cond_620

    const/16 v3, 0x620

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3450ab24    # -2.2981048E7f

    if-eq v3, v7, :cond_620

    add-int/lit8 v1, v1, 0x1

    goto :goto_620

    :cond_620
    const/16 v1, 0x69

    :goto_621
    const/16 v3, 0x75

    if-ge v1, v3, :cond_621

    const/16 v3, 0x621

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x67e2c135

    if-eq v3, v7, :cond_621

    add-int/lit8 v1, v1, 0x1

    goto :goto_621

    :cond_621
    const/16 v1, 0x2d

    :goto_622
    const/16 v3, 0x30

    if-ge v1, v3, :cond_622

    const/16 v3, 0x622

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1d88f0a8

    if-eq v3, v7, :cond_622

    add-int/lit8 v1, v1, 0x1

    goto :goto_622

    :cond_622
    const/16 v1, -0x61

    :goto_623
    const/16 v3, -0x49

    if-ge v1, v3, :cond_623

    const/16 v3, 0x623

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x4e7a28eb

    if-eq v3, v7, :cond_623

    add-int/lit8 v1, v1, 0x1

    goto :goto_623

    :cond_623
    const/16 v1, 0x67

    :goto_624
    const/16 v3, 0x7e

    if-ge v1, v3, :cond_624

    const/16 v3, 0x624

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7ed6820a

    if-eq v3, v7, :cond_624

    add-int/lit8 v1, v1, 0x1

    goto :goto_624

    :cond_624
    const/16 v1, 0x3f

    :goto_625
    const/16 v3, 0x52

    if-ge v1, v3, :cond_625

    const/16 v3, 0x625

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x69f5b38f

    if-eq v3, v7, :cond_625

    add-int/lit8 v1, v1, 0x1

    goto :goto_625

    :cond_625
    const/16 v1, 0x3f

    :goto_626
    if-ge v1, v6, :cond_626

    const/16 v3, 0x626

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3df352c0

    if-eq v3, v7, :cond_626

    add-int/lit8 v1, v1, 0x1

    goto :goto_626

    :cond_626
    const/16 v1, 0x56

    :goto_627
    const/16 v3, 0x67

    if-ge v1, v3, :cond_627

    const/16 v3, 0x627

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3efdaea7

    if-eq v3, v7, :cond_627

    add-int/lit8 v1, v1, 0x1

    goto :goto_627

    :cond_627
    const/16 v1, 0x41

    :goto_628
    const/16 v3, 0x4d

    if-ge v1, v3, :cond_628

    const/16 v3, 0x628

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x6e1fab85

    if-eq v3, v7, :cond_628

    add-int/lit8 v1, v1, 0x1

    goto :goto_628

    :cond_628
    const/16 v1, -0x4e

    :goto_629
    if-ge v1, v9, :cond_629

    const/16 v3, 0x629

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x1b47ade5

    if-eq v3, v7, :cond_629

    add-int/lit8 v1, v1, 0x1

    goto :goto_629

    :cond_629
    const/16 v1, -0x42

    :goto_62a
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_62a

    const/16 v3, 0x62a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x2c171195

    if-eq v3, v7, :cond_62a

    add-int/lit8 v1, v1, 0x1

    goto :goto_62a

    :cond_62a
    const/16 v1, -0x80

    :goto_62b
    const/16 v3, -0x6a

    if-ge v1, v3, :cond_62b

    const/16 v3, 0x62b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x39c3e125

    if-eq v3, v7, :cond_62b

    add-int/lit8 v1, v1, 0x1

    goto :goto_62b

    :cond_62b
    const/16 v1, 0x66

    :goto_62c
    const/16 v3, 0x7d

    if-ge v1, v3, :cond_62c

    const/16 v3, 0x62c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x5183e3e8

    if-eq v3, v7, :cond_62c

    add-int/lit8 v1, v1, 0x1

    goto :goto_62c

    :cond_62c
    const/16 v1, -0x54

    :goto_62d
    const/16 v3, -0x45

    if-ge v1, v3, :cond_62d

    const/16 v3, 0x62d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3e13fec8

    if-eq v3, v7, :cond_62d

    add-int/lit8 v1, v1, 0x1

    goto :goto_62d

    :cond_62d
    const/16 v1, -0x78

    :goto_62e
    const/16 v3, -0x65

    if-ge v1, v3, :cond_62e

    const/16 v3, 0x62e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x107c598d

    if-eq v3, v7, :cond_62e

    add-int/lit8 v1, v1, 0x1

    goto :goto_62e

    :cond_62e
    const/16 v1, 0x25

    :goto_62f
    const/16 v3, 0x32

    if-ge v1, v3, :cond_62f

    const/16 v3, 0x62f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x1c170fae

    if-eq v3, v7, :cond_62f

    add-int/lit8 v1, v1, 0x1

    goto :goto_62f

    :cond_62f
    const/16 v1, -0x28

    :goto_630
    const/16 v3, -0x18

    if-ge v1, v3, :cond_630

    const/16 v3, 0x630

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7f58d411

    if-eq v3, v7, :cond_630

    add-int/lit8 v1, v1, 0x1

    goto :goto_630

    :cond_630
    const/16 v1, -0x6c

    :goto_631
    const/16 v3, -0x63

    if-ge v1, v3, :cond_631

    const/16 v3, 0x631

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x6c3e266

    if-eq v3, v7, :cond_631

    add-int/lit8 v1, v1, 0x1

    goto :goto_631

    :cond_631
    const/16 v1, -0x7e

    const/16 v3, -0x72

    :goto_632
    if-ge v1, v3, :cond_632

    const/16 v7, 0x632

    int-to-byte v10, v1

    aput-byte v10, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v10, -0x187095e0

    if-eq v7, v10, :cond_632

    add-int/lit8 v1, v1, 0x1

    goto :goto_632

    :cond_632
    :goto_633
    const/16 v1, -0x14

    if-ge v9, v1, :cond_633

    const/16 v1, 0x633

    int-to-byte v3, v9

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, -0x62bb8b8e

    if-eq v1, v3, :cond_633

    add-int/lit8 v9, v9, 0x1

    goto :goto_633

    :cond_633
    const/16 v1, -0x3c

    :goto_634
    const/16 v3, -0x25

    if-ge v1, v3, :cond_634

    const/16 v3, 0x634

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x54fb52d

    if-eq v3, v7, :cond_634

    add-int/lit8 v1, v1, 0x1

    goto :goto_634

    :cond_634
    const/4 v1, 0x3

    :goto_635
    const/16 v3, 0x17

    if-ge v1, v3, :cond_635

    const/16 v3, 0x635

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3b9ca665

    if-eq v3, v7, :cond_635

    add-int/lit8 v1, v1, 0x1

    goto :goto_635

    :cond_635
    const/16 v1, -0x3f

    const/16 v3, -0x31

    :goto_636
    if-ge v1, v3, :cond_636

    const/16 v7, 0x636

    int-to-byte v9, v1

    aput-byte v9, v0, v7

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v7

    const v9, -0x6ffb21cc

    if-eq v7, v9, :cond_636

    add-int/lit8 v1, v1, 0x1

    goto :goto_636

    :cond_636
    const/16 v1, 0x1d

    :goto_637
    const/16 v3, 0x27

    if-ge v1, v3, :cond_637

    const/16 v3, 0x637

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x64979935

    if-eq v3, v7, :cond_637

    add-int/lit8 v1, v1, 0x1

    goto :goto_637

    :cond_637
    const/16 v1, 0x2e

    :goto_638
    if-ge v1, v2, :cond_638

    const/16 v3, 0x638

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x7ee11303

    if-eq v3, v7, :cond_638

    add-int/lit8 v1, v1, 0x1

    goto :goto_638

    :cond_638
    const/16 v1, -0x5b

    :goto_639
    const/16 v3, -0x4a

    if-ge v1, v3, :cond_639

    const/16 v3, 0x639

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x3a93cfd2

    if-eq v3, v7, :cond_639

    add-int/lit8 v1, v1, 0x1

    goto :goto_639

    :cond_639
    const/16 v1, -0x42

    :goto_63a
    const/16 v3, -0x32

    if-ge v1, v3, :cond_63a

    const/16 v3, 0x63a

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x5e3bfaf9

    if-eq v3, v7, :cond_63a

    add-int/lit8 v1, v1, 0x1

    goto :goto_63a

    :cond_63a
    const/16 v1, 0x2d

    :goto_63b
    const/16 v3, 0x3d

    if-ge v1, v3, :cond_63b

    const/16 v3, 0x63b

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x144622c0

    if-eq v3, v7, :cond_63b

    add-int/lit8 v1, v1, 0x1

    goto :goto_63b

    :cond_63b
    const/16 v1, 0x4c

    :goto_63c
    if-ge v1, v14, :cond_63c

    const/16 v3, 0x63c

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x22229dc6

    if-eq v3, v7, :cond_63c

    add-int/lit8 v1, v1, 0x1

    goto :goto_63c

    :cond_63c
    const/16 v1, -0xf

    :goto_63d
    if-gez v1, :cond_63d

    const/16 v3, 0x63d

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x395f542

    if-eq v3, v7, :cond_63d

    add-int/lit8 v1, v1, 0x1

    goto :goto_63d

    :cond_63d
    const/16 v1, -0x62

    :goto_63e
    const/16 v3, -0x4c

    if-ge v1, v3, :cond_63e

    const/16 v3, 0x63e

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x7aa5a73e

    if-eq v3, v7, :cond_63e

    add-int/lit8 v1, v1, 0x1

    goto :goto_63e

    :cond_63e
    const/16 v1, 0x4f

    :goto_63f
    const/16 v3, 0x58

    if-ge v1, v3, :cond_63f

    const/16 v3, 0x63f

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x4e3418b7    # 7.5537965E8f

    if-eq v3, v7, :cond_63f

    add-int/lit8 v1, v1, 0x1

    goto :goto_63f

    :cond_63f
    const/16 v1, -0x39

    :goto_640
    const/16 v3, -0x2d

    if-ge v1, v3, :cond_640

    const/16 v3, 0x640

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, -0x73a5afdf

    if-eq v3, v7, :cond_640

    add-int/lit8 v1, v1, 0x1

    goto :goto_640

    :cond_640
    const/16 v1, -0x50

    :goto_641
    const/16 v3, -0x3d

    if-ge v1, v3, :cond_641

    const/16 v3, 0x641

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x4142eb43

    if-eq v3, v7, :cond_641

    add-int/lit8 v1, v1, 0x1

    goto :goto_641

    :cond_641
    const/16 v1, -0x35

    :goto_642
    const/16 v3, -0x19

    if-ge v1, v3, :cond_642

    const/16 v3, 0x642

    int-to-byte v7, v1

    aput-byte v7, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v7, 0x235b1e43

    if-eq v3, v7, :cond_642

    add-int/lit8 v1, v1, 0x1

    goto :goto_642

    :cond_642
    const/16 v3, 0x65

    :goto_643
    if-ge v3, v5, :cond_643

    const/16 v1, 0x643

    int-to-byte v7, v3

    aput-byte v7, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v7, -0x73651fed

    if-eq v1, v7, :cond_643

    add-int/lit8 v3, v3, 0x1

    goto :goto_643

    :cond_643
    const/16 v1, 0x67

    :goto_644
    if-ge v1, v15, :cond_644

    const/16 v3, 0x644

    int-to-byte v5, v1

    aput-byte v5, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v5, -0x23f7c4fa

    if-eq v3, v5, :cond_644

    add-int/lit8 v1, v1, 0x1

    goto :goto_644

    :cond_644
    const/16 v1, 0x10

    :goto_645
    const/16 v3, 0x28

    if-ge v1, v3, :cond_645

    const/16 v3, 0x645

    int-to-byte v5, v1

    aput-byte v5, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v5, 0x6fa15f94

    if-eq v3, v5, :cond_645

    add-int/lit8 v1, v1, 0x1

    goto :goto_645

    :cond_645
    :goto_646
    const/16 v1, 0x4b

    if-ge v8, v1, :cond_646

    const/16 v1, 0x646

    int-to-byte v3, v8

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, -0x563ea798

    if-eq v1, v3, :cond_646

    add-int/lit8 v8, v8, 0x1

    goto :goto_646

    :cond_646
    const/16 v1, -0x16

    const/16 v3, -0xb

    :goto_647
    if-ge v1, v3, :cond_647

    const/16 v5, 0x647

    int-to-byte v7, v1

    aput-byte v7, v0, v5

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v5

    const v7, -0x538b805d

    if-eq v5, v7, :cond_647

    add-int/lit8 v1, v1, 0x1

    goto :goto_647

    :cond_647
    const/16 v1, -0x7f

    :goto_648
    const/16 v3, -0x7a

    if-ge v1, v3, :cond_648

    const/16 v3, 0x648

    int-to-byte v5, v1

    aput-byte v5, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v5, 0x218633a

    if-eq v3, v5, :cond_648

    add-int/lit8 v1, v1, 0x1

    goto :goto_648

    :cond_648
    :goto_649
    const/4 v1, 0x7

    if-ge v4, v1, :cond_649

    const/16 v1, 0x649

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, -0x5f03e74d

    if-eq v1, v3, :cond_649

    add-int/lit8 v4, v4, 0x1

    goto :goto_649

    :cond_649
    :goto_64a
    if-ge v2, v6, :cond_64a

    const/16 v1, 0x64a

    int-to-byte v3, v2

    aput-byte v3, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v3, -0x165b51d4

    if-eq v1, v3, :cond_64a

    add-int/lit8 v2, v2, 0x1

    goto :goto_64a

    :cond_64a
    const/4 v1, -0x4

    :goto_64b
    const/16 v2, 0xa

    if-ge v1, v2, :cond_64b

    const/16 v2, 0x64b

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x3e202275

    if-eq v2, v3, :cond_64b

    add-int/lit8 v1, v1, 0x1

    goto :goto_64b

    :cond_64b
    const/16 v1, -0x3b

    :goto_64c
    const/16 v2, -0x24

    if-ge v1, v2, :cond_64c

    const/16 v2, 0x64c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x428b4796

    if-eq v2, v3, :cond_64c

    add-int/lit8 v1, v1, 0x1

    goto :goto_64c

    :cond_64c
    :goto_64d
    const/16 v1, 0x3f

    if-ge v12, v1, :cond_64d

    const/16 v1, 0x64d

    int-to-byte v2, v12

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v2, -0x761850e5

    if-eq v1, v2, :cond_64d

    add-int/lit8 v12, v12, 0x1

    goto :goto_64d

    :cond_64d
    const/16 v1, -0x7e

    :goto_64e
    const/16 v2, -0x69

    if-ge v1, v2, :cond_64e

    const/16 v2, 0x64e

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x596077ad

    if-eq v2, v3, :cond_64e

    add-int/lit8 v1, v1, 0x1

    goto :goto_64e

    :cond_64e
    const/16 v1, -0x2b

    :goto_64f
    const/16 v2, -0x13

    if-ge v1, v2, :cond_64f

    const/16 v2, 0x64f

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x2a4c1f25

    if-eq v2, v3, :cond_64f

    add-int/lit8 v1, v1, 0x1

    goto :goto_64f

    :cond_64f
    const/16 v1, -0x26

    :goto_650
    const/16 v2, -0x9

    if-ge v1, v2, :cond_650

    const/16 v2, 0x650

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x2411f752

    if-eq v2, v3, :cond_650

    add-int/lit8 v1, v1, 0x1

    goto :goto_650

    :cond_650
    const/16 v1, -0x52

    :goto_651
    const/16 v2, -0x4b

    if-ge v1, v2, :cond_651

    const/16 v2, 0x651

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x54c7d7e0

    if-eq v2, v3, :cond_651

    add-int/lit8 v1, v1, 0x1

    goto :goto_651

    :cond_651
    const/16 v1, 0x4c

    :goto_652
    const/16 v2, 0x60

    if-ge v1, v2, :cond_652

    const/16 v2, 0x652

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x78ea8d92

    if-eq v2, v3, :cond_652

    add-int/lit8 v1, v1, 0x1

    goto :goto_652

    :cond_652
    const/16 v1, 0x2b

    :goto_653
    const/16 v2, 0x3a

    if-ge v1, v2, :cond_653

    const/16 v2, 0x653

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x3be09d92

    if-eq v2, v3, :cond_653

    add-int/lit8 v1, v1, 0x1

    goto :goto_653

    :cond_653
    const/16 v1, -0x80

    :goto_654
    const/16 v2, -0x70

    if-ge v1, v2, :cond_654

    const/16 v2, 0x654

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x400fcba7

    if-eq v2, v3, :cond_654

    add-int/lit8 v1, v1, 0x1

    goto :goto_654

    :cond_654
    const/16 v1, -0x80

    :goto_655
    const/16 v2, -0x73

    if-ge v1, v2, :cond_655

    const/16 v2, 0x655

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x3056e19d

    if-eq v2, v3, :cond_655

    add-int/lit8 v1, v1, 0x1

    goto :goto_655

    :cond_655
    const/16 v1, 0x54

    :goto_656
    const/16 v2, 0x61

    if-ge v1, v2, :cond_656

    const/16 v2, 0x656

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x2f20e11a

    if-eq v2, v3, :cond_656

    add-int/lit8 v1, v1, 0x1

    goto :goto_656

    :cond_656
    const/4 v1, -0x2

    :goto_657
    const/16 v2, 0xa

    if-ge v1, v2, :cond_657

    const/16 v2, 0x657

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x27be42fd

    if-eq v2, v3, :cond_657

    add-int/lit8 v1, v1, 0x1

    goto :goto_657

    :cond_657
    const/16 v1, 0x35

    const/16 v2, 0x43

    :goto_658
    if-ge v1, v2, :cond_658

    const/16 v3, 0x658

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v4, 0x1a4c0066

    if-eq v3, v4, :cond_658

    add-int/lit8 v1, v1, 0x1

    goto :goto_658

    :cond_658
    :goto_659
    const/16 v1, 0x7e

    if-ge v15, v1, :cond_659

    const/16 v1, 0x659

    int-to-byte v2, v15

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v2, -0x71f008f

    if-eq v1, v2, :cond_659

    add-int/lit8 v15, v15, 0x1

    goto :goto_659

    :cond_659
    const/16 v1, -0x10

    :goto_65a
    const/4 v2, 0x2

    if-ge v1, v2, :cond_65a

    const/16 v2, 0x65a

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x46e6ed4c

    if-eq v2, v3, :cond_65a

    add-int/lit8 v1, v1, 0x1

    goto :goto_65a

    :cond_65a
    const/4 v1, -0x1

    const/16 v2, 0xc

    :goto_65b
    if-ge v1, v2, :cond_65b

    const/16 v3, 0x65b

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v4, -0x2c85c175

    if-eq v3, v4, :cond_65b

    add-int/lit8 v1, v1, 0x1

    goto :goto_65b

    :cond_65b
    const/16 v1, -0x1b

    :goto_65c
    const/16 v2, -0x14

    if-ge v1, v2, :cond_65c

    const/16 v2, 0x65c

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x339a0fb3

    if-eq v2, v3, :cond_65c

    add-int/lit8 v1, v1, 0x1

    goto :goto_65c

    :cond_65c
    const/16 v1, -0x5a

    :goto_65d
    const/16 v2, -0x48

    if-ge v1, v2, :cond_65d

    const/16 v2, 0x65d

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x6c23148c

    if-eq v2, v3, :cond_65d

    add-int/lit8 v1, v1, 0x1

    goto :goto_65d

    :cond_65d
    const/16 v7, -0x80

    :goto_65e
    const/16 v1, -0x6e

    if-ge v7, v1, :cond_65e

    const/16 v1, 0x65e

    int-to-byte v2, v7

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v1

    const v2, -0x7d02e244

    if-eq v1, v2, :cond_65e

    add-int/lit8 v7, v7, 0x1

    goto :goto_65e

    :cond_65e
    const/16 v1, -0x60

    :goto_65f
    const/16 v2, -0x58

    if-ge v1, v2, :cond_65f

    const/16 v2, 0x65f

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x69dc72be

    if-eq v2, v3, :cond_65f

    add-int/lit8 v1, v1, 0x1

    goto :goto_65f

    :cond_65f
    const/16 v1, 0x4d

    const/16 v2, 0x65

    :goto_660
    if-ge v1, v2, :cond_660

    const/16 v3, 0x660

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v3

    const v4, 0x352e151c

    if-eq v3, v4, :cond_660

    add-int/lit8 v1, v1, 0x1

    goto :goto_660

    :cond_660
    const/16 v1, -0x18

    :goto_661
    const/4 v2, -0x8

    if-ge v1, v2, :cond_661

    const/16 v2, 0x661

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, -0x34b8c39e    # -1.3057122E7f

    if-eq v2, v3, :cond_661

    add-int/lit8 v1, v1, 0x1

    goto :goto_661

    :cond_661
    const/16 v1, -0x33

    :goto_662
    const/16 v2, -0x22

    if-ge v1, v2, :cond_662

    const/16 v2, 0x662

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x4efef57c

    if-eq v2, v3, :cond_662

    add-int/lit8 v1, v1, 0x1

    goto :goto_662

    :cond_662
    const/16 v1, -0x20

    :goto_663
    const/16 v2, -0x13

    if-ge v1, v2, :cond_663

    const/16 v2, 0x663

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    invoke-static {v0}, Lcom/faceunity/fuauth_helper/a/a;->a([B)I

    move-result v2

    const v3, 0x3f89c889

    if-eq v2, v3, :cond_663

    add-int/lit8 v1, v1, 0x1

    goto :goto_663

    :cond_663
    return-object v0
.end method
