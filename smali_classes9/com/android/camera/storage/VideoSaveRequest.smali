.class public Lcom/android/camera/storage/VideoSaveRequest;
.super Ljava/lang/Object;
.source "VideoSaveRequest.java"

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSaveRequest"


# instance fields
.field private context:Landroid/content/Context;

.field private mContentValues:Landroid/content/ContentValues;

.field private mIsFinal:Z

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;"
        }
    .end annotation
.end field

.field public mUri:Landroid/net/Uri;

.field private mVideoPath:Ljava/lang/String;

.field private saverCallback:Lcom/android/camera/storage/SaverCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    iput-boolean p3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return-void
.end method

.method private addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    const-string v0, "Current video URI: "

    invoke-static {p1}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    const/4 v7, 0x0

    const-string v8, "VideoSaveRequest"

    if-nez v1, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete invalid video: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", deleted : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {p0, v4, p1}, Lcom/android/camera/storage/Storage;->getMediaUri(Landroid/content/Context;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v3, p0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addVideoToMediaStore: insert video cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "failed to add video to media store"

    invoke-static {v8, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method private checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/camera/storage/Storage;->isSecondPhoneStorage(Ljava/lang/String;)Z

    move-result p0

    invoke-static {}, Lcom/android/camera/storage/Storage;->isUsePhoneStorage()Z

    move-result p1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "VideoSaveRequest"

    const-string p1, "save video: sd card was ejected"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "_size"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "duration"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p2, "datetaken"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method private updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 9

    const-string v0, "Current video URI: "

    invoke-static {p2}, Lcom/android/camera/Util;->getVideoDuration(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    const-string v7, "VideoSaveRequest"

    const/4 v8, 0x0

    if-nez v1, :cond_0

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delete invalid video: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", deleted : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/storage/VideoSaveRequest;->updateContentValue(Landroid/content/ContentValues;JJ)Landroid/content/ContentValues;

    move-result-object p2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateVideoToMediaStore: insert video cost: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "failed to add video to media store"

    invoke-static {v7, p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mIsFinal:Z

    return p0
.end method

.method public onFinish()V
    .locals 2

    const-string v0, "VideoSaveRequest"

    const-string v1, "onFinish: runnable process finished"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->getSize()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/camera/storage/SaverCallback;->onSaveFinish(I)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->save()V

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->onFinish()V

    return-void
.end method

.method public save()V
    .locals 10

    const-string v0, "VideoSaveRequest"

    const-string v1, "save video: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoSaveRequest;->isFinal()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/storage/SaverCallback;->needThumbnail(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "custom_video_cover"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v8, "save_cover"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_3
    iget-object v9, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v8}, Lcom/android/camera/storage/VideoSaveRequest;->addVideoToMediaStore(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    const-string v3, "insert MediaProvider failed, need update mContentValues by Uri"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-direct {p0, v3, v8, v9}, Lcom/android/camera/storage/VideoSaveRequest;->updateVideoToMediaStore(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)I

    :cond_4
    const/4 v3, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save video: media has been stored, Uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", has thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v0, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/storage/VideoSaveRequest;->checkExternalStorageThumbnailInterupt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    :cond_5
    const/4 v1, 0x0

    if-eqz v2, :cond_6

    array-length v3, v2

    if-eqz v3, :cond_6

    const-string v3, "has preview video cover."

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v7, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v2, v8}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-array v3, v4, [Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v9}, Lcom/android/camera/Util;->getResolution(Landroid/content/ContentValues;)Lcom/android/camera/CameraSize;

    move-result-object v9

    invoke-static {v8, v9, v3}, Lcom/android/camera/jcodec/MP4UtilEx;->getCover(Ljava/lang/String;Lcom/android/camera/CameraSize;[Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_7

    aget-object v8, v3, v5

    if-eqz v8, :cond_7

    const-string v2, "get video cover form video file."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v3, v5

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    new-instance v7, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v2, v8}, Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    invoke-static {v3, v7}, Lcom/android/camera/jcodec/MP4UtilEx;->writeTags(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v2, :cond_9

    array-length v3, v2

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    array-length v7, v2

    invoke-static {v2, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2, v5, v5}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/camera/Util;->isHDR10Video(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v6, :cond_8

    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/storage/HDR10Thumbnail/HDR10ThumbnailUtil;->getHdr10Bitmap(Landroid/opengl/EGLContext;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/camera/Thumbnail;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1, v2, v4}, Lcom/android/camera/storage/SaverCallback;->postUpdateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {v1}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v3, v1, v4}, Lcom/android/camera/storage/SaverCallback;->notifyNewMediaData(Landroid/net/Uri;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/camera/storage/VideoSaveRequest;->mVideoPath:Ljava/lang/String;

    const-wide/16 v6, -0x1

    iget-object v3, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v8, "latitude"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    iget-object p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "longitude"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_4

    :cond_b
    move v4, v5

    :goto_4
    invoke-static {v1, v2, v6, v7, v4}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_5

    :cond_c
    if-eqz v1, :cond_d

    iget-object p0, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    invoke-interface {p0}, Lcom/android/camera/storage/SaverCallback;->postHideThumbnailProgressing()V

    :cond_d
    :goto_5
    const-string p0, "save video: end"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/storage/VideoSaveRequest;->saverCallback:Lcom/android/camera/storage/SaverCallback;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/VideoSaveRequest;->mTags:Ljava/util/List;

    return-void
.end method
