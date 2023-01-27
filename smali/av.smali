.class final synthetic Lav;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lba;

.field private final b:Le;


# direct methods
.method public constructor <init>(Lba;Le;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lav;->a:Lba;

    iput-object p2, p0, Lav;->b:Le;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lav;->a:Lba;

    iget-object p0, p0, Lav;->b:Le;

    :try_start_0
    const-string v1, "LENS_SERVICE_SESSION"

    invoke-interface {p0, v1, v0}, Le;->a(Ljava/lang/String;Li;)Lg;

    move-result-object p0

    iget-object v1, v0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lax;

    invoke-direct {v2, v0, p0}, Lax;-><init>(Lba;Lg;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "LensServiceConnImpl"

    const-string v2, "Failed to create a Lens service session."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v0, Lba;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lay;

    invoke-direct {v1, v0}, Lay;-><init>(Lba;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
