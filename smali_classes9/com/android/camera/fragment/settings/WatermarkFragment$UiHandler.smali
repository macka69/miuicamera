.class final Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;
.super Landroid/os/Handler;
.source "WatermarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/settings/WatermarkFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/settings/WatermarkFragment$UiHandler;->this$0:Lcom/android/camera/fragment/settings/WatermarkFragment;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/settings/WatermarkFragment;->access$600(Lcom/android/camera/fragment/settings/WatermarkFragment;Landroid/os/Message;)V

    return-void
.end method
