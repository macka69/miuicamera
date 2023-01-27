.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;
.super Ljava/lang/Object;
.source "Program.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

.field public mProgramHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->getDrawable2d()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->getLocations()V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F)V
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method public abstract drawFrame(I[F[F)V
.end method

.method public drawFrame(I[F[FIIII)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xba2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    invoke-static {p4, p5, p6, p7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    aget p0, v0, v2

    const/4 p1, 0x1

    aget p1, v0, p1

    const/4 p2, 0x2

    aget p2, v0, p2

    const/4 p3, 0x3

    aget p3, v0, p3

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public drawFrameMVP(I[F)V
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method protected abstract getDrawable2d()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;
.end method

.method protected abstract getLocations()V
.end method

.method public release()V
    .locals 1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mProgramHandle:I

    return-void
.end method

.method public updateTexCoordArray([F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateTexCoordArray([F)V

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Program;->mDrawable2d:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateVertexArray([F)V

    return-void
.end method
