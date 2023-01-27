.class public Lcom/ss/android/ttve/common/TEGLUtils;
.super Ljava/lang/Object;
.source "TEGLUtils.java"


# static fields
.field public static final FULLSCREEN_VERTICES:[F

.field private static final TAG:Ljava/lang/String; = "TEGLUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ss/android/ttve/common/TEGLUtils;->FULLSCREEN_VERTICES:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGLError(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v3, "unknown error"

    goto :goto_1

    :pswitch_1
    const-string v3, "invalid framebuffer operation"

    goto :goto_1

    :pswitch_2
    const-string v3, "out of memory"

    goto :goto_1

    :pswitch_3
    const-string v3, "invalid operation"

    goto :goto_1

    :pswitch_4
    const-string v3, "invalid value"

    goto :goto_1

    :pswitch_5
    const-string v3, "invalid enum"

    :goto_1
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    const-string v0, "After tag \"%s\" glGetError %s(0x%x) "

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "TEGLUtils"

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
