.class final Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;
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
    name = "DelayedCompleter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Ljava8/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;"
        }
    .end annotation
.end field

.field final u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/concurrent/CompletableFuture;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/concurrent/CompletableFuture<",
            "TU;>;TU;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava8/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;->f:Ljava8/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava8/util/concurrent/CompletableFuture$DelayedCompleter;->u:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava8/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
