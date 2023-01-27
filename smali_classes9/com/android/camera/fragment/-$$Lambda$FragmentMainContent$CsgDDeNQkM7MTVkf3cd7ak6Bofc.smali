.class public final synthetic Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/FragmentMainContent;

.field public final synthetic f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p3, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$0:Lcom/android/camera/fragment/FragmentMainContent;

    iget-object v1, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$1:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean p0, p0, Lcom/android/camera/fragment/-$$Lambda$FragmentMainContent$CsgDDeNQkM7MTVkf3cd7ak6Bofc;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/fragment/FragmentMainContent;->lambda$updateWatermarkSample$0$FragmentMainContent(Lcom/android/camera/aiwatermark/data/WatermarkItem;Z)V

    return-void
.end method
