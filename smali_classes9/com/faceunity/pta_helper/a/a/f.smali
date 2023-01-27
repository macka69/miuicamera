.class public final Lcom/faceunity/pta_helper/a/a/f;
.super Lcom/faceunity/pta_helper/a/a/c;
.source "WindowSurface.java"


# instance fields
.field private c:Landroid/view/Surface;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/faceunity/pta_helper/a/a/b;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/faceunity/pta_helper/a/a/c;-><init>(Lcom/faceunity/pta_helper/a/a/b;)V

    invoke-virtual {p0, p2}, Lcom/faceunity/pta_helper/a/a/c;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/faceunity/pta_helper/a/a/f;->c:Landroid/view/Surface;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/faceunity/pta_helper/a/a/f;->d:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    invoke-virtual {p0}, Lcom/faceunity/pta_helper/a/a/c;->a()V

    iget-object v0, p0, Lcom/faceunity/pta_helper/a/a/f;->c:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/faceunity/pta_helper/a/a/f;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/faceunity/pta_helper/a/a/f;->c:Landroid/view/Surface;

    :cond_1
    return-void
.end method
