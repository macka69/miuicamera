.class Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$BaseConfigChooser;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field protected alphaSize:I

.field protected blueSize:I

.field protected depthSize:I

.field protected greenSize:I

.field protected redSize:I

.field protected stencilSize:I

.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

.field private value:[I


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;IIIIII)V
    .locals 4

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->this$0:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;

    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v0, v2

    const/4 v2, 0x3

    aput p3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v0, v2

    const/4 v2, 0x7

    aput p5, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v0, v2

    const/16 v2, 0x9

    aput p6, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x3026

    aput v3, v0, v2

    const/16 v2, 0xb

    aput p7, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$BaseConfigChooser;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView;[I)V

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->value:[I

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->redSize:I

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->greenSize:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->blueSize:I

    iput p5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->alphaSize:I

    iput p6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->depthSize:I

    iput p7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->stencilSize:I

    return-void
.end method

.method private findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->value:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/EGL14;->eglGetConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I[II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->value:[I

    aget p0, p0, v1

    return p0

    :cond_0
    return p4
.end method


# virtual methods
.method public chooseConfig(Landroid/opengl/EGLDisplay;[Landroid/opengl/EGLConfig;)Landroid/opengl/EGLConfig;
    .locals 9

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    const/16 v4, 0x3025

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v4

    const/16 v5, 0x3026

    invoke-direct {p0, p1, v3, v5, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v5

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->depthSize:I

    if-lt v4, v6, :cond_0

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->stencilSize:I

    if-lt v5, v4, :cond_0

    const/16 v4, 0x3024

    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v4

    const/16 v5, 0x3023

    invoke-direct {p0, p1, v3, v5, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v5

    const/16 v6, 0x3022

    invoke-direct {p0, p1, v3, v6, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v6

    const/16 v7, 0x3021

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->findConfigAttrib(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;II)I

    move-result v7

    iget v8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->redSize:I

    if-ne v4, v8, :cond_0

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->greenSize:I

    if-ne v5, v4, :cond_0

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->blueSize:I

    if-ne v6, v4, :cond_0

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/weight/GLTextureView$ComponentSizeChooser;->alphaSize:I

    if-ne v7, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
