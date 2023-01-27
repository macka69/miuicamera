.class public final synthetic Lbn;
.super Ljava/lang/Object;

# interfaces
.implements Lap;


# instance fields
.field private final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbn;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lbn;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    add-int/lit8 v0, p1, -0x2

    sget v1, Lcom/google/lens/sdk/LensApi;->b:I

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method
