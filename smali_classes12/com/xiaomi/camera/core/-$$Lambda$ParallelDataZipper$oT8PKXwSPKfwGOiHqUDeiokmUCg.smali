.class public final synthetic Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$oT8PKXwSPKfwGOiHqUDeiokmUCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$oT8PKXwSPKfwGOiHqUDeiokmUCg;->f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$oT8PKXwSPKfwGOiHqUDeiokmUCg;->f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/ParallelDataZipper;->lambda$printDataForDebug$3$ParallelDataZipper()V

    return-void
.end method
