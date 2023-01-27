.class Lmiuix/miuixbasewidget/widget/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/MessageView;->addCloseIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/MessageView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/MessageView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/MessageView;->access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/MessageView;->access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;->onClosed()V

    :cond_0
    return-void
.end method
