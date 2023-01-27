.class Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "FragmentMoreModeTabV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;Landroid/content/Context;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method private synthetic lambda$onLayoutCompleted$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$800(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->fadeScrollbar(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLayoutCompleted$0$FragmentMoreModeTabV2$4()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->lambda$onLayoutCompleted$0()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$700(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/mode/-$$Lambda$FragmentMoreModeTabV2$4$leVONzzp9cCT5551e81yLU-LRTY;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mode/-$$Lambda$FragmentMoreModeTabV2$4$leVONzzp9cCT5551e81yLU-LRTY;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$4;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
