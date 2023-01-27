.class final Lmiuix/appcompat/widget/DialogAnimHelper$3;
.super Lmiuix/animation/listener/TransitionListener;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;


# direct methods
.method constructor <init>(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$onDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    iget-object p0, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$onDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p0, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$onDismiss:Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_0
    return-void
.end method
