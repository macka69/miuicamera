.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$kEw48PxE6qjqZD1Cpn65f-o8aFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/util/SelectIndex;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/util/SelectIndex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$kEw48PxE6qjqZD1Cpn65f-o8aFo;->f$0:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$CameraItemManager$kEw48PxE6qjqZD1Cpn65f-o8aFo;->f$0:Lcom/android/camera/dualvideo/util/SelectIndex;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->lambda$getRenderTypeBySelectIndex$6(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/util/UserSelectData;)Z

    move-result p0

    return p0
.end method
