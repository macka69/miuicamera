.class interface abstract Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionManager;
.super Ljava/lang/Object;
.source "AABExtensionManager.java"


# virtual methods
.method public abstract activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation
.end method

.method public abstract createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;
        }
    .end annotation
.end method

.method public abstract getSplitActivitiesMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract isSplitActivity(Ljava/lang/String;)Z
.end method

.method public abstract isSplitReceiver(Ljava/lang/String;)Z
.end method

.method public abstract isSplitService(Ljava/lang/String;)Z
.end method
