.class Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;
.super Lmiuix/animation/property/ViewProperty;
.source "MoreModeListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    invoke-direct {p0, p2}, Lmiuix/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    instance-of p0, p1, Lcom/android/camera/ui/SmoothRoundLayout;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/camera/ui/SmoothRoundLayout;

    invoke-virtual {p1}, Lcom/android/camera/ui/SmoothRoundLayout;->getCornerRadius()F

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    const p0, 0x7f0a0290

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/NormalRoundView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/NormalRoundView;->getCornerRadius()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    instance-of p0, p1, Lcom/android/camera/ui/SmoothRoundLayout;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/android/camera/ui/SmoothRoundLayout;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SmoothRoundLayout;->setCornerRadius(F)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    const p0, 0x7f0a0290

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ui/NormalRoundView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/camera/ui/NormalRoundView;->setCornerRadius(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/mode/MoreModeListAnimation$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
