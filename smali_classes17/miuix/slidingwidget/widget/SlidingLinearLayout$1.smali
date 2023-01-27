.class Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SlidingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/slidingwidget/widget/SlidingLinearLayout;->removeViewSliding(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/slidingwidget/widget/SlidingLinearLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->this$0:Lmiuix/slidingwidget/widget/SlidingLinearLayout;

    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingLinearLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void
.end method
