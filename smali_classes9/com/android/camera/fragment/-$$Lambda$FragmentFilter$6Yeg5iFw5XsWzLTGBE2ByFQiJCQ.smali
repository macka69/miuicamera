.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentFilter$6Yeg5iFw5XsWzLTGBE2ByFQiJCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentFilter$6Yeg5iFw5XsWzLTGBE2ByFQiJCQ;->f$0:Lcom/android/camera/fragment/FragmentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentFilter$6Yeg5iFw5XsWzLTGBE2ByFQiJCQ;->f$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentFilter;->lambda$drawRealtimeFilterOnGLThread$1$FragmentFilter()V

    return-void
.end method
