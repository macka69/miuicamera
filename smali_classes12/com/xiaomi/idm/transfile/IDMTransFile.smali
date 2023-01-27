.class public Lcom/xiaomi/idm/transfile/IDMTransFile;
.super Ljava/lang/Object;
.source "IDMTransFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/transfile/IDMTransFile$IDMTransFileCallback;,
        Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;
    }
.end annotation


# static fields
.field public static final IS_DIR:Ljava/lang/String; = "IS_DIR"

.field public static final IS_FILE:Ljava/lang/String; = "IS_FILE"


# instance fields
.field private mCreateTaskEnableFlag:I

.field private mHandle:J

.field private mNode:Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "idmtransfile"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/idm/transfile/IDMTransFile;->mCreateTaskEnableFlag:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/idm/transfile/IDMTransFile;->mHandle:J

    new-instance v0, Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;

    invoke-direct {v0, p0}, Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;-><init>(Lcom/xiaomi/idm/transfile/IDMTransFile;)V

    iput-object v0, p0, Lcom/xiaomi/idm/transfile/IDMTransFile;->mNode:Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;

    return-void
.end method


# virtual methods
.method public native IDMTransFileClientCreate(Ljava/lang/String;I)I
.end method

.method public native IDMTransFileRelease()Z
.end method

.method public native IDMTransFileServerCreate(Ljava/lang/String;I)I
.end method

.method public native getIDMTransFileReadyFlag()Z
.end method

.method public native registerInterface(Lcom/xiaomi/idm/transfile/IDMTransFile$IDMTransFileCallback;Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;)I
.end method

.method public native sendFile(Ljava/lang/String;)I
.end method

.method public setCallback(Lcom/xiaomi/idm/transfile/IDMTransFile$IDMTransFileCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/idm/transfile/IDMTransFile;->mNode:Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/idm/transfile/IDMTransFile;->registerInterface(Lcom/xiaomi/idm/transfile/IDMTransFile$IDMTransFileCallback;Lcom/xiaomi/idm/transfile/IDMTransFile$FileNode;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public native stopDataTrans(I)I
.end method
