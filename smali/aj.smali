.class final Laj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lak;


# direct methods
.method public constructor <init>(Lak;)V
    .locals 0

    iput-object p1, p0, Laj;->a:Lak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laj;->a:Lak;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Laj;->a:Lak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object p0, p0, Laj;->a:Lak;

    sget v0, Lbh;->f:I

    invoke-virtual {p0, v0, v0}, Lak;->a(II)V

    :cond_0
    return-void
.end method
