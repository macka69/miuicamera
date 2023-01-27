.class Lmiuix/springback/trigger/CustomTrigger$3;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnScrollListener;


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

    iput-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lmiuix/springback/view/SpringBackLayout;II)V
    .locals 5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    iput v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$400(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [F

    iget-object v3, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v3, v3, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$400(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/animation/utils/VelocityMonitor;

    move-result-object v2

    invoke-virtual {v2, v4}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v2

    invoke-static {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$502(Lmiuix/springback/trigger/CustomTrigger;F)F

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTop(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLayout:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setBottom(I)V

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v2, v0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    if-gez v2, :cond_2

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v2}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger;->getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    invoke-static {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F

    move-result v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    if-ne v0, v3, :cond_2

    iget-object v0, v2, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v2, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_2
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v2

    invoke-static {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->access$700(Lmiuix/springback/trigger/CustomTrigger;Lmiuix/springback/trigger/BaseTrigger$Action;)F

    move-result v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v2}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-ltz v2, :cond_3

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v2, v2, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v3, v2, Lmiuix/springback/trigger/CustomTrigger;->mActionComplete:Lmiuix/springback/trigger/CustomTrigger$ActionComplete;

    if-ne v0, v3, :cond_4

    iget-object v0, v2, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v2, v0}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_4
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$200(Lmiuix/springback/trigger/CustomTrigger;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v2, v1, Lmiuix/springback/trigger/CustomTrigger;->mWaitForIndeterminate:Lmiuix/springback/trigger/CustomTrigger$WaitForIndeterminate;

    if-ne v0, v2, :cond_5

    iget v0, v1, Lmiuix/springback/trigger/CustomTrigger;->mLastScrollDistance:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v1}, Lmiuix/springback/trigger/CustomTrigger;->access$600(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/BaseTrigger$Action;

    move-result-object v1

    iget v1, v1, Lmiuix/springback/trigger/BaseTrigger$Action;->mEnterPoint:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object v1, v0, Lmiuix/springback/trigger/CustomTrigger;->mTracking:Lmiuix/springback/trigger/CustomTrigger$Tracking;

    invoke-virtual {v0, v1}, Lmiuix/springback/trigger/CustomTrigger;->transition(Lmiuix/springback/trigger/TriggerState;)V

    :cond_5
    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lmiuix/springback/trigger/TriggerState;->handleScrolled(II)V

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget v0, p0, Lmiuix/springback/trigger/CustomTrigger;->mScrollDistance:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/springback/trigger/CustomTrigger;->onSpringBackScrolled(Lmiuix/springback/view/SpringBackLayout;III)V

    return-void
.end method

.method public onStateChanged(IIZ)V
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0, p2}, Lmiuix/springback/trigger/CustomTrigger;->access$202(Lmiuix/springback/trigger/CustomTrigger;I)I

    iget-object v0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {v0, p3}, Lmiuix/springback/trigger/CustomTrigger;->access$302(Lmiuix/springback/trigger/CustomTrigger;Z)Z

    iget-object p3, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p3}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lmiuix/springback/trigger/TriggerState;->handleScrollStateChange(II)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-static {p1}, Lmiuix/springback/trigger/CustomTrigger;->access$100(Lmiuix/springback/trigger/CustomTrigger;)Lmiuix/springback/trigger/TriggerState;

    move-result-object p1

    iget-object p2, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    iget-object p3, p2, Lmiuix/springback/trigger/CustomTrigger;->mIdle:Lmiuix/springback/trigger/CustomTrigger$Idle;

    if-eq p1, p3, :cond_0

    invoke-static {p2}, Lmiuix/springback/trigger/CustomTrigger;->access$000(Lmiuix/springback/trigger/CustomTrigger;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/CustomTrigger$3;->this$0:Lmiuix/springback/trigger/CustomTrigger;

    invoke-virtual {p0}, Lmiuix/springback/trigger/CustomTrigger;->getIndeterminateUpView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
