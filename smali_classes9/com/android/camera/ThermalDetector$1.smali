.class Lcom/android/camera/ThermalDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "ThermalDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ThermalDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ThermalDetector;


# direct methods
.method constructor <init>(Lcom/android/camera/ThermalDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/camera/ThermalDetector;->ACTION_TEMP_CHANGED:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/android/camera/ThermalDetector;->EXTRA_TEMP_STAGE:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/android/camera/ThermalDetector;->access$200()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive stage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit8 p1, p1, 0xa

    const/4 p2, 0x0

    const-string v0, "camera.test.auto"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p2}, Lcom/android/camera/ThermalDetector;->access$300(Lcom/android/camera/ThermalDetector;)I

    move-result p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p2, p1}, Lcom/android/camera/ThermalDetector;->access$302(Lcom/android/camera/ThermalDetector;I)I

    iget-object p0, p0, Lcom/android/camera/ThermalDetector$1;->this$0:Lcom/android/camera/ThermalDetector;

    invoke-static {p0}, Lcom/android/camera/ThermalDetector;->access$300(Lcom/android/camera/ThermalDetector;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/ThermalDetector;->access$400(Lcom/android/camera/ThermalDetector;I)V

    :cond_3
    return-void
.end method
