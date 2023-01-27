.class public Lmiuix/core/util/Pools$SimplePool;
.super Lmiuix/core/util/Pools$BasePool;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiuix/core/util/Pools$BasePool<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lmiuix/core/util/Pools$Manager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiuix/core/util/Pools$BasePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->acquire()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->close()V

    return-void
.end method

.method final createInstanceHolder(Ljava/lang/Class;I)Lmiuix/core/util/Pools$IInstanceHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onPoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$InstanceHolder;

    move-result-object p0

    return-object p0
.end method

.method final destroyInstanceHolder(Lmiuix/core/util/Pools$IInstanceHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/core/util/Pools$IInstanceHolder<",
            "TT;>;I)V"
        }
    .end annotation

    check-cast p1, Lmiuix/core/util/Pools$InstanceHolder;

    invoke-static {p1, p2}, Lmiuix/core/util/Pools;->onPoolClose(Lmiuix/core/util/Pools$InstanceHolder;I)V

    return-void
.end method

.method public bridge synthetic getSize()I
    .locals 0

    invoke-super {p0}, Lmiuix/core/util/Pools$BasePool;->getSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/core/util/Pools$BasePool;->release(Ljava/lang/Object;)V

    return-void
.end method
