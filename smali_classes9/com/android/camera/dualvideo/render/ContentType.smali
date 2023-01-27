.class public final enum Lcom/android/camera/dualvideo/render/ContentType;
.super Ljava/lang/Enum;
.source "ContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/render/ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_DARK_CORNER:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

.field public static final enum CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;


# instance fields
.field private mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_PREVIEW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_GRID_LINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_SELECTED_FRAME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_LABEL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_SCALING_HANDLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_SWITCH_HANDLE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_BLUR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

    new-instance v0, Lcom/android/camera/dualvideo/render/ContentType;

    const-string v1, "CONTENT_DARK_CORNER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/android/camera/dualvideo/render/ContentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_DARK_CORNER:Lcom/android/camera/dualvideo/render/ContentType;

    new-array v1, v10, [Lcom/android/camera/dualvideo/render/ContentType;

    sget-object v10, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_PREVIEW:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v10, v1, v2

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_GRID_LINE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SELECTED_FRAME:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_LABEL:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SCALING_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_SWITCH_HANDLE:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/camera/dualvideo/render/ContentType;->CONTENT_BLUR:Lcom/android/camera/dualvideo/render/ContentType;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/android/camera/dualvideo/render/ContentType;->$VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    iput p3, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/render/ContentType;
    .locals 1

    const-class v0, Lcom/android/camera/dualvideo/render/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/render/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/render/ContentType;
    .locals 1

    sget-object v0, Lcom/android/camera/dualvideo/render/ContentType;->$VALUES:[Lcom/android/camera/dualvideo/render/ContentType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/render/ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/render/ContentType;

    return-object v0
.end method


# virtual methods
.method public getWeight()I
    .locals 0

    iget p0, p0, Lcom/android/camera/dualvideo/render/ContentType;->mWeight:I

    return p0
.end method
