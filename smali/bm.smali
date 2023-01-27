.class public final synthetic Lbm;
.super Ljava/lang/Object;

# interfaces
.implements Lap;


# instance fields
.field private final a:Lcom/google/lens/sdk/LensApi;

.field private final b:Lbs;

.field private final c:J

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi;Lbs;JLandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm;->a:Lcom/google/lens/sdk/LensApi;

    iput-object p2, p0, Lbm;->b:Lbs;

    iput-wide p3, p0, Lbm;->c:J

    iput-object p5, p0, Lbm;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lbm;->a:Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lbm;->b:Lbs;

    iget-wide v2, p0, Lbm;->c:J

    iget-object p0, p0, Lbm;->d:Landroid/app/Activity;

    sget v4, Lbh;->b:I

    if-ne p1, v4, :cond_0

    invoke-virtual {v1}, Lbs;->b()Lbr;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbr;->a(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lbr;->a()Lbs;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/lens/sdk/LensApi;->a(Lbs;)V

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/lens/sdk/LensApi;->a(Landroid/app/Activity;)V

    return-void
.end method
