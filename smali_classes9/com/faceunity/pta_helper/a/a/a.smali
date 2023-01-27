.class public Lcom/faceunity/pta_helper/a/a/a;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# instance fields
.field private a:Ljava/nio/FloatBuffer;

.field private b:Ljava/nio/FloatBuffer;

.field private c:I


# direct methods
.method public constructor <init>([F[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/faceunity/pta_helper/a/a/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/a;->b:Ljava/nio/FloatBuffer;

    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/faceunity/pta_helper/a/a/a;->c:I

    invoke-static {p2}, Lcom/faceunity/pta_helper/a/a/d;->a([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/a;->a:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/a/a/a;->b:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public final b()Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lcom/faceunity/pta_helper/a/a/a;->a:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/faceunity/pta_helper/a/a/a;->c:I

    return p0
.end method
