.class final Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;
.super Ljava/lang/Object;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TaskSubmitter"
.end annotation


# instance fields
.field final action:Ljava/lang/Runnable;

.field final executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$TaskSubmitter;->action:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
