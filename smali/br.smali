.class public final Lbr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbs;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbs;

    invoke-direct {v0}, Lbs;-><init>()V

    iput-object v0, p0, Lbr;->a:Lbs;

    return-void
.end method

.method public constructor <init>(Lbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr;->a:Lbs;

    return-void
.end method


# virtual methods
.method public final a()Lbs;
    .locals 1

    iget-object p0, p0, Lbr;->a:Lbs;

    iget-object v0, p0, Lbs;->a:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbs;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot set both Bitmap and Bitmap URI."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lbr;->a:Lbs;

    iput-object p1, p0, Lbs;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lbr;->a:Lbs;

    iput-object p1, p0, Lbs;->c:Ljava/lang/Long;

    return-void
.end method
