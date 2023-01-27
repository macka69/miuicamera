.class public final Lcq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Leh;

.field public final b:Ljava/lang/Object;

.field final c:Leh;

.field public final d:Ldd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leh;Ljava/lang/Object;Leh;Ldd;)V
    .locals 2

    invoke-direct {p0}, Lcq;-><init>()V

    if-eqz p1, :cond_2

    iget-object v0, p4, Ldd;->b:Lfy;

    sget-object v1, Lfy;->k:Lfy;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    :goto_0
    iput-object p1, p0, Lcq;->a:Leh;

    iput-object p2, p0, Lcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcq;->c:Leh;

    iput-object p4, p0, Lcq;->d:Ldd;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null messageDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null containingTypeDefaultInstance"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lfy;
    .locals 0

    iget-object p0, p0, Lcq;->d:Ldd;

    iget-object p0, p0, Ldd;->b:Lfy;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcq;->d:Ldd;

    invoke-virtual {p0}, Ldd;->c()Lfz;

    move-result-object p0

    sget-object v0, Lfz;->h:Lfz;

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcq;->d:Ldd;

    invoke-virtual {p0}, Ldd;->c()Lfz;

    move-result-object p0

    sget-object v0, Lfz;->h:Lfz;

    if-ne p0, v0, :cond_0

    check-cast p1, Ldg;

    invoke-interface {p1}, Ldg;->a()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method
