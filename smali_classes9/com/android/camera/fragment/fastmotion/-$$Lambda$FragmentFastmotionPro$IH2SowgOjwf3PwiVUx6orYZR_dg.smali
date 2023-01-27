.class public final synthetic Lcom/android/camera/fragment/fastmotion/-$$Lambda$FragmentFastmotionPro$IH2SowgOjwf3PwiVUx6orYZR_dg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/data/data/ComponentData;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/data/data/ComponentData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/-$$Lambda$FragmentFastmotionPro$IH2SowgOjwf3PwiVUx6orYZR_dg;->f$0:Lcom/android/camera/data/data/ComponentData;

    iput-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/-$$Lambda$FragmentFastmotionPro$IH2SowgOjwf3PwiVUx6orYZR_dg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/-$$Lambda$FragmentFastmotionPro$IH2SowgOjwf3PwiVUx6orYZR_dg;->f$0:Lcom/android/camera/data/data/ComponentData;

    iget-boolean p0, p0, Lcom/android/camera/fragment/fastmotion/-$$Lambda$FragmentFastmotionPro$IH2SowgOjwf3PwiVUx6orYZR_dg;->f$1:Z

    check-cast p1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-static {v0, p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;->lambda$onManuallyDataChanged$0(Lcom/android/camera/data/data/ComponentData;ZLcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;)V

    return-void
.end method
