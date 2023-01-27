.class Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;
.super Ljava/lang/Object;
.source "MimojiFuEditGLTextureView.java"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEGLConfigChooser"
.end annotation


# instance fields
.field private final ATTR_ID:[I

.field private final ATTR_NAME:[Ljava/lang/String;

.field private final mConfigSpec:[I

.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;)V
    .locals 8

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->this$0:Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xd

    new-array p1, p1, [I

    const/16 v0, 0x3024

    const/4 v1, 0x0

    aput v0, p1, v1

    invoke-static {}, Lcom/mi/config/Device;->isRGB888EGLPreferred()Z

    move-result v0

    const/4 v2, 0x5

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v4, 0x1

    aput v0, p1, v4

    const/4 v0, 0x2

    const/16 v4, 0x3023

    aput v4, p1, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/mi/config/Device;->isRGB888EGLPreferred()Z

    move-result v4

    const/4 v5, 0x6

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    aput v4, p1, v0

    const/16 v0, 0x3022

    const/4 v4, 0x4

    aput v0, p1, v4

    invoke-static {}, Lcom/mi/config/Device;->isRGB888EGLPreferred()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    aput v0, p1, v2

    const/16 v0, 0x3025

    aput v0, p1, v5

    const/4 v0, 0x7

    aput v3, p1, v0

    const/16 v0, 0x3021

    aput v0, p1, v3

    const/16 v0, 0x9

    aput v1, p1, v0

    const/16 v0, 0xa

    const/16 v1, 0x3040

    aput v1, p1, v0

    const/16 v0, 0xb

    aput v4, p1, v0

    const/16 v0, 0xc

    const/16 v1, 0x3038

    aput v1, p1, v0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->mConfigSpec:[I

    new-array p1, v3, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->ATTR_ID:[I

    const-string v0, "R"

    const-string v1, "G"

    const-string v2, "B"

    const-string v3, "A"

    const-string v4, "D"

    const-string v5, "S"

    const-string v6, "ID"

    const-string v7, "CAVEAT"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3028
        0x3027
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;)V

    return-void
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v2

    :goto_0
    const/16 v6, 0x3026

    if-ge v5, v1, :cond_4

    aget-object v7, p3, v5

    const/16 v8, 0x3024

    invoke-interface {p1, p2, v7, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_0

    aget v7, v0, v2

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, p3, v5

    invoke-interface {p1, p2, v7, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    aget v6, v0, v2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    aget v6, v0, v2

    if-ge v6, v4, :cond_2

    aget v3, v0, v2

    aget-object v4, p3, v5

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eglGetConfigAttrib error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v3, :cond_5

    aget-object v3, p3, v2

    :cond_5
    invoke-interface {p1, p2, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->ATTR_ID:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v4, v4, v3

    invoke-interface {p1, p2, p3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Config chosen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget v2, v0, v1

    if-lez v2, :cond_1

    aget v5, v0, v1

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v7}, Lcom/android/camera/features/mimojis/mimojifu/widget/MimojiFuEditGLTextureView$MyEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No configs match configSpec"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglChooseConfig failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
