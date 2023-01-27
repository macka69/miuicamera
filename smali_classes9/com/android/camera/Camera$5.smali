.class Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->showFirstUseHintIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_lpl_selector_use_hint_shown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->showLplSelectDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$Camera$5()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/Camera$5;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    new-instance v1, Lcom/android/camera/-$$Lambda$Camera$5$ReGlw2iUI5t9Ams9ZohQl8LFVck;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$Camera$5$ReGlw2iUI5t9Ams9ZohQl8LFVck;-><init>(Lcom/android/camera/Camera$5;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object p0, p0, Lcom/android/camera/ActivityBase;->mCameraRootView:Lcom/android/camera/ui/CameraRootView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraRootView;->enableTouchEvent()V

    :cond_1
    return-void
.end method
