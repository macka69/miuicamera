.class public Lcom/android/camera/storage/VideoTagSaveRequest;
.super Ljava/lang/Object;
.source "VideoTagSaveRequest.java"

# interfaces
.implements Lcom/android/camera/storage/SaveRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoTagSaveRequest"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/VideoTagSaveRequest;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mTags:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/storage/VideoTagSaveRequest;Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/storage/VideoTagSaveRequest;->addBox(Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V

    return-void
.end method

.method private addBox(Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V
    .locals 1

    const-class p0, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    if-nez p0, :cond_0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->createUdtaBox()Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->fourcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->createMsrtBox([B)Lorg/jcodec/containers/mp4/boxes/MsrtBox;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->fourcc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->createMtagBox([B)Lorg/jcodec/containers/mp4/boxes/MtagBox;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFinal()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/storage/VideoTagSaveRequest;->save()V

    return-void
.end method

.method public save()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mTags:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VideoTagSaveRequest"

    if-eqz v0, :cond_1

    const-string p0, "file path is null"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentVideoFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p0, "file is not exists"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string p0, " video file is illegal"

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    new-instance v2, Lorg/jcodec/movtool/RelocateMP4Editor;

    invoke-direct {v2}, Lorg/jcodec/movtool/RelocateMP4Editor;-><init>()V

    new-instance v3, Lcom/android/camera/storage/VideoTagSaveRequest$1;

    invoke-direct {v3, p0}, Lcom/android/camera/storage/VideoTagSaveRequest$1;-><init>(Lcom/android/camera/storage/VideoTagSaveRequest;)V

    invoke-virtual {v2, v0, v3}, Lorg/jcodec/movtool/RelocateMP4Editor;->modifyOrRelocate(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply error  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setContextAndCallback(Landroid/content/Context;Lcom/android/camera/storage/SaverCallback;)V
    .locals 0

    return-void
.end method

.method public setTags(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/storage/VideoTagSaveRequest;->mTags:Ljava/util/List;

    return-void
.end method
