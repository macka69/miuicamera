.class final Lcg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcn;

.field private final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcg;->b:[B

    invoke-static {p1}, Lcn;->a([B)Lcn;

    move-result-object p1

    iput-object p1, p0, Lcg;->a:Lcn;

    return-void
.end method


# virtual methods
.method public final a()Lck;
    .locals 1

    iget-object v0, p0, Lcg;->a:Lcn;

    invoke-virtual {v0}, Lcn;->a()V

    new-instance v0, Lci;

    iget-object p0, p0, Lcg;->b:[B

    invoke-direct {v0, p0}, Lci;-><init>([B)V

    return-object v0
.end method
