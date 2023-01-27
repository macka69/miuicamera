.class public final synthetic Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$CihtZzM4e4bIdYr32fKRzM2StJE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$CihtZzM4e4bIdYr32fKRzM2StJE;->f$0:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/-$$Lambda$ComponentRunningDualVideo$CihtZzM4e4bIdYr32fKRzM2StJE;->f$0:Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->lambda$getLayoutForSelect$10(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z

    move-result p0

    return p0
.end method
