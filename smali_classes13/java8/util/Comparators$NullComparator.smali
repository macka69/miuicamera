.class final Ljava8/util/Comparators$NullComparator;
.super Ljava/lang/Object;
.source "Comparators.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Comparators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x690c62b248f521b8L


# instance fields
.field private final nullFirst:Z

.field private final real:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ljava8/util/Comparators$NullComparator;->nullFirst:Z

    iput-object p2, p0, Ljava8/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Ljava8/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p2, :cond_4

    iget-boolean p0, p0, Ljava8/util/Comparators$NullComparator;->nullFirst:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    iget-object p0, p0, Ljava8/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    :goto_2
    return v2
.end method

.method public reversed()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava8/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava8/util/Comparators$NullComparator;->nullFirst:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Ljava8/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    :goto_0
    invoke-direct {v0, v1, p0}, Ljava8/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava8/util/Comparators$NullComparator;

    iget-boolean v1, p0, Ljava8/util/Comparators$NullComparator;->nullFirst:Z

    iget-object p0, p0, Ljava8/util/Comparators$NullComparator;->real:Ljava/util/Comparator;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava8/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava8/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method
