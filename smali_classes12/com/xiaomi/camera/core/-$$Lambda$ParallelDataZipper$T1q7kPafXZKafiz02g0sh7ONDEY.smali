.class public final synthetic Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/camera/core/ParallelDataZipper;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;->f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iput-wide p2, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;->f$0:Lcom/xiaomi/camera/core/ParallelDataZipper;

    iget-wide v1, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$T1q7kPafXZKafiz02g0sh7ONDEY;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/camera/core/ParallelDataZipper;->lambda$releaseData$0$ParallelDataZipper(J)V

    return-void
.end method
