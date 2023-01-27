.class public final Lfl;
.super Ljava/util/AbstractList;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lds;


# instance fields
.field public final a:Lds;


# direct methods
.method public constructor <init>(Lds;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lfl;->a:Lds;

    return-void
.end method


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfl;->a:Lds;

    invoke-interface {p0, p1}, Lds;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lfl;->a:Lds;

    invoke-interface {p0}, Lds;->d()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lds;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfl;->a:Lds;

    check-cast p0, Ldr;

    invoke-virtual {p0, p1}, Ldr;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lfk;

    invoke-direct {v0, p0}, Lfk;-><init>(Lfl;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lfj;

    invoke-direct {v0, p0, p1}, Lfj;-><init>(Lfl;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lfl;->a:Lds;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
