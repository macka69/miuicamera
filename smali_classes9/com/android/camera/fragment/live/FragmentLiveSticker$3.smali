.class Lcom/android/camera/fragment/live/FragmentLiveSticker$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentLiveSticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentLiveSticker;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mLeftMargin:I

.field final mRightMargin:I

.field final synthetic this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

.field final synthetic val$isRTL:Z


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/live/FragmentLiveSticker;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    iput-boolean p2, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->val$isRTL:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07034d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mLeftMargin:I

    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->this$0:Lcom/android/camera/fragment/live/FragmentLiveSticker;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07034e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mRightMargin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-boolean p4, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->val$isRTL:Z

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-nez p2, :cond_0

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mLeftMargin:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mRightMargin:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mLeftMargin:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget p0, p0, Lcom/android/camera/fragment/live/FragmentLiveSticker$3;->mRightMargin:I

    invoke-virtual {p1, v0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_3
    :goto_0
    return-void
.end method
