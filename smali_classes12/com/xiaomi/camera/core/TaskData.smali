.class public Lcom/xiaomi/camera/core/TaskData;
.super Ljava/lang/Object;
.source "TaskData.java"


# static fields
.field public static final PROCESS_SESSION_TYPE_2:I = 0x1

.field public static final PROCESS_SESSION_TYPE_DEFAULT:I


# instance fields
.field private mContainsFirstFrame:Z

.field private mDataBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTimestamp:J

.field private mTaskSessionType:I


# direct methods
.method public constructor <init>(Ljava/util/List;ZJ)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    iput-wide p3, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-void
.end method


# virtual methods
.method public containsFirstFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/camera/core/TaskData;->mContainsFirstFrame:Z

    return p0
.end method

.method public getDataBeans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/camera/core/CaptureData$CaptureDataBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/xiaomi/camera/core/TaskData;->mDataBeans:Ljava/util/List;

    return-object p0
.end method

.method public getFirstTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/camera/core/TaskData;->mFirstTimestamp:J

    return-wide v0
.end method

.method public getProcessSessionType()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/camera/core/TaskData;->mTaskSessionType:I

    return p0
.end method

.method public setProcessSessionType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/camera/core/TaskData;->mTaskSessionType:I

    return-void
.end method
