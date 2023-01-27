.class Lmiuix/springback/trigger/DefaultTrigger$1;
.super Ljava/lang/Object;
.source "DefaultTrigger.java"

# interfaces
.implements Lmiuix/springback/trigger/CustomTrigger$OnIndeterminateActionDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/DefaultTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method constructor <init>(Lmiuix/springback/trigger/DefaultTrigger;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p0

    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 0

    return-void
.end method

.method public onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 0

    return-void
.end method

.method public onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V
    .locals 0

    return-void
.end method

.method public onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V
    .locals 2

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$000(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$100(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {v0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/springback/trigger/DefaultTrigger$1;->this$0:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-static {p0}, Lmiuix/springback/trigger/DefaultTrigger;->access$200(Lmiuix/springback/trigger/DefaultTrigger;)Landroid/widget/TextView;

    move-result-object p0

    iget-object p1, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
