.class Lcom/android/camera/fragment/vv/FragmentVVProcess$9;
.super Ljava/lang/Object;
.source "FragmentVVProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVProcess;->onResultPreviewFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$1100(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVProcess$9;->this$0:Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-static {p0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;->access$1200(Lcom/android/camera/fragment/vv/FragmentVVProcess;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
