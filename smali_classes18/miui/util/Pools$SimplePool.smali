.class public Lmiui/util/Pools$SimplePool;
.super Lmiui/util/Pools$a;
.source "Pools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
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
        "Lmiui/util/Pools$a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lmiui/util/Pools$Manager;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$Manager<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lmiui/util/Pools$a;-><init>(Lmiui/util/Pools$Manager;I)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Class;I)Lmiui/util/Pools$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiui/util/Pools$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lmiui/util/Pools;->d(Ljava/lang/Class;I)Lmiui/util/Pools$c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic acquire()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$a;->acquire()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method final b(Lmiui/util/Pools$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/Pools$b<",
            "TT;>;I)V"
        }
    .end annotation

    check-cast p1, Lmiui/util/Pools$c;

    invoke-static {p1, p2}, Lmiui/util/Pools;->c(Lmiui/util/Pools$c;I)V

    return-void
.end method

.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$a;->close()V

    return-void
.end method

.method public bridge synthetic getSize()I
    .locals 0

    invoke-super {p0}, Lmiui/util/Pools$a;->getSize()I

    move-result p0

    return p0
.end method

.method public bridge synthetic release(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/util/Pools$a;->release(Ljava/lang/Object;)V

    return-void
.end method
