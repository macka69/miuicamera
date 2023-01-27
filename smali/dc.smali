.class public abstract Ldc;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# instance fields
.field public d:Lcu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lde;-><init>()V

    sget-object v0, Lcu;->c:Lcu;

    iput-object v0, p0, Ldc;->d:Lcu;

    return-void
.end method


# virtual methods
.method public final a(Lcq;)V
    .locals 1

    iget-object p1, p1, Lcq;->a:Leh;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde;

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final d()Lcu;
    .locals 2

    iget-object v0, p0, Ldc;->d:Lcu;

    iget-boolean v1, v0, Lcu;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcu;->c()Lcu;

    move-result-object v0

    iput-object v0, p0, Ldc;->d:Lcu;

    :cond_0
    iget-object p0, p0, Ldc;->d:Lcu;

    return-object p0
.end method
