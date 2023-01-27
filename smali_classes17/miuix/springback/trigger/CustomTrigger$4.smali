.class Lmiuix/springback/trigger/CustomTrigger$4;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/CustomTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/CustomTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/CustomTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .locals 0

    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;I)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v1

    invoke-static {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->access$602(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$800(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateUpActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;)V

    :cond_1
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    invoke-virtual {v0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v3, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v4}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v4

    iget v4, v4, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$4;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_3
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p0, p2

    return-void
.end method
