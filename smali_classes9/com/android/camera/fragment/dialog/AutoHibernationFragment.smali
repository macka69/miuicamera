.class public Lcom/android/camera/fragment/dialog/AutoHibernationFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AutoHibernationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$AutoHibernation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;
    }
.end annotation


# static fields
.field public static final FONT_MICLOCK_MONO:Ljava/lang/String; = "miclock-mono"

.field public static final FONT_MITYPE_MONO:Ljava/lang/String; = "mitype-mono"

.field public static final FONT_MITYPE_MONO_LIGHT:Ljava/lang/String; = "mitype-mono-light"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG:Ljava/lang/String; = "AutoHibernation"


# instance fields
.field private mAmString:Ljava/lang/String;

.field private mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

.field private mAutoHibernationRedIndicator:Landroid/widget/ImageView;

.field private mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

.field private mBatteryReceiver:Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;

.field private mCalendar:Ljava/util/Calendar;

.field private mContentFrameLayout:Landroid/widget/FrameLayout;

.field private mCurrentDegree:I

.field private mFastmotionFirstTime:Landroid/widget/TextView;

.field private mFastmotionSecondTime:Landroid/widget/TextView;

.field private mFastmotionSystemTime:Landroid/widget/TextView;

.field private mFirstTimeStr:Ljava/lang/String;

.field private mIndicatorAnimator:Landroid/animation/ValueAnimator;

.field public mModeIndex:I

.field private mOrientation:I

.field private mOthersTimeContent:Landroid/widget/LinearLayout;

.field private mOthersTimeDivider:Landroid/widget/ImageView;

.field private mOthersTimeFirst:Landroid/widget/TextView;

.field private mOthersTimeSecond:Landroid/widget/TextView;

.field private mPmString:Ljava/lang/String;

.field private mRotationAnimator:Landroid/animation/ValueAnimator;

.field private mSecondTimeStr:Ljava/lang/String;

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mTimeFormat:Ljava/lang/String;

