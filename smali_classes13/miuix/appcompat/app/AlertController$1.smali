.class Lmiuix/appcompat/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_NORMAL:I

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object v2, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$1;->this$0:Lmiuix/appcompat/app/AlertController;

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
