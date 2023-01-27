.class public Lcom/android/camera/jcodec/MP4UtilEx;
.super Ljava/lang/Object;
.source "MP4UtilEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_SAVE_COVER:Ljava/lang/String; = "save_cover"

.field public static final BUNDLE_KEY_VIDEO_COVER_DATA:Ljava/lang/String; = "video_cover_data"

.field public static final BUNDLE_KEY_VIDEO_PATH:Ljava/lang/String; = "video_path"

.field public static final MEDIA_CUSTOM_VIDEO_COVER:Ljava/lang/String; = "custom_video_cover"

.field private static final TAG:Ljava/lang/String; = "MP4UtilEx"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/camera/jcodec/MP4UtilEx;->addBox(Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V

    return-void
.end method

.method private static addBox(Lorg/jcodec/containers/mp4/boxes/MovieBox;Ljava/lang/String;[B)V
    .locals 2

    const-class v0, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->createUdtaBox()Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_0
    const/4 p0, 0x0

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/jcodec/containers/mp4/boxes/MsrtBox;->createMsrtBox([B)Lorg/jcodec/containers/mp4/boxes/MsrtBox;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lorg/jcodec/containers/mp4/boxes/MtagBox;->createMtagBox([B)Lorg/jcodec/containers/mp4/boxes/MtagBox;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-class p0, Lcom/android/camera/jcodec/MCoverBox;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {p2}, Lcom/android/camera/jcodec/MCoverBox;->createCoverBox([B)Lcom/android/camera/jcodec/MCoverBox;

    move-result-object p0

    sget-object p1, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add cover "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->add(Lorg/jcodec/containers/mp4/boxes/Box;)V

    :cond_4
    return-void
.end method

.method public static getCover(Ljava/lang/String;Lcom/android/camera/CameraSize;[Landroid/graphics/Bitmap;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/camera/jcodec/MP4UtilEx;->readCover(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    aget-object v0, p2, v1

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    iget v2, p1, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr v0, v2

    const v2, 0x1fa400

    if-le v0, v2, :cond_0

    new-instance p1, Lcom/android/camera/CameraSize;

    const/16 v0, 0x780

    const/16 v2, 0x438

    invoke-direct {p1, v0, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_0
    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p0, v0, p1}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    aput-object p0, p2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public static parseUdta(Ljava/io/File;)Lorg/jcodec/containers/mp4/boxes/UdtaBox;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lcom/android/camera/jcodec/MP4UtilEx;->parseUdtaChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1
    throw v0
.end method

.method public static parseUdtaChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/UdtaBox;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/jcodec/common/io/SeekableByteChannel;->size()J

    move-result-wide v4

    const-string v0, "moov"

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/jcodec/containers/mp4/MP4Util;->findFirstAtom(Ljava/lang/String;Lorg/jcodec/common/io/SeekableByteChannel;JJ)Lorg/jcodec/containers/mp4/MP4Util$Atom;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/Header;->headerSize()J

    move-result-wide v2

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/UdtaBox;->fourcc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getOffset()J

    move-result-wide v5

    add-long v6, v5, v2

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getSize()J

    move-result-wide v8

    sub-long/2addr v8, v2

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Lorg/jcodec/containers/mp4/MP4Util;->findFirstAtom(Ljava/lang/String;Lorg/jcodec/common/io/SeekableByteChannel;JJ)Lorg/jcodec/containers/mp4/MP4Util$Atom;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->parseBox(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    return-object p0
.end method

.method public static readCover(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    const-string v1, "readCover E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/camera/jcodec/MP4UtilEx;->parseUdta(Ljava/io/File;)Lorg/jcodec/containers/mp4/boxes/UdtaBox;

    move-result-object p0

    const-class v3, Lcom/android/camera/jcodec/MCoverBox;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/jcodec/MCoverBox;->fourcc()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lcom/android/camera/jcodec/MCoverBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/jcodec/MCoverBox;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/jcodec/MCoverBox;->getData()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {v3, v6, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCover X , duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static writeTags(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/jcodec/MP4UtilEx$VideoTag;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "writeTags E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    const-string p1, "file path is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCurrentVideoFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object p0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    const-string p1, "file is not exists"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/camera/Util;->getDuration(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_3

    sget-object p0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    const-string p1, " video file is illegal"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    new-instance p0, Lorg/jcodec/movtool/RelocateMP4Editor;

    invoke-direct {p0}, Lorg/jcodec/movtool/RelocateMP4Editor;-><init>()V

    new-instance v3, Lcom/android/camera/jcodec/MP4UtilEx$1;

    invoke-direct {v3, p1}, Lcom/android/camera/jcodec/MP4UtilEx$1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v2, v3}, Lorg/jcodec/movtool/RelocateMP4Editor;->modifyOrRelocate(Ljava/io/File;Lorg/jcodec/movtool/MP4Edit;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-object p0, Lcom/android/camera/jcodec/MP4UtilEx;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeTags X , duration = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
