.class Ljava8/util/concurrent/CompletableFuture$AnyOf;
.super Ljava8/util/concurrent/CompletableFuture$Completion;
.source "CompletableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnyOf"
.end annotation


# instance fields
.field dep:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field src:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field srcs:[Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/concurrent/CompletableFuture;Ljava8/util/concurrent/CompletableFuture;[Ljava8/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;[",
            "Ljava8/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture$Completion;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object p3, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method final isLive()Z
    .locals 0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final tryFire(I)Ljava8/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava8/util/concurrent/CompletableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, v0, Ljava8/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v3, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v3, :cond_4

    iget-object v4, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->src:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->dep:Ljava8/util/concurrent/CompletableFuture;

    iput-object v1, p0, Ljava8/util/concurrent/CompletableFuture$AnyOf;->srcs:[Ljava8/util/concurrent/CompletableFuture;

    invoke-virtual {v3, v2}, Ljava8/util/concurrent/CompletableFuture;->completeRelay(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    array-length p0, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v5, v4, v2

    if-eq v5, v0, :cond_1

    invoke-virtual {v5}, Ljava8/util/concurrent/CompletableFuture;->cleanStack()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v3}, Ljava8/util/concurrent/CompletableFuture;->postComplete()V

    :cond_4
    :goto_1
    return-object v1
.end method
