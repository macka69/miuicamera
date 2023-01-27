.class public final enum Lcom/android/camera/dualvideo/render/LayoutType;
.super Ljava/lang/Enum;
.source "LayoutType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/render/LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum FULL:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum MINI:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_10:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UP:Lcom/android/camera/dualvideo/render/LayoutType;

.field public static final enum UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;


# instance fields
.field private final mIndex:I

.field private final mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "MINI"

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/16 v5, 0x1e

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "DOWN_FULL"

    const/4 v6, 0x2

    const/16 v7, 0x32

    invoke-direct {v0, v1, v6, v3, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "UP_FULL"

    const/4 v8, 0x3

    invoke-direct {v0, v1, v8, v6, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "UP"

    const/4 v9, 0x4

    const/16 v10, 0xb

    invoke-direct {v0, v1, v9, v10, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "DOWN"

    const/4 v11, 0x5

    const/16 v12, 0xc

    invoke-direct {v0, v1, v11, v12, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "FULL"

    const/4 v7, 0x6

    const/16 v13, 0xd

    const/16 v14, 0x50

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_0"

    const/4 v14, 0x7

    const/16 v15, 0x14

    const/16 v7, 0x64

    invoke-direct {v0, v1, v14, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_1"

    const/16 v15, 0x8

    const/16 v14, 0x15

    invoke-direct {v0, v1, v15, v14, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_2"

    const/16 v14, 0x9

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_3"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v4, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_4"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v10, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_5"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v12, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_6"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v13, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_7"

    const/16 v15, 0xe

    const/16 v13, 0x1b

    invoke-direct {v0, v1, v15, v13, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_8"

    const/16 v13, 0xf

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v13, v15, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_9"

    const/16 v15, 0x10

    const/16 v13, 0x1d

    invoke-direct {v0, v1, v15, v13, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

    new-instance v0, Lcom/android/camera/dualvideo/render/LayoutType;

    const-string v1, "PATCH_10"

    const/16 v13, 0x11

    invoke-direct {v0, v1, v13, v5, v7}, Lcom/android/camera/dualvideo/render/LayoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_10:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v5, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->MINI:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->UP_FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->UP:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->DOWN:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->FULL:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_1:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_2:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_3:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_4:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_5:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_6:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_7:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_8:Lcom/android/camera/dualvideo/render/LayoutType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_9:Lcom/android/camera/dualvideo/render/LayoutType;

    aput-object v2, v1, v15

    aput-object v0, v1, v13

    sput-object v1, Lcom/android/camera/dualvideo/render/LayoutType;->$VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    iput p4, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mWeight:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->$VALUES:[Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/render/LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    return p0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mWeight:I

    return p0
.end method

.method public isGridWindowType()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/dualvideo/render/LayoutType;->mIndex:I

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
