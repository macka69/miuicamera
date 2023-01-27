.class Lcom/android/camera/fragment/top/FragmentTopAlert$24;
.super Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;
.source "FragmentTopAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;Lcom/android/camera/fragment/top/FragmentTopAlert$1;)V

    return-void
.end method


# virtual methods
.method public runToSafe()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3600(Lcom/android/camera/fragment/top/FragmentTopAlert;)I

    move-result v1

    const/16 v2, 0xa5

    if-ne v1, v2, :cond_0

    const v1, 0x33ffffff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x33000000

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setBackgroundColor(I)V

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070693

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3700(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v4, -0x1

    if-ge v3, v1, :cond_3

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3700(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a04c8

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_2
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$3500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v1

    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$700(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method
