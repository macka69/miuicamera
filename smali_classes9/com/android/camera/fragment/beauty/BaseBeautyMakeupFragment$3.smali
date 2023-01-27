.class Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;
.super Ljava/lang/Object;
.source "BaseBeautyMakeupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->openExtraView(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xb4

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$800(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/data/data/TypeItem;

    iget-object p3, p3, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget-object p4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p4}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$800(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/camera/data/data/TypeItem;

    iget p4, p4, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 p5, 0x1

    invoke-interface {p1, p3, p4, p5}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;IZ)V

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$900(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$900(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$900(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/16 p1, 0xc8

    invoke-static {p0, p2, p1}, Lcom/android/camera/animation/FolmeUtils;->animationSlide(Landroid/view/View;II)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p1, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onExtraItemSelected(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->getShineType()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$800(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/data/data/TypeItem;

    invoke-virtual {p2}, Lcom/android/camera/data/data/TypeItem;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->isNeedScroll()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget-object p2, p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mExtraLayoutManager:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;

    invoke-static {p1, p3, p2}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$400(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;ILcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$MyLayoutManager;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$3;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$1000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$1100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V

    :cond_5
    return-void
.end method
