.class Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;
.super Ljava/lang/Object;
.source "FragmentVVWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->TAG:Ljava/lang/String;

    const-string v1, "mDeleteDialog onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$700(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceDeleteConfirm(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$700(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->deleteSelected()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$800(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$4;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$900(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;ZZ)V

    :cond_0
    return-void
.end method
