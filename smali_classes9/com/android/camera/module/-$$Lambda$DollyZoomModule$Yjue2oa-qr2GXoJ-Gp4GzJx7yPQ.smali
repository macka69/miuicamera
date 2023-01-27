.class public final synthetic Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/DollyZoomModule;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;FZII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$1:F

    iput-boolean p3, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$2:Z

    iput p4, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$3:I

    iput p5, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$0:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$1:F

    iget-boolean v2, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$2:Z

    iget v3, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$3:I

    iget p0, p0, Lcom/android/camera/module/-$$Lambda$DollyZoomModule$Yjue2oa-qr2GXoJ-Gp4GzJx7yPQ;->f$4:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/camera/module/DollyZoomModule;->lambda$onDollyZoomState$3$DollyZoomModule(FZII)V

    return-void
.end method
