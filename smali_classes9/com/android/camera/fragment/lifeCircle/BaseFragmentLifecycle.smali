.class public Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;
.super Ljava/lang/Object;
.source "BaseFragmentLifecycle.java"

# interfaces
.implements Lcom/android/camera/fragment/lifeCircle/BaseLifeCycle;


# instance fields
.field private mIsDestroyed:Z

.field private mIsStarted:Z

.field private final mLifecycleListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    if-eqz p0, :cond_1

    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method onDestroy(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsDestroyed:Z

    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeDestroy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStart(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onStop(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mIsStarted:Z

    iget-object p0, p0, Lcom/android/camera/fragment/lifeCircle/BaseFragmentLifecycle;->mLifecycleListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeStop(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
