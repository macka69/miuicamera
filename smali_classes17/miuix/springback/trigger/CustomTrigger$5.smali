.class Lmiuix/springback/trigger/CustomTrigger$5;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;


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

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 4

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_2
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$1000(Lmiuix/springback/trigger/CustomTrigger;)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, p1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_3
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, v0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_2
    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mActionStart:Lmiuix/springback/trigger/CustomTrigger$ActionStart;

    if-ne v0, v2, :cond_2

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p2, p1, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getActions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$Action;

    if-ne v0, p1, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v4, v3, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-ne v2, v4, :cond_1

    iget-object v2, v3, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v3, v2}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v3, v0}, Lmiuix/springback/trigger/CustomTrigger;->access$602(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)Lmiuix/springback/trigger/BaseTrigger$Action;

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v3

    iget-object v4, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v4, v4, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-static {v0, v3, v2, v4}, Lmiuix/springback/trigger/CustomTrigger;->access$1100(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;Lmiuix/springback/trigger/BaseTrigger$Action;I)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$900(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v0, p1, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Lmiuix/springback/view/SpringBackLayout;->smoothScrollTo(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/BaseTrigger$Action;->mTriggerPoint:I

    neg-int v0, v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$5;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    invoke-virtual {p0, p1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_1
    return-void
.end method

.method public onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;ILjava/lang/String;)V
    .locals 0

    iget-object p0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    aput-object p3, p0, p2

    return-void
.end method
