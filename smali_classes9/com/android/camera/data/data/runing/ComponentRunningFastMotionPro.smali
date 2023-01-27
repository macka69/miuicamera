.class public Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningFastMotionPro.java"


# instance fields
.field private mIsClosed:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mIsClosed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/data/data/runing/DataItemRunning;",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;-><init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V

    iput-object p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "0"

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string p0, "pref_fast_motion_pro_key"

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mIsClosed:Z

    return p0
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->mIsClosed:Z

    return-void
.end method
