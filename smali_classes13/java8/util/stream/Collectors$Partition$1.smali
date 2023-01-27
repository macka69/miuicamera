.class Ljava8/util/stream/Collectors$Partition$1;
.super Ljava/util/AbstractSet;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/Collectors$Partition;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Boolean;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/Collectors$Partition;


# direct methods
.method constructor <init>(Ljava8/util/stream/Collectors$Partition;)V
    .locals 0

    iput-object p1, p0, Ljava8/util/stream/Collectors$Partition$1;->this$0:Ljava8/util/stream/Collectors$Partition;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Boolean;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p0, Ljava8/util/stream/Collectors$Partition$1;->this$0:Ljava8/util/stream/Collectors$Partition;

    iget-object v2, v2, Ljava8/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Ljava8/util/stream/Collectors$Partition$1;->this$0:Ljava8/util/stream/Collectors$Partition;

    iget-object p0, p0, Ljava8/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-direct {v1, v2, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
