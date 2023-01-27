.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EditLevelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mColorRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field mThumbnailGV:Landroidx/recyclerview/widget/RecyclerView;

.field mTvSubTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ViewHolder;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a040b

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ViewHolder;->mTvSubTitle:Landroid/widget/TextView;

    const p1, 0x7f0a00e0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ViewHolder;->mColorRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const p1, 0x7f0a03b7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/EditLevelListAdapter$ViewHolder;->mThumbnailGV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    return-void
.end method
