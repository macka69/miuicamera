.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewsSliding(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field final synthetic val$count:I

.field final synthetic val$end:I

.field final synthetic val$start:I

.field final synthetic val$transientCount:I


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;IIII)V
    .locals 0

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    iput p3, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    iput p4, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    iput p5, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$transientCount:I

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$end:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$start:I

    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$3;->val$count:I

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_0
    return-void
.end method
