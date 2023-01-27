.class final Lfe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lck;


# direct methods
.method public constructor <init>(Lck;)V
    .locals 0

    iput-object p1, p0, Lfe;->a:Lck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lfe;->a:Lck;

    invoke-virtual {p0}, Lck;->a()I

    move-result p0

    return p0
.end method
