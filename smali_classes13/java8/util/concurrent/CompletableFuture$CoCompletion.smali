.class final Ljava8/util/concurrent/CompletableFuture$CoCompletion;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CoCompletion"
.end annotation


# instance fields
.field base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/concurrent/CompletableFuture$BiCompletion;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture$BiCompletion<",
            "***>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$UniCompletion;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava8/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava8/util/concurrent/CompletableFuture;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$CoCompletion;->base:Ljava8/util/concurrent/CompletableFuture$BiCompletion;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method
