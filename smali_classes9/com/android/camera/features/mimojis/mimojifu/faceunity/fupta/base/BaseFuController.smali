.class public abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;
.super Ljava/lang/Object;
.source "BaseFuController.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/extinterface/FuControllerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    }
.end annotation


# static fields
.field public static final FLIP_NO_XY:F = 0.0f

.field public static final FLIP_X:F = 1.0f

.field public static final FLIP_Y:F = 2.0f

.field public static final GIF_SIZE:I = 0x1f4

.field public static final I420:I = 0x10

.field public static final ICON_SIZE:I = 0x12c

.field public static INIT:Z = false

.field public static final ITEM_ARRAYS_BG:I = 0x0

.field public static final ITEM_ARRAYS_CONTROLLER:I = 0x1

.field public static final ITEM_ARRAYS_COUNT:I = 0x4

.field public static final ITEM_ARRAYS_EFFECT:I = 0x2

.field public static final ITEM_ARRAYS_FXAA:I = 0x3

.field public static final NV21:I = 0x0

.field public static RENDER_HEIGHT:I = 0x780

.field public static RENDER_WIDTH:I = 0x438

.field private static final TAG:Ljava/lang/String; = "BaseFuController"


# instance fields
.field protected volatile NeedMatrix:Z

.field protected _controller:I

.field protected _renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field protected avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

.field protected bindEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected biziIconCam:I

.field protected configIconItem:I

.field protected configItem:I

.field protected currentIconCam:I

.field protected destroyEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected ershiIconCam:I

