.class Ljava8/util/ImmutableCollections$MapN$1;
.super Ljava/util/AbstractSet;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/ImmutableCollections$MapN;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/ImmutableCollections$MapN;


# direct methods
.method constructor <init>(Ljava8/util/ImmutableCollections$MapN;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/ImmutableCollections$MapN$MapNIterator;

    iget-object p0, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    invoke-direct {v0, p0}, Ljava8/util/ImmutableCollections$MapN$MapNIterator;-><init>(Ljava8/util/ImmutableCollections$MapN;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Ljava8/util/ImmutableCollections$MapN$1;->this$0:Ljava8/util/ImmutableCollections$MapN;

    iget p0, p0, Ljava8/util/ImmutableCollections$MapN;->size:I

    return p0
.end method
