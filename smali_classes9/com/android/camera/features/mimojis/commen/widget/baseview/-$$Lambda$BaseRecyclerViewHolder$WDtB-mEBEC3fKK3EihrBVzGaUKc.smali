.class public final synthetic Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$2:I

    iput-object p4, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$1:Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$2:I

    iget-object p0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/-$$Lambda$BaseRecyclerViewHolder$WDtB-mEBEC3fKK3EihrBVzGaUKc;->f$3:Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerViewHolder;->lambda$setClickListener$0(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;Ljava/lang/Object;ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method
