.class Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;
.super Ljava/lang/Object;
.source "MultiFeatureManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->showDownloadCancelDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

.field final synthetic val$cancelRunnable:Ljava/lang/Runnable;

.field final synthetic val$featureName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iput-object p2, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "attr_feature_install_cancel_conform"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallOperation(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel confirm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FML"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->val$featureName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->cancelInstallFeature(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
