.class Lcom/android/camera/network/download/DownloadTask$CoreTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/network/download/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequest:Lcom/android/camera/network/download/Request;

.field final synthetic this$0:Lcom/android/camera/network/download/DownloadTask;


# direct methods
.method constructor <init>(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/network/download/DownloadTask$CoreTask;)Lcom/android/camera/network/download/Request;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    iget-object p1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    invoke-static {p1, p0}, Lcom/android/camera/network/download/DownloadTask;->access$200(Lcom/android/camera/network/download/DownloadTask;Lcom/android/camera/network/download/Request;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "process download finish %d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadTask"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {p1}, Lcom/android/camera/network/download/DownloadTask;->access$300(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {p1}, Lcom/android/camera/network/download/DownloadTask;->access$300(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    const/4 v0, 0x5

    invoke-interface {p1, p0, v0}, Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;->onRequestComplete(Lcom/android/camera/network/download/Request;I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "process download finish %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTask"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->access$300(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->access$300(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/android/camera/network/download/DownloadTask$OnCompleteListener;->onRequestComplete(Lcom/android/camera/network/download/Request;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->access$400(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->this$0:Lcom/android/camera/network/download/DownloadTask;

    invoke-static {v0}, Lcom/android/camera/network/download/DownloadTask;->access$400(Lcom/android/camera/network/download/DownloadTask;)Lcom/android/camera/network/download/DownloadTask$OnProgressListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/network/download/DownloadTask$CoreTask;->mRequest:Lcom/android/camera/network/download/Request;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/android/camera/network/download/DownloadTask$OnProgressListener;->onProgressUpdate(Lcom/android/camera/network/download/Request;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/download/DownloadTask$CoreTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method publishProgress(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method
