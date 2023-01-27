.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;
.super Ljava/lang/Object;
.source "L.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

.field final synthetic val$controller:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

.field final synthetic val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Lcom/android/camera/dualvideo/remote/RemoteOnlineController;Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->val$controller:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    iput-object p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->access$102(Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;Z)Z

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->val$controller:Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->setConnectionSuspended(Lcom/android/camera/dualvideo/remote/RemoteDevice;Z)V

    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L$5;->val$device:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    invoke-virtual {p1, p0}, Lcom/android/camera/dualvideo/remote/setupwizard/screen/L;->onConnectivityStateChanged(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V

    return-void
.end method
