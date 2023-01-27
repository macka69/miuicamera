.class public final synthetic Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$faGfUUkkKmwobmU32D9_xnXvqQ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$faGfUUkkKmwobmU32D9_xnXvqQ4;->f$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/-$$Lambda$FragmentVVFeature$faGfUUkkKmwobmU32D9_xnXvqQ4;->f$0:Lcom/android/camera/fragment/vv/FragmentVVFeature;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/FragmentVVFeature;->lambda$initView$0$FragmentVVFeature(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