.field private mWeekdayDes:[Ljava/lang/String;

.field private mWeekdayShortDes:[Ljava/lang/String;

.field private mhasDismissed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-string v0, "hh:mm"

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTimeFormat:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    const/16 v1, 0xa9

    iput v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    iput v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    iput v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTargetDegree:I

    iput v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mStartDegree:I

    iput-boolean v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mhasDismissed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationRedIndicator:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Lcom/android/camera/ui/AutoHibernationBatteryView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    return p1
.end method

.method private adjustViewSize(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result p0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v1, p0, :cond_0

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v0, :cond_1

    :cond_0
    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private initRedIndicatorAnimator()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$3;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private resumeMode()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->exitAutoHibernationMode()V

    return-void
.end method

.method private setTranslationY(Landroid/view/View;FF)V
    .locals 8

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "translateFrom"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "translateTo"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v4, v2, [J

    invoke-virtual {v1, v3, v2, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/view/View;

    aput-object p1, v4, v2

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    new-array v5, v3, [Lmiuix/animation/base/AnimConfig;

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput p2, v7, v2

    aput p3, v7, v3

    const/4 p2, -0x2

    invoke-virtual {v6, p2, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    new-array p3, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$2;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;Landroid/view/View;)V

    aput-object v3, p3, v2

    invoke-virtual {p2, p3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-interface {v4, v0, v1, v5}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private startAnimator()V
    .locals 11

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "scalefrom"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    const v4, 0x3f99999a

    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    const-string v3, "scaleto"

    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v4, v2, [J

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v4, v2, [J

    invoke-virtual {v1, v3, v5, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v4, "alphafrom"

    invoke-direct {v3, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v6, v2, [J

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-instance v4, Lmiuix/animation/controller/AnimState;

    const-string v6, "alphato"

    invoke-direct {v4, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v7, v2, [J

    invoke-virtual {v4, v6, v5, v7}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Landroid/view/View;

    iget-object v7, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    aput-object v7, v6, v2

    invoke-static {v6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v6

    invoke-interface {v6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v6

    new-array v7, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v8, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v2, [F

    const/16 v10, 0x10

    invoke-virtual {v8, v10, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-interface {v6, v3, v4, v7}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object v3

    new-array v4, v5, [Lmiuix/animation/base/AnimConfig;

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    const/4 v8, -0x2

    invoke-virtual {v6, v8, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    new-array v5, v5, [Lmiuix/animation/listener/TransitionListener;

    new-instance v7, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;

    invoke-direct {v7, p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V

    aput-object v7, v5, v2

    invoke-virtual {v6, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-interface {v3, v0, v1, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const v1, 0x3f8ccccd

    const v2, 0x3f666666

    const v3, 0x3fa66666

    const v4, 0x3e99999a

    const/16 v5, 0xa9

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->setTranslationY(Landroid/view/View;FF)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3fa66666
        0x3e99999a
    .end array-data
.end method

.method private updateFirstVideoRecordingTime()V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFirstTimeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFirstTimeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mSecondTimeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mSecondTimeStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_2

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFirstTimeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFirstTimeStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateSystemTime()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/android/camera/Util;->getWeekDay(Ljava/util/Calendar;)I

    move-result v0

    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mWeekdayShortDes:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mWeekdayDes:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAmString:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mPmString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTimeFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final canProvide()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    return p0
.end method

.method public dismissAutoHibernation()V
    .locals 2

    const-string v0, "AutoHibernation"

    const-string v1, "dismissAutoHibernation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->show(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public initOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    rsub-int p1, p1, 0x168

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/DataItemFeature;->isAndroidOne()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0, p0}, Landroid/view/Window;->setLayout(II)V

    invoke-static {}, Lcom/android/camera/Display;->isContentViewExtendToTopEdges()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setCutoutModeShortEdges(Landroid/view/Window;)V

    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x1006

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mhasDismissed:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v1, 0x3b1

    invoke-virtual {p1, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->show(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mhasDismissed:Z

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->resumeMode()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    :goto_0
    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->resumeMode()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a006c

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->onBackEvent(I)Z

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d005a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a006c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a006b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0a0074

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/AutoHibernationView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    const p2, 0x7f0a0075

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationRedIndicator:Landroid/widget/ImageView;

    const p2, 0x7f0a006d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    const p2, 0x7f0a006e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    const p2, 0x7f0a0070

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeContent:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0071

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    const p2, 0x7f0a0073

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mi/config/DataItemFeature;->isCNDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "mitype-mono-light"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const-string p2, "miclock-mono"

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    const p2, 0x7f0a0072

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeDivider:Landroid/widget/ImageView;

    const p2, 0x7f0a0076

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    const p2, 0x7f0a006a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/camera/ui/AutoHibernationBatteryView;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

    const p2, 0x7f0a006f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->adjustViewSize(Landroid/view/View;)V

    new-instance p2, Ljava/text/DateFormatSymbols;

    invoke-direct {p2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mWeekdayDes:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mWeekdayShortDes:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p2

    aget-object p3, p2, v0

    iput-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAmString:Ljava/lang/String;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mPmString:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "kk:mm"

    goto :goto_1

    :cond_1
    const-string p2, "hh:mm"

    :goto_1
    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTimeFormat:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget-object v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationBatteryView:Lcom/android/camera/ui/AutoHibernationBatteryView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 v4, 0xa9

    const/4 v5, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeContent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700ee

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700ea

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0700ef

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeContent:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700f6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700f2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSystemTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0700f7

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 p3, 0xb4

    if-eq p2, p3, :cond_5

    const/16 p3, 0xa2

    if-eq p2, p3, :cond_5

    const/16 p3, 0xbb

    if-ne p2, p3, :cond_3

    goto :goto_2

    :cond_3
    const/16 p3, 0xa3

    if-eq p2, p3, :cond_4

    const/16 p3, 0xa5

    if-eq p2, p3, :cond_4

    const/16 p3, 0xa7

    if-ne p2, p3, :cond_6

    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeDivider:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeDivider:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    iget p3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    rsub-int p3, p3, 0x168

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setRotation(F)V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->initRedIndicatorAnimator()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->unRegisterProtocol()V

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mBatteryReceiver:Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x19

    if-eq p2, p1, :cond_1

    const/16 p1, 0x18

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->onBackEvent(I)Z

    :cond_2
    return p2
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    const-string v1, "AutoHibernation"

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 v2, 0xa9

    if-eq v0, v2, :cond_1

    const/16 v3, 0xbb

    if-ne v0, v3, :cond_5

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCameraSnapPaintSecondTimeAngleRunning()F

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeAngle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/4 v4, 0x0

    if-ne v3, v2, :cond_2

    const/16 v2, 0x2710

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0x1a4

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getDuration()I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    add-int/lit16 v3, v2, -0xc8

    int-to-float v3, v3

    int-to-float v5, v2

    div-float/2addr v3, v5

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v3, v5

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    int-to-long v2, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/camera/ui/AutoHibernationView;->startRecord(JFZ)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getCameraSnapPaintSecondClockWiseRunning()Z

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/camera/ui/AutoHibernationView;->startRecordForFastmotion(IFZ)V

    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 v2, 0xa3

    const/16 v3, 0xa7

    if-eq v0, v2, :cond_6

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6

    if-ne v0, v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updateRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    if-ne v0, v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getCaptureStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gez v0, :cond_8

    sub-long v6, v2, v4

    const-wide/16 v8, 0xc8

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    long-to-float v8, v4

    long-to-float v9, v2

    div-float/2addr v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/camera/ui/AutoHibernationView;->startRecord(JFZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "etValue "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " diff "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updateSystemTime()V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updateFirstVideoRecordingTime()V

    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->startAnimator()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xab

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    new-instance p1, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;)V

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mBatteryReceiver:Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mBatteryReceiver:Lcom/android/camera/fragment/dialog/AutoHibernationFragment$BatteryReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public setModeIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x168

    if-ltz p1, :cond_1

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_1
    rem-int/2addr p1, v0

    add-int/2addr p1, v0

    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    iget v2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    sub-int v2, p1, v2

    if-ltz v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit16 v2, v2, 0x168

    :goto_2
    const/16 v5, 0xb4

    if-le v2, v5, :cond_5

    add-int/lit16 v2, v2, -0x168

    :cond_5
    if-gtz v2, :cond_6

    move v2, v3

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOrientation:I

    if-nez p1, :cond_7

    iget v5, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    if-nez v5, :cond_7

    return-void

    :cond_7
    rsub-int p1, p1, 0x168

    rem-int/2addr p1, v0

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTargetDegree:I

    if-nez v1, :cond_8

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mContentFrameLayout:Landroid/widget/FrameLayout;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mRotationAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    iget p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mCurrentDegree:I

    iput p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mStartDegree:I

    if-eqz v2, :cond_c

    if-ne p1, v0, :cond_a

    move p1, v4

    :cond_a
    iget v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTargetDegree:I

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_4

    :cond_c
    if-nez p1, :cond_d

    move p1, v0

    :cond_d
    iget v1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mTargetDegree:I

    if-ne v1, v0, :cond_b

    move v0, v4

    :goto_4
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v4

    aput v0, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$4;-><init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startAutoHibernationCaptureDelayNumber()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->startRedIndicatorAnimator()V

    :cond_0
    return-void
.end method

.method public startRedIndicatorAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/AutoHibernationView;->reset()V

    :cond_1
    return-void
.end method

.method public stopAutoHibernationCaptureDelayNumber()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->stopRedIndicatorAnimator()V

    :cond_0
    return-void
.end method

.method public stopRedIndicatorAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a8

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updataTimerBurstAnimator()V
    .locals 4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mAutoHibernationView:Lcom/android/camera/ui/AutoHibernationView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/AutoHibernationView;->startRecord(JFZ)V

    return-void
.end method

.method public updateAutoHibernationFirstRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFirstTimeStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mSecondTimeStr:Ljava/lang/String;

    return-void
.end method

.method public updateAutoHibernationRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updateRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTimeOrCaptureCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mModeIndex:I

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionFirstTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mFastmotionSecondTime:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0xb4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeSecond:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->mOthersTimeFirst:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updateSystemTime()V

    return-void
.end method

.method public updateTimerBurstAnimator()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->updataTimerBurstAnimator()V

    :cond_0
    return-void
.end method
