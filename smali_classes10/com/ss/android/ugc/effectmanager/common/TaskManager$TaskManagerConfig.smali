.class public Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/effectmanager/common/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskManagerConfig"
.end annotation


# instance fields
.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;)Lcom/ss/android/ugc/effectmanager/context/EffectContext;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    return-object p0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public setEffectContext(Lcom/ss/android/ugc/effectmanager/context/EffectContext;)Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    return-object p0
.end method

.method public setExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/common/TaskManager$TaskManagerConfig;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
