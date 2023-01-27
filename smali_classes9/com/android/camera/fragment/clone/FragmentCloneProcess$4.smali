.class Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;
.super Ljava/lang/Object;
.source "FragmentCloneProcess.java"

# interfaces
.implements Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/clone/FragmentCloneProcess;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelect(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/FragmentCloneProcess$4;->this$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-static {p0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->access$000(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->setSelectedPage(I)V

    return-void
.end method

.method public onPageSizeChanged(I)V
    .locals 0

    return-void
.end method