.field protected faceRectData:[F

.field private flag:I

.field protected fuIsGLPrepared:Z

.field protected fuTexIconId:I

.field protected huziIconCam:I

.field protected isChangeMode:Z

.field protected isChangeModeDelay:Z

.field private isFront:Z

.field protected isNeedIcon:Z

.field protected isNeedTrackFace:Z

.field protected jiemaoIconCam:I

.field protected landmarksData:[F

.field protected lianxingIconCam:I

.field protected mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

.field private volatile mDeviceOrientation:I

.field private volatile mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrameId:I

.field protected mInputImageOrientation:I

.field protected final mItemsArray:[I

.field private volatile mNextEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected final mQueueLock:Ljava/lang/Object;

.field protected quebanIconCam:I

.field protected renouIconCam:I

.field protected volatile rotMode:I

.field protected tongueInfo:[F

.field protected toufaIconCam:I

.field protected toushiIconCam:I

.field protected yanjingIconCam:I

.field protected zuichunIconCam:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mInputImageOrientation:I

    new-instance v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    invoke-direct {v0}, Lcom/faceunity/wrapper/faceunity$AvatarInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->tongueInfo:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->faceRectData:[F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    const/16 v1, 0x96

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->landmarksData:[F

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isFront:Z

    const/16 v2, 0x5a

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->destroyEvents:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/16 v2, 0x39

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mPupilPos:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    return-void
.end method

.method private deQueueEvent()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onDrawFramePre(II)I
    .locals 0

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->prepareDrawFrame()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->TAG:Ljava/lang/String;

    const-string p1, "onDrawFrame date error"

    invoke-static {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private onEditAvatar([BIII)I
    .locals 10

    invoke-direct {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onDrawFramePre(II)I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindIconData()V

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->flag:I

    iget v8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v9, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move-object v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v9}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesWithCamera([BIIIII[I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/4 v3, 0x1

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 p1, v6, 0x1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move v4, p3

    move v5, p4

    invoke-static/range {v2 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    move-result p1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuTexIconId:I

    if-lez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "renderTimeBundles:"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "hyj"

    invoke-static {p2, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return p1
.end method

.method private onRenderAR([BIII)I
    .locals 8

    invoke-direct {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onDrawFramePre(II)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->flag:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesWithCamera([BIIIII[I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private onRenderAvatar([BIII)I
    .locals 8

    invoke-direct {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onDrawFramePre(II)I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    int-to-float v2, v2

    aput v2, v0, v1

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isNeedTrackFace:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->flag:I

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v7}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundlesWithCamera([BIIIII[I)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/4 v1, 0x1

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 p1, v4, 0x1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private onRenderNama([BIII)I
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onDrawFramePre(II)I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    invoke-static {p1, p2, p3, p4}, Lcom/faceunity/wrapper/faceunity;->fuTrackFace([BIII)I

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private onRenderPicture(II)I
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onDrawFramePre(II)I

    move-result v0

    if-nez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->landmarksData:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mPupilPos:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotationMode:[F

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iput-boolean v2, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mIsValid:Z

    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/16 v2, 0x80

    iget v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mBackgroundUtil:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BackgroundUtil;->drawBackground(I)I

    move-result p0

    return p0
.end method

.method private prepareDrawFrame()V
    .locals 4

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemError()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fuGetSystemErrorString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuGetSystemErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logShowE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->deQueueEvent()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->destroyEvents:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->destroyEvents:Ljava/util/List;

    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract bindIconData()V
.end method

.method public clearSceneBind(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string p1, "destroy_all_instance"

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public commitAvatar()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->destroyEvents:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->destroyEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract enterPicture()V
.end method

.method protected enterScene(I)V
    .locals 3

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterCurrentScene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    int-to-double v0, p1

    const-string p1, "current_scene_id"

    invoke-static {p0, p1, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method protected abstract exitPicture()V
.end method

.method public fuIsGLPrepared()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuIsGLPrepared([I)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimojifu fuIsGLPrepared:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    return p0
.end method

.method public fuPrepareGLResource()V
    .locals 8

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    sget-object v2, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    const-string v3, "program_binary_directory"

    invoke-static {v1, v3, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string v2, "prepare_gl_use_program_binary"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    iget v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    sget-object v7, Lcom/android/camera/features/mimojis/mimojias/widget/helper/MimojiHelper;->SHADER_CACHE_DIR:Ljava/lang/String;

    invoke-static {v6, v3, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    invoke-static {v3, v2, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    new-array v0, v0, [I

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    aput p0, v0, v1

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuPrepareGLResource([I)V

    sget-object p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->TAG:Ljava/lang/String;

    const-string v0, "fuPrepareGLResource"

    invoke-static {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDeviceOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    return p0
.end method

.method public getExpressionData()[F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    const/4 v1, 0x0

    const-string v2, "expression"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object p0, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mExpression:[F

    return-object p0
.end method

.method public getFaceOcclusion()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuFaceProcessorGetResultFaceOcclusion(I)I

    move-result p0

    return p0
.end method

.method public getFaceRectData()[F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->faceRectData:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->faceRectData:[F

    const/4 v1, 0x0

    const-string v2, "face_rect"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->faceRectData:[F

    return-object p0
.end method

.method public getFuTexIconId()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuTexIconId:I

    return p0
.end method

.method public getLandmarksData()[F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->landmarksData:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->landmarksData:[F

    const/4 v1, 0x0

    const-string v2, "landmarks"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->landmarksData:[F

    return-object p0
.end method

.method public getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-object p0
.end method

.method public getRotMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    return p0
.end method

.method public getRotationData()[F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object v0, v0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    const/4 v1, 0x0

    const-string v2, "rotation"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    iget-object p0, p0, Lcom/faceunity/wrapper/faceunity$AvatarInfo;->mRotation:[F

    return-object p0
.end method

.method public getTongueData()[F
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->tongueInfo:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->tongueInfo:[F

    const/4 v1, 0x0

    const-string/jumbo v2, "tongue"

    invoke-static {v1, v2, v0}, Lcom/faceunity/wrapper/faceunity;->fuGetFaceInfo(ILjava/lang/String;[F)I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->tongueInfo:[F

    return-object p0
.end method

.method public isFuIsGLPrepared()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared:Z

    return p0
.end method

.method public isTracking()I
    .locals 0

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuIsTracking()I

    move-result p0

    return p0
.end method

.method public onCameraChange(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isFront:Z

    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;

    invoke-direct {p1, p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDrwaFrame()V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    sget v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    sget v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    iget v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    return-void
.end method

.method public onSurfaceCreated()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->release()V

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuDestroyAllItems()V

    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnDeviceLost()V

    return-void
.end method

.method protected openChildAnimation(Z)V
    .locals 2

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "enable_load_child_animation"

    invoke-static {p0, p1, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

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

.method public queueEvent(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public queueEventNoLock(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public queueNextEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mNextEventQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseAimModel(I)V
    .locals 0

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuReleaseAIModel(I)I

    return-void
.end method

.method public render([BIIII)I
    .locals 4

    const/4 v0, 0x1

    if-nez p5, :cond_0

    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->flag:I

    goto :goto_0

    :cond_0
    or-int/lit8 v1, p5, 0x1

    iput v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->flag:I

    :goto_0
    sget-boolean v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->INIT:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuIsGLPrepared()Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$4;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$BaseFuController$RenderMode:[I

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v0, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_5

    const/4 p5, 0x4

    if-eq v1, p5, :cond_4

    const/4 p1, 0x5

    if-eq v1, p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    invoke-direct {p0, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onRenderPicture(II)I

    move-result p1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onRenderAR([BIII)I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p5, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onRenderNama([BIII)I

    move-result p1

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onEditAvatar([BIII)I

    move-result p1

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->onRenderAvatar([BIII)I

    move-result p1

    :goto_1
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mFrameId:I

    if-ne p2, v0, :cond_8

    move p1, v2

    :cond_8
    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeModeDelay:Z

    if-eqz p2, :cond_9

    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeMode:Z

    iput-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isChangeModeDelay:Z

    :cond_9
    return p1
.end method

.method protected setArMode(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const-string p0, "enter_ar_mode"

    goto :goto_0

    :cond_0
    const-string p0, "quit_ar_mode"

    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public setFuTexIconId(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->fuTexIconId:I

    return-void
.end method

.method public setRotMode(I)V
    .locals 2

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->isFront:Z

    const/16 v0, 0x5a

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    div-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    const/16 v1, 0x10e

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mDeviceOrientation:I

    div-int/2addr p1, v0

    :goto_0
    iget v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    if-eq v0, p1, :cond_3

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEvent(Ljava/lang/Runnable;)V

    :cond_3
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->rotMode:I

    return-void
.end method
