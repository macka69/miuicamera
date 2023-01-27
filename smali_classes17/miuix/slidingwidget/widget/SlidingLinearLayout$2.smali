.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewSlidingAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$2;->val$index:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method
