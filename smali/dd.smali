.class final Ldd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:Lfy;


# direct methods
.method public constructor <init>(ILfy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldd;->a:I

    iput-object p2, p0, Ldd;->b:Lfy;

    return-void
.end method

.method public static final a(Leg;Leh;)Leg;
    .locals 0

    check-cast p0, Lda;

    check-cast p1, Lde;

    invoke-virtual {p0, p1}, Lda;->a(Lde;)V

    return-object p0
.end method

.method public static final d()Lem;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ldd;->a:I

    return p0
.end method

.method public final b()Lfy;
    .locals 0

    iget-object p0, p0, Ldd;->b:Lfy;

    return-object p0
.end method

.method public final c()Lfz;
    .locals 0

    iget-object p0, p0, Ldd;->b:Lfy;

    iget-object p0, p0, Lfy;->s:Lfz;

    return-object p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ldd;

    iget p0, p0, Ldd;->a:I

    iget p1, p1, Ldd;->a:I

    sub-int/2addr p0, p1

    return p0
.end method
