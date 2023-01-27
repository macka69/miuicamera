.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IvhsoEF--EnnO2bVHIPYcuZtc8s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItemInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IvhsoEF--EnnO2bVHIPYcuZtc8s;->f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$IvhsoEF--EnnO2bVHIPYcuZtc8s;->f$0:Lcom/android/camera/dualvideo/render/CameraItemInterface;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$saveSelectedStatus$23(Lcom/android/camera/dualvideo/render/CameraItemInterface;Lcom/android/camera/dualvideo/util/UserSelectData;)Z

    move-result p0

    return p0
.end method
