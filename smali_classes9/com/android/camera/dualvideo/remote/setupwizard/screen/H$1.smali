.class Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;
.super Ljava/lang/Object;
.source "H.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/screen/H$1;->this$0:Lcom/android/camera/dualvideo/remote/setupwizard/screen/H;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardScreen;->getAlertDialogButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Button;->performClick()Z

    return-void
.end method
