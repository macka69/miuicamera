.class public Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
.super Ljava/lang/Object;
.source "MimojiFuManager.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MimojiFuManager"

.field public static final fps:I = 0x19

.field private static instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;


# instance fields
.field protected avatar_dir:Ljava/lang/String;

.field protected bgColor:[D

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

.field protected fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field private fuAvatarTempInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

.field protected fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

.field protected fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

.field protected index:I

.field private listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

.field protected mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

.field protected final mLock:Ljava/lang/Object;

.field private final mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

.field protected refreshRow:I

.field private tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->index:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshRow:I

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->create(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setLoadCompleteListener(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$LoadCompleteListener;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setItemTrigger()V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/extra/DataItemLive;->getMimojiStatusManager()Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x406fe00000000000L    # 255.0
    .end array-data
.end method

.method public static getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    return-object v0
.end method

.method public static getJustInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;
    .locals 1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->instance:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    return-object v0
.end method


# virtual methods
.method public CreateEmotionItem(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CreateEmotionItem(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    return-void
.end method

.method public Render([BIIII)I
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->render([BIIII)I

    move-result p0

    return p0
.end method

.method public clearAvatar()V
    .locals 2

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    const-string v1, "clearAvatar  x2"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->clearAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    :cond_1
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    return-void
.end method

.method public clearOfflineAll()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->clearOfflineAll()V

    return-void
.end method

.method public copyFuAvatar()Z
    .locals 5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    return v1

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tempFuAvatar == null , fuAvatar == null  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public createIconItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->createIconItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public destroyEmotionItem()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->destroyEmotionItem()V

    return-void
.end method

.method public enterARTemp()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->createAvatarInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarTempInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarTempInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    return-void
.end method

.method public enterTheFrontDesk()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->enterTheFrontDesk()V

    return-void
.end method

.method public exitBackstage()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->exitBackstage()V

    return-void
.end method

.method public getDeviceOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getDeviceOrientation()I

    move-result p0

    return p0
.end method

.method public getEmotionIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getEmotionIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getExpressionData()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getExpressionData()[F

    move-result-object p0

    return-object p0
.end method

.method public getFaceNum()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isTracking()I

    move-result p0

    return p0
.end method

.method public getFaceOcclusion()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getFaceOcclusion()I

    move-result p0

    return p0
.end method

.method public getFaceRect()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getFaceRectData()[F

    move-result-object p0

    return-object p0
.end method

.method public getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    return-object p0
.end method

.method public getFuControllerRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    move-result-object p0

    return-object p0
.end method

.method public getFuIconTexId()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getFuTexIconId()I

    move-result p0

    return p0
.end method

.method public getFuScene()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    return-object p0
.end method

.method public getIsInitItemFinish()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getIsInitItemFinish()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public getLandmarksData()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getLandmarksData()[F

    move-result-object p0

    return-object p0
.end method

.method public getRefreshRow()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return p0
.end method

.method public getRotMode()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getRotMode()I

    move-result p0

    return p0
.end method

.method public getRotationData()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getRotationData()[F

    move-result-object p0

    return-object p0
.end method

.method public getShowIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->index:I

    return p0
.end method

.method public getTongueData()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->getTongueData()[F

    move-result-object p0

    return-object p0
.end method

.method public insertAvatar(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;Z)V

    return-void
.end method

.method public isCanRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isCanRefresh()Z

    move-result p0

    return p0
.end method

.method public isDif()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->isDifferent(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)Z

    move-result p0

    return p0
.end method

.method public isFuGLPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared()Z

    move-result p0

    return p0
.end method

.method public isFuIsGLPrepared()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isFuIsGLPrepared()Z

    move-result p0

    return p0
.end method

.method public isNeedEnterFron()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->isNeedEnterFron()Z

    move-result p0

    return p0
.end method

.method public onAvatarBindEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onAvatarBindEnd()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCameraChange(ZI)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onCameraChange(ZI)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onLoadEnd()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onItemTrigger(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "hyj"

    if-eqz p0, :cond_0

    const-string p0, "name: empty"

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " path:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSceneBindEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;->onSceneBindEnd()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->onSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public onSurfaceDestroy()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->onSurfaceDestroyed()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queueIsEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->queueIsEmpty()Z

    move-result p0

    return p0
.end method

.method public queueNextEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueNextEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->refresh()V

    return-void
.end method

.method public refreshEditData()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->refreshEditData()V

    return-void
.end method

.method public refreshFuScene()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->getFuScene()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    return-void
.end method

.method public rendIconEnd(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconEnd(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method public rendIconStart(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshRow:I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->rendIconStart(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)V

    return-void
.end method

.method public renderIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->renderIcon(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Z

    move-result p0

    return p0
.end method

.method public resetAllFront()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setTargetPosition(DDDDI)V

    :cond_0
    return-void
.end method

.method public resetAllSide()V
    .locals 10

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3fc0000000000000L    # 0.125

    const/4 v9, 0x3

    invoke-virtual/range {v0 .. v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setTargetPosition(DDDDI)V

    return-void
.end method

.method public resetEditData()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->resetEditData()V

    return-void
.end method

.method public resetFuAvatar(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    const-string p1, "mimojifu tempFuAvatar null"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->copy()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    return-void
.end method

.method public save()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->save(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void
.end method

.method public setDefultFuScene()V
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "test setDefultFuScene"

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "default_bg.bundle"

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setBackground(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "light/light04.bundle"

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setLight(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const-string v2, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setCamera(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    const-string v1, "  "

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fuController setDynamicBackground : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "    (ar_mode):"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setDynamicBackground(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Z)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fuSceneInstance == null ; fuController == null : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-nez p3, :cond_4

    move p3, v2

    goto :goto_3

    :cond_4
    move p3, v3

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFuAvatarColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    return-void
.end method

.method public setFuScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setFuTexIconId(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->setFuTexIconId(I)V

    return-void
.end method

.method public setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    return-void
.end method

.method public setListener(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->listener:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager$OnCompleteListener;

    return-void
.end method

.method public setNeedTrackFace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setNeedTrackFace(Z)V

    return-void
.end method

.method public setRefreshRow(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->refreshRow:I

    return-void
.end method

.method public setRendIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setRendIconCallBack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController$RendIconCallBack;)V

    return-void
.end method

.method public setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[D)V

    return-void
.end method

.method public setRenderModeEdit(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRenderModeEdit(IZ)V

    return-void
.end method

.method public setRenderModeEdit(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x2

    aput-wide v1, v0, v3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-double v1, p1

    const/4 p1, 0x3

    aput-wide v1, v0, p1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setMode(I)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mMimojiStatusManager:Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiStatusManager;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->bgColor:[D

    invoke-virtual {p1, v0, p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;[DZ)V

    return-void
.end method

.method public setRotDelta(F)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->rotateDelta(D)V

    return-void
.end method

.method public setRotMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->setRotMode(I)V

    return-void
.end method

.method protected setScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->createSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setCurrentSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->setScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    return-void
.end method

.method public setTempFuAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->tempFuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    return-void
.end method

.method public showAvatar(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->showAvatar(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public showAvatar(Ljava/lang/String;ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->createSceneInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->setCurrentSceneInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->createAvatarInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->addCurrentAvatarInstance(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->avatar_dir:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_6

    :cond_2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " showAvatar   avatar_dir,force : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->load(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    const-string p2, "cartoon"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    :cond_3
    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const-string v1, "default_bg.bundle"

    invoke-virtual {p3, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setBackground(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    const-string v1, "camera/xiaomi_bg_cam.bundle"

    invoke-virtual {p3, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setCamera(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpSwitchAvatar(I)V

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    if-eqz p2, :cond_5

    const-string p2, "light/animal_light_v2.bundle"

    goto :goto_0

    :cond_5
    const-string p2, "light/light04.bundle"

    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;->setLight(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuSceneInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->mFuScene:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;

    invoke-virtual {p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;->setScene(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuScene;)V

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->avatar_dir:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->startTask()V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public showOrHideAvatar(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->showOrHideAvatar(Z)V

    return-void
.end method

.method public startRecordGif(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuAvatarInstance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    const/16 v4, 0x19

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->generateEmoticonPack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;IILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V

    return-void
.end method

.method public stopIconThread()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->stopIconThread()V

    return-void
.end method

.method public takeBuffer()[B
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getIconByte()[B

    move-result-object p0

    return-object p0
.end method
