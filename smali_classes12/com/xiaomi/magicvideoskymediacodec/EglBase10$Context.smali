.class public Lcom/xiaomi/magicvideoskymediacodec/EglBase10$Context;
.super Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;
.source "EglBase10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/magicvideoskymediacodec/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/magicvideoskymediacodec/EglBase$Context;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/magicvideoskymediacodec/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/magicvideoskymediacodec/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/magicvideoskymediacodec/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method
