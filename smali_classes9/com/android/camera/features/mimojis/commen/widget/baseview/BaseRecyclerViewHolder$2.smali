.class Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder$2;
.super Ljava/lang/Object;
.source "BaseRecyclerViewHolder.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->alphaGone(I[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder$2;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    return-void
.end method
