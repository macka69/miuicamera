.class Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;
.super Ljava/lang/Object;
.source "FragmentVVWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->updateSelectedCount()V
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

    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {v0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$600(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/FragmentVVWorkspace$3;->this$0:Lcom/android/camera/fragment/vv/FragmentVVWorkspace;

    invoke-static {p0}, Lcom/android/camera/fragment/vv/FragmentVVWorkspace;->access$500(Lcom/android/camera/fragment/vv/FragmentVVWorkspace;)Lcom/android/camera/fragment/vv/FragmentVVWorkspace$FragmentVVWorkspaceFooterItemDecoration;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method
