.class Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;
.super Ljava/lang/Object;
.source "MiuiScaleItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->this$0:Lmiuix/recyclerview/widget/MiuiScaleItemAnimator;

    iget-object p0, p0, Lmiuix/recyclerview/widget/MiuiScaleItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p0}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->notifyAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
