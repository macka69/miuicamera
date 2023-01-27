.class Lmiuix/appcompat/internal/app/widget/ActionBarView$8;
.super Lmiuix/animation/listener/TransitionListener;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarView;->onAnimatedExpandStateChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

.field final synthetic val$newState:I


# direct methods
.method constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->val$newState:I

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->isResizable()Z

    move-result v0

    invoke-static {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2302(Lmiuix/appcompat/internal/app/widget/ActionBarView;Z)Z

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->val$newState:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setExpandState(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2300(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->setResizable(Z)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2600(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2400(Lmiuix/appcompat/internal/app/widget/ActionBarView;)Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-static {p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarView;->access$2502(Lmiuix/appcompat/internal/app/widget/ActionBarView;I)I

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarView$8;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
