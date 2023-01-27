.class Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field private needUpdateViewIfNull:Z

.field private noneedUpdateThumbnail:Z

.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;-><init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    iput-boolean p3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadThumbnailTask execute, lookatcache="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailUpdater"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadThumbnailTask thumbnailUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p0}, Lcom/android/camera/ThumbnailUpdater;->access$000(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    goto :goto_0

    :cond_2
    move p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v2

    :goto_1
    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailUri(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    :cond_5
    if-eqz v4, :cond_8

    iget-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_7

    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object p1

    if-nez p1, :cond_6

    move-object v4, v1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {p1}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object p1

    invoke-static {p1, v4, v2}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object p1

    goto :goto_2

    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadThumbnailTask no uri "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object p1, v1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LoadThumbnailTask t = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move-object p1, v1

    :goto_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_b

    return-object v1

    :cond_b
    new-array v5, v3, [Lcom/android/camera/Thumbnail;

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v6

    const-string v7, " thumbnail ="

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->isGalleryLocked()Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    invoke-static {v6, v5, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get last thumbnail from provider, code is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v6

    iget-object v8, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-static {v8}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/ActivityBase;->getSecureUriList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v5, v8, v4}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromUriList(Landroid/content/Context;[Lcom/android/camera/Thumbnail;Ljava/util/ArrayList;Landroid/net/Uri;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get last thumbnail from uri list, code is "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/4 v0, -0x1

    if-eq v4, v0, :cond_f

    if-eq v4, v3, :cond_e

    const/4 p1, 0x2

    if-eq v4, p1, :cond_d

    return-object v1

    :cond_d
    iput-boolean v3, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noneedUpdateThumbnail:Z

    return-object v1

    :cond_e
    aget-object p0, v5, v2

    return-object p0

    :cond_f
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask onPostExecute, thumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", canceled"

    goto :goto_0

    :cond_0
    const-string v1, ", not canceled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "noneedUpdateThumbnail is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noneedUpdateThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailUpdater"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->noneedUpdateThumbnail:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean p0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->needUpdateViewIfNull:Z

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/Thumbnail;

    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
