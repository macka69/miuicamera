.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Mp2IFVT6WHWkAr8T56yLThUsQWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/LayoutType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Mp2IFVT6WHWkAr8T56yLThUsQWk;->f$0:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$Mp2IFVT6WHWkAr8T56yLThUsQWk;->f$0:Lcom/android/camera/dualvideo/render/LayoutType;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$refreshSelectData$9(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/UserSelectData;)V

    return-void
.end method
