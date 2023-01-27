.class public Lcom/android/camera/ShareableMemoryFileBitmap;
.super Ljava/lang/Object;
.source "ShareableMemoryFileBitmap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareableMemoryFileBitmap"

.field private static final sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/camera/util/Singleton<",
            "Lcom/android/camera/ShareableMemoryFileBitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mByteCount:I

.field private mHeight:I

.field private mMemoryFile:Landroid/os/MemoryFile;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/ShareableMemoryFileBitmap$1;

    invoke-direct {v0}, Lcom/android/camera/ShareableMemoryFileBitmap$1;-><init>()V

    sput-object v0, Lcom/android/camera/ShareableMemoryFileBitmap;->sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ShareableMemoryFileBitmap$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;-><init>()V

    return-void
.end method

.method private declared-synchronized getBackingMemoryFile()Landroid/os/MemoryFile;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/android/camera/ShareableMemoryFileBitmap;
    .locals 1

    sget-object v0, Lcom/android/camera/ShareableMemoryFileBitmap;->sMemoryFileBitmapWrapper:Lcom/xiaomi/camera/util/Singleton;

    invoke-virtual {v0}, Lcom/xiaomi/camera/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShareableMemoryFileBitmap;

    return-object v0
.end method

.method private declared-synchronized setBackingMemoryFile(Landroid/os/MemoryFile;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mMemoryFile:Landroid/os/MemoryFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized getByteCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeight()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWidth()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Landroid/net/Uri;Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "preview"

    invoke-direct {v3, v4, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-direct {p0, v3}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    const-string p2, "case: null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/MemoryFile;->length()I

    move-result v3

    if-ge v3, v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/MemoryFile;->close()V

    new-instance v3, Landroid/os/MemoryFile;

    const-string v4, "preview"

    invoke-direct {v3, v4, v1}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-direct {p0, v3}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    const-string p2, "case: small"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v0, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    iput v1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;

    sget-object p1, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "case: reuse "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/android/camera/ShareableMemoryFileBitmap;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/ShareableMemoryFileBitmap;->getBackingMemoryFile()Landroid/os/MemoryFile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/ShareableMemoryFileBitmap;->setBackingMemoryFile(Landroid/os/MemoryFile;)V

    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mWidth:I

    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mHeight:I

    iput v0, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mByteCount:I

    iput-object p1, p0, Lcom/android/camera/ShareableMemoryFileBitmap;->mUri:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    monitor-exit p0

    return v0
.end method
