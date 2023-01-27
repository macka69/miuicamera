.class public abstract Lcom/faceunity/pta_helper/a/a/e;
.super Ljava/lang/Object;
.source "Program.java"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:Lcom/faceunity/pta_helper/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/faceunity/pta_helper/a/a/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/faceunity/pta_helper/a/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/faceunity/pta_helper/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/a/a/e;->a()Lcom/faceunity/pta_helper/a/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_helper/a/a/e;->b:Lcom/faceunity/pta_helper/a/a/a;

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/a/a/e;->b()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/faceunity/pta_helper/a/a/a;
.end method

.method public abstract a(I[F[F)V
.end method

.method protected abstract b()V
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/faceunity/pta_helper/a/a/e;->a:I

    return-void
.end method
