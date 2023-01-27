.class Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;
.super Ljava/lang/Object;
.source "BaseBeautyMakeupFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

.field final synthetic val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget-object v1, v1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/beauty/MakeupSingleCheckAdapter;->getItemCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/Util;->getMakeUpRecyclerViewContentWidth(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->val$itemPadding:Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$2;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v2, p0, v0}, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemPadding;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    return-void
.end method
