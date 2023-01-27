.class public Lcom/android/camera2/QuickViewParam;
.super Ljava/lang/Object;
.source "QuickViewParam.java"


# instance fields
.field public anchorFrame:Z

.field public needAnchorReadPixel:Z

.field public needDoAnchorFrame:Z

.field public quickShotAnimation:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera2/QuickViewParam;->quickShotAnimation:Z

    iput-boolean p2, p0, Lcom/android/camera2/QuickViewParam;->anchorFrame:Z

    iput-boolean p3, p0, Lcom/android/camera2/QuickViewParam;->needDoAnchorFrame:Z

    iput-boolean p4, p0, Lcom/android/camera2/QuickViewParam;->needAnchorReadPixel:Z

    return-void
.end method
