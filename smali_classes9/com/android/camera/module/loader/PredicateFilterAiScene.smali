.class public Lcom/android/camera/module/loader/PredicateFilterAiScene;
.super Ljava/lang/Object;
.source "PredicateFilterAiScene.java"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Predicate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PredicateFilterAiScene"


# instance fields
.field private mCurrentDetectedScene:I

.field private mIsSupportIDCardMode:Z

.field private mLastChangeSceneTime:J

.field private mModuleWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Camera2Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mLastChangeSceneTime:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mIsSupportIDCardMode:Z

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Integer;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mModuleWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mCurrentDetectedScene:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mCurrentDetectedScene:I

    const/16 v2, 0x26

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mIsSupportIDCardMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mLastChangeSceneTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mCurrentDetectedScene:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mLastChangeSceneTime:J

    return v3

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mCurrentDetectedScene:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mLastChangeSceneTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mCurrentDetectedScene:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/loader/PredicateFilterAiScene;->mLastChangeSceneTime:J

    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/PredicateFilterAiScene;->test(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
