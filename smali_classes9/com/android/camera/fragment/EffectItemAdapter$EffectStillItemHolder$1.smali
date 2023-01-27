.class Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder$1;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder$1;->this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder$1;->this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectStillItemHolder;

    iget-object p0, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
