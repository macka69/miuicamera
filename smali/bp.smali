.class public final Lbp;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V
    .locals 0

    iput-object p1, p0, Lbp;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismissCancelled()V
    .locals 1

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_0
    return-void
.end method

.method public final onDismissError()V
    .locals 1

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :goto_0
    const-string p0, "LensApi"

    const-string v0, "Error dismissing keyguard"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDismissSucceeded()V
    .locals 1

    iget-object v0, p0, Lbp;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lbp;->b:Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;->onLaunchStatusFetched(I)V

    :cond_0
    return-void
.end method
