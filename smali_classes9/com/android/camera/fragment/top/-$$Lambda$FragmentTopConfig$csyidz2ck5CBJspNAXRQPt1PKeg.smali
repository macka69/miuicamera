.class public final synthetic Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$csyidz2ck5CBJspNAXRQPt1PKeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$csyidz2ck5CBJspNAXRQPt1PKeg;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/top/-$$Lambda$FragmentTopConfig$csyidz2ck5CBJspNAXRQPt1PKeg;->f$0:Ljava/util/List;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->lambda$provideRotateItem$5(Ljava/util/List;Landroid/widget/ImageView;)V

    return-void
.end method
