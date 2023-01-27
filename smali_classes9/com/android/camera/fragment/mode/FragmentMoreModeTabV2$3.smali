.class Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV2.java"

# interfaces
.implements Lcom/android/camera/fragment/mode/MoreModeListAnimation$OnSpringUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$500(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public canScrollUp()Z
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$500(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public getOverScrollX()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverScrollY()F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result p0

    return p0
.end method

.method public getRotate()F
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$500(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/android/camera/fragment/mode/ModeAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/camera/fragment/mode/ModeAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getRotate()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUpdate(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$300(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$400(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$302(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$402(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$500(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3$1;-><init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$3;)V

    invoke-static {p1, p2, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$600(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;Landroidx/recyclerview/widget/RecyclerView;Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$ForEachCallback;)V

    :cond_1
    return-void
.end method
