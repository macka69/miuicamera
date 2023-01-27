.class final Ljava8/util/Spliterators$1;
.super Ljava8/util/Spliterators$IteratorSpliterator;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->setSpliterator(Ljava/util/Set;Ljava/lang/String;)Ljava8/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/Spliterators$IteratorSpliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$c:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Collection;ILjava/util/Set;)V
    .locals 0

    iput-object p3, p0, Ljava8/util/Spliterators$1;->val$c:Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Ljava8/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    iget-object p0, p0, Ljava8/util/Spliterators$1;->val$c:Ljava/util/Set;

    check-cast p0, Ljava/util/SortedSet;

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
