.class Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;
.super Ljava/lang/Object;
.source "WatermarkAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->showCTADialog(Ljava/lang/String;ILcom/android/camera/aiwatermark/data/WatermarkItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showCTADialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$2;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$102(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Z)Z

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->updateCTAPreference(Z)V

    return-void
.end method
