.class public Lcom/android/camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "RotateDialogController"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    if-nez p2, :cond_0

    const p2, 0x7f0d0157

    :cond_0
    iput p2, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    return-void
.end method

.method public static addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 1

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private inflateDialogLayout()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0340

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const v1, 0x7f0a033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    const v1, 0x7f0a0344

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    const v1, 0x7f0a033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    const v1, 0x7f0a0343

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0342

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    const v1, 0x7f0a033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    const v1, 0x7f0a033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showCTADialog$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showCTADialog$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showCTADialog$2(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showCustomAlertDialog$3(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showLongPressDialog$7(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a023d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a023a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const p2, 0x7f1106b2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_camera_long_press_shutter_feature_key"

    invoke-interface {p0, p2, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method static synthetic lambda$showLongPressDialog$8(Landroid/view/View;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const p2, 0x7f0a023d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    const p2, 0x7f0a023a

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setSelected(Z)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const p2, 0x7f1106b4

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_camera_long_press_shutter_feature_key"

    invoke-interface {p0, p2, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method static synthetic lambda$showLongPressDialog$9(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    const v0, 0x7f1106a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_long_press_shutter_feature_key"

    invoke-virtual {p2, v1, v0}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f1106b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "RotateDialogController"

    if-eqz p0, :cond_0

    const-string p0, "selectLpFeature key_lp_dialog_record"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "key_lp_dialog_record"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "selectLpFeature key_lp_dialog_burst"

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "key_lp_dialog_burst"

    invoke-static {p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLongPressDialogSelect(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "pref_lpl_selector_use_hint_shown"

    invoke-interface {p0, v0, p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showSystemAlertDialog$4(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, -0x3

    if-eq p4, p3, :cond_2

    const/4 p2, -0x2

    if-eq p4, p2, :cond_1

    const/4 p1, -0x1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$showSystemAlertDialog$5(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$showSystemAlertDialog$6(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p0, 0x19

    if-eq p1, p0, :cond_1

    const/16 p0, 0x18

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static showCTADialog(Landroid/app/Activity;ILjava/lang/Runnable;ILjava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 9
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s_%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const v5, 0x7f11040d

    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    const v1, 0x7f11040c

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/config/DataItemFeature;->isSupportOnlyMimojiMode()Z

    move-result v5

    const/16 v6, 0x3f

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0d0030

    invoke-virtual {v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f1102cd

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0a03fe

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v8, 0x7f0d002f

    invoke-virtual {v5, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f1102d9

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    invoke-virtual {p0, v7, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    const v1, 0x7f0a03f1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1, p0}, Lcom/android/camera/ui/ScreenHint;->setLinkClickEvent(Landroid/widget/TextView;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/camera/-$$Lambda$RotateDialogController$H4Z9WtojAInXPDrQJWzNYnx-Ujc;

    invoke-direct {v0, p2}, Lcom/android/camera/-$$Lambda$RotateDialogController$H4Z9WtojAInXPDrQJWzNYnx-Ujc;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/camera/-$$Lambda$RotateDialogController$s1H_906H-ChAF96ztMZMsKtJGnU;

    invoke-direct {p1, p4}, Lcom/android/camera/-$$Lambda$RotateDialogController$s1H_906H-ChAF96ztMZMsKtJGnU;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p3, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/camera/-$$Lambda$RotateDialogController$Guv-1OHTNXi9vcisSPd9E45z3Nc;

    invoke-direct {p1, p5}, Lcom/android/camera/-$$Lambda$RotateDialogController$Guv-1OHTNXi9vcisSPd9E45z3Nc;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public static showCircleProgressDialog(Landroid/content/Context;Ljava/lang/String;)Lmiuix/appcompat/app/ProgressDialog;
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object v0
.end method

.method public static showCustomAlertDialog(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 2

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/camera/-$$Lambda$RotateDialogController$VPlCUP8vhXGoeAdEwwch18rvA0U;

    invoke-direct {p1, p3}, Lcom/android/camera/-$$Lambda$RotateDialogController$VPlCUP8vhXGoeAdEwwch18rvA0U;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public static showLocationDialog(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Landroid/view/View;Ljava/lang/String;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Lcom/android/camera/RotateDialogController$1;

    invoke-direct {v0, p2, p4}, Lcom/android/camera/RotateDialogController$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance p2, Lcom/android/camera/RotateDialogController$2;

    invoke-direct {p2, p4}, Lcom/android/camera/RotateDialogController$2;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p2}, Lcom/android/camera2/DetachableClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera2/DetachableClickListener;

    move-result-object p2

    new-instance p4, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p4, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object p1
.end method

.method public static showLongPressDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog;
    .locals 7

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0080

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/android/camera/-$$Lambda$RotateDialogController$g8eq1MBca76KIXvgWC7V3WHCT9M;

    invoke-direct {v4, v0, p0}, Lcom/android/camera/-$$Lambda$RotateDialogController$g8eq1MBca76KIXvgWC7V3WHCT9M;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    new-array v4, v2, [Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v4}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    const v4, 0x7f0a023d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;

    invoke-direct {v6, v0, p0}, Lcom/android/camera/-$$Lambda$RotateDialogController$D3TOCDJTGYy6piu_kOIDs25l2WM;-><init>(Landroid/view/View;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v5, v2, [Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110440

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/camera/-$$Lambda$RotateDialogController$zgILWG4gvoTNi1WL5L349-amH2U;

    invoke-direct {v1, p0}, Lcom/android/camera/-$$Lambda$RotateDialogController$zgILWG4gvoTNi1WL5L349-amH2U;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1102ff

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object v0
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;I)Lmiuix/appcompat/app/ProgressDialog;
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/16 p2, 0x64

    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {p0, v0}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    return-object v0
.end method

.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .locals 1

    new-instance v0, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;

    invoke-direct {v0, p4, p8, p6}, Lcom/android/camera/-$$Lambda$RotateDialogController$RRldsvqx3d6HvOzJCIzB_jelGYk;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-instance p4, Lcom/android/camera/-$$Lambda$RotateDialogController$jmCQHx9W5yszjM91_07uTpvnsoQ;

    invoke-direct {p4, p9}, Lcom/android/camera/-$$Lambda$RotateDialogController$jmCQHx9W5yszjM91_07uTpvnsoQ;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, p4}, Lcom/android/camera2/DetachableClickListener;->wrap(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera2/DetachableClickListener;

    move-result-object p4

    new-instance p6, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p6, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p6, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p6, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    invoke-virtual {p6, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p6, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    sget-object p1, Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;->INSTANCE:Lcom/android/camera/-$$Lambda$RotateDialogController$K_f1efL2kmEQktavPxTho2tTuFg;

    invoke-virtual {p6, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p6, p3, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_0
    if-eqz p7, :cond_1

    invoke-virtual {p6, p7, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p6, p5, p4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {p6}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-static {p0, p1}, Lcom/android/camera/RotateDialogController;->addDialogFSFlag(Landroid/content/Context;Landroid/app/Dialog;)V

    invoke-virtual {p4, p1}, Lcom/android/camera2/DetachableClickListener;->clearOnDetach(Landroid/app/Dialog;)V

    return-object p1
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->fadeOutDialog()V

    :cond_0
    return-void
.end method

.method public resetRotateDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->inflateDialogLayout()V

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->inflateDialogLayout()V

    iget-object p0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    return-void
.end method
