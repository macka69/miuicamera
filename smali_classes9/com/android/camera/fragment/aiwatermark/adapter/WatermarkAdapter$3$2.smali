.class Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$2;
.super Ljava/lang/Object;
.source "WatermarkAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->onPermissionResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$2;->this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3$2;->this$1:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;

    iget-object p0, p0, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter$3;->this$0:Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;->access$402(Lcom/android/camera/fragment/aiwatermark/adapter/WatermarkAdapter;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
