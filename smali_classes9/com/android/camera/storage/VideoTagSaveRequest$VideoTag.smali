.class public Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;
.super Ljava/lang/Object;
.source "VideoTagSaveRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/VideoTagSaveRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoTag"
.end annotation


# instance fields
.field private boxType:Ljava/lang/String;

.field private data:[B

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->data:[B

    iput-object p3, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->boxType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBoxType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->boxType:Ljava/lang/String;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->data:[B

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/storage/VideoTagSaveRequest$VideoTag;->key:Ljava/lang/String;

    return-object p0
.end method
