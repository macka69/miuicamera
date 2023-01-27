.class public Lmiuix/appcompat/internal/app/widget/ActionBarContextView;
.super Lmiuix/appcompat/internal/app/widget/AbsActionBarView;
.source "ActionBarContextView.java"

# interfaces
.implements Lmiuix/appcompat/internal/app/widget/ActionModeView;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;,
        Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;
    }
.end annotation


# static fields
.field private static final ANIMATE_IDLE:I = 0x0

.field private static final ANIMATE_IN:I = 0x1

.field private static final ANIMATE_OUT:I = 0x2

.field private static final DAMPING:F = 0.9f

.field private static final DELAY_DURATION_100:I = 0x64

.field private static final DELAY_DURATION_50:I = 0x32

.field private static final STIFFNESS_HIGH:F = 986.96f

.field private static final STIFFNESS_LOW:F = 322.27f

.field private static final STIFFNESS_MEDIUM:F = 438.65f

.field private static final TYPE_NON_TOUCH:I = 0x1

.field private static final TYPE_TOUCH:I


# instance fields
.field private mActionMode:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private mActionModeBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimateStart:Z

.field private mAnimateToVisible:Z

.field private mAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/view/ActionModeAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationMode:I

.field private mAnimationProgress:F

.field private mButton1:Landroid/widget/Button;

.field private mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mButton2:Landroid/widget/Button;

.field private mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

.field private mCollapseContainer:Landroid/view/View;

.field private mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mCollapseHeight:I

.field private mContentInset:I

.field private mExpandTitleStyleRes:I

.field private mExpandTitleView:Landroid/widget/TextView;

.field private mMovableContainer:Landroid/widget/FrameLayout;

.field private mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

.field private mNonTouchScrolling:Z

.field private mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

.field private mPendingHeight:I

.field private mPostScroll:Ljava/lang/Runnable;

.field private mPostScroller:Landroid/widget/Scroller;

.field private mRequestAnimation:Z

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mStartWithAnim:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private mTouchScrolling:Z

.field private mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$1;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-direct {v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    new-instance v1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;

    invoke-direct {v1, p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$3;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    sget v2, Lmiuix/appcompat/R$id;->action_bar_movable_container:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    sget-object v1, Lmiuix/appcompat/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_background:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_titleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_expandTitleTextStyle:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    sget v1, Lmiuix/appcompat/R$styleable;->ActionMode_android_height:I

    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_android_backgroundSplit:I

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const v3, 0x1020019

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    new-instance v9, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$string;->miuix_appcompat_action_mode_select_all:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v3, 0x102001a

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v9, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    sget v0, Lmiuix/appcompat/R$styleable;->ActionMode_actionModeAnim:I

    invoke-virtual {v8, v0, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    return-object p0
.end method

.method static synthetic access$1002(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    return p0
.end method

.method static synthetic access$1200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    return p1
.end method

.method static synthetic access$600(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return p0
.end method

.method static synthetic access$702(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;I)I
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return p1
.end method

.method static synthetic access$802(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Lmiuix/animation/physics/SpringAnimationSet;)Lmiuix/animation/physics/SpringAnimationSet;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object p1
.end method

.method static synthetic access$900(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method private animateLayoutWithProcess(F)V
    .locals 6

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    sub-float p1, v0, p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    cmpl-float v1, p1, v3

    if-lez v1, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimHideConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, v3, v4, v2, v1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mCollapseAnimShowConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v1, v0, v4, v4, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMovableAnimConfig:Lmiuix/animation/base/AnimConfig;

    invoke-virtual {v0, p1, v4, v4, p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->animTo(FIILmiuix/animation/base/AnimConfig;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v3, v4, v2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v0, v4, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0, v4, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p0, v3, v4, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setAnimFrom(FII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private clearBackground()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;
    .locals 1

    new-instance p0, Lmiuix/animation/physics/SpringAnimation;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-direct {p0, p1, v0, p4}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    invoke-virtual {p0, p3}, Lmiuix/animation/physics/DynamicAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object p1

    const p2, 0x3f666666

    invoke-virtual {p1, p2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    const/high16 p1, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    return-object p0
.end method

.method private onFinishStartActionMode(Z)V
    .locals 3

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationEnd(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private onLayoutCollapseViews(IIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v1, v2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    sub-int/2addr p4, p2

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    const/16 v2, 0x8

    if-eq p2, v2, :cond_0

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, v0, v1, p4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChild(Landroid/view/View;III)I

    :cond_0
    sub-int/2addr p3, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p1

    sub-int/2addr p3, p1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, p3, v1, p4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->positionChildInverse(Landroid/view/View;III)I

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimationSet;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    :cond_2
    return-void
.end method

.method private resetBackground()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionModeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setButtonContentDescription(II)V
    .locals 1

    const v0, 0x1020019

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    const v0, 0x102001a

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    return-void

    :cond_2
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_cancel_light:I

    if-eq v0, p2, :cond_b

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_cancel_dark:I

    if-ne v0, p2, :cond_3

    goto :goto_4

    :cond_3
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_confirm_light:I

    if-eq v0, p2, :cond_a

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_confirm_dark:I

    if-ne v0, p2, :cond_4

    goto :goto_3

    :cond_4
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_select_all_light:I

    if-eq v0, p2, :cond_9

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_select_all_dark:I

    if-ne v0, p2, :cond_5

    goto :goto_2

    :cond_5
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all_light:I

    if-eq v0, p2, :cond_8

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all_dark:I

    if-ne v0, p2, :cond_6

    goto :goto_1

    :cond_6
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_delete_light:I

    if-eq v0, p2, :cond_7

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_action_mode_title_button_delete_dark:I

    if-ne v0, p2, :cond_c

    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_delete_description:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_deselect_all_description:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_select_all_description:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_confirm_description:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_b
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$string;->miuix_appcompat_cancel_description:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_5
    return-void
.end method

.method private setSplitAnimating(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->setAnimating(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic animateToVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->animateToVisibility(I)V

    return-void
.end method

.method public animateToVisibility(Z)V
    .locals 2

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setVisibility(I)V

    iput-boolean v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mRequestAnimation:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOut(Z)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimationSet;->start()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->makeInOut(Z)V

    :goto_0
    return-void
.end method

.method protected cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimationSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method public closeMode()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->endAnimation()V

    const/4 v0, 0x2

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationMode:I

    return-void
.end method

.method public bridge synthetic dismissPopupMenus()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->dismissPopupMenus()V

    return-void
.end method

.method protected endAnimation()V
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimationSet;->endAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setSplitAnimating(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getActionBarStyle()I
    .locals 0

    const p0, 0x1010394

    return p0
.end method

.method public bridge synthetic getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionBarTransitionListener()Lmiuix/appcompat/app/ActionBarTransitionListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getActionMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getAnimatedVisibility()I
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result p0

    return p0
.end method

.method public getAnimationProgress()F
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    return p0
.end method

.method public bridge synthetic getContentHeight()I
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getContentHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getExpandState()I
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getExpandState()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->getMenuView()Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->cancelAnimation()V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->killMode()V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->dismissPopupMenus(Z)Z

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    instance-of v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_5

    new-instance v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    sget v5, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_menu_layout:I

    sget v6, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_menu_item_layout:I

    sget v7, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_expanded_menu_layout:I

    sget v8, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_bar_list_menu_item_layout:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;-><init>(Landroid/content/Context;Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;IIII)V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setActionEditMode(Z)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-boolean v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    :cond_3
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_1

    :cond_4
    const/16 v0, 0x50

    :goto_1
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->addMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p1, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ActionBarOverlayLayout not found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected initTitle()V
    .locals 7

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lmiuix/appcompat/R$layout;->miuix_appcompat_action_mode_title_item:I

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020019

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x102001a

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    const v3, 0x3f19999a

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v1, [Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    aput-object v5, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v3, v5}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    new-array v6, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v5, v6}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mOnMenuItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-array v0, v1, [Landroid/view/View;

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    aput-object v5, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v5, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v4, v5}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    new-array v4, v2, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->setAlpha(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object v0

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v3, v4}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleStyleRes:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseContainer:Landroid/view/View;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {v3, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->attachViews(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_0

    :cond_4
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mExpandTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_8
    return-void
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isOverflowReserved()Z
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isResizable()Z
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public isTitleOptional()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    return p0
.end method

.method public killMode()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mActionMode:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected makeInOut(Z)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-boolean v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void

    :cond_1
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_2

    move v5, v1

    goto :goto_1

    :cond_2
    int-to-float v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onFinishStartActionMode(Z)V

    return-void
.end method

.method protected makeInOutAnimator(Z)Lmiuix/animation/physics/SpringAnimationSet;
    .locals 22

    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-boolean v0, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    if-ne v10, v0, :cond_0

    iget-object v0, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    if-eqz v0, :cond_0

    new-instance v0, Lmiuix/animation/physics/SpringAnimationSet;

    invoke-direct {v0}, Lmiuix/animation/physics/SpringAnimationSet;-><init>()V

    return-object v0

    :cond_0
    iput-boolean v10, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    iget-object v11, v9, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    const/4 v13, 0x0

    if-nez v11, :cond_1

    move v14, v13

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;->getCollapsedHeight()I

    move-result v0

    move v14, v0

    :goto_0
    const/4 v0, 0x0

    if-nez v11, :cond_2

    move v15, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v1

    move v15, v1

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v10, :cond_3

    move v8, v0

    move v7, v1

    move v5, v13

    move v6, v14

    goto :goto_2

    :cond_3
    move v7, v0

    move v8, v1

    move v6, v13

    move v5, v14

    :goto_2
    new-instance v4, Lmiuix/animation/physics/SpringAnimationSet;

    invoke-direct {v4}, Lmiuix/animation/physics/SpringAnimationSet;-><init>()V

    const v0, 0x4476bd71

    if-eqz v10, :cond_4

    const v1, 0x43a1228f

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    invoke-direct {v9, v9, v1, v8, v7}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v1

    if-eqz v10, :cond_5

    const-wide/16 v2, 0x32

    goto :goto_4

    :cond_5
    const-wide/16 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2, v3}, Lmiuix/animation/physics/DynamicAnimation;->setStartDelay(J)V

    invoke-virtual {v4, v1}, Lmiuix/animation/physics/SpringAnimationSet;->play(Lmiuix/animation/physics/SpringAnimation;)V

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-boolean v2, v9, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v2, :cond_6

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;

    invoke-direct {v0, v9, v10}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    iput-object v4, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object v4

    :cond_6
    iput-boolean v13, v9, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateStart:Z

    if-eqz v10, :cond_7

    const/16 v1, 0x64

    move v3, v1

    goto :goto_5

    :cond_7
    move v3, v13

    :goto_5
    if-eqz v10, :cond_8

    const v0, 0x43db5333

    :cond_8
    move v2, v0

    new-instance v1, Lmiuix/animation/physics/SpringAnimation;

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;

    const-string v16, ""

    move-object/from16 v17, v0

    move-object v13, v1

    move-object/from16 v1, p0

    move v9, v2

    move-object/from16 v2, v16

    move v10, v3

    move-object v3, v11

    move-object/from16 v18, v4

    move v4, v15

    move/from16 v16, v5

    move v5, v14

    move/from16 v19, v6

    move/from16 v6, p1

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v21, v8

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$2;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Ljava/lang/String;Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;FIZII)V

    move/from16 v0, v19

    int-to-float v0, v0

    move-object/from16 v1, v17

    invoke-direct {v13, v12, v1, v0}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    move/from16 v0, v16

    int-to-float v1, v0

    invoke-virtual {v13, v1}, Lmiuix/animation/physics/DynamicAnimation;->setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;

    invoke-virtual {v13}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v2

    invoke-virtual {v2, v9}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    invoke-virtual {v13}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    move-result-object v2

    const v3, 0x3f666666

    invoke-virtual {v2, v3}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    int-to-long v2, v10

    invoke-virtual {v13, v2, v3}, Lmiuix/animation/physics/DynamicAnimation;->setStartDelay(J)V

    new-instance v4, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;

    move-object/from16 v5, p0

    move v7, v9

    invoke-direct {v4, v5, v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$DOnAnimationEndListener;-><init>(Lmiuix/appcompat/internal/app/widget/ActionBarContextView;Z)V

    invoke-virtual {v13, v4}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    if-eqz v11, :cond_9

    int-to-float v4, v14

    add-float/2addr v15, v4

    sub-float/2addr v15, v1

    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_9
    invoke-virtual {v12, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->animateContentMarginBottom(I)V

    if-eqz v11, :cond_a

    move/from16 v1, v20

    move/from16 v0, v21

    invoke-direct {v5, v11, v7, v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getViewSpringAnima(Landroid/view/View;FFF)Lmiuix/animation/physics/SpringAnimation;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/physics/DynamicAnimation;->setStartDelay(J)V

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [Lmiuix/animation/physics/SpringAnimation;

    const/4 v2, 0x0

    aput-object v13, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/SpringAnimationSet;->playTogether([Lmiuix/animation/physics/SpringAnimation;)V

    goto :goto_6

    :cond_a
    move-object/from16 v1, v18

    invoke-virtual {v1, v13}, Lmiuix/animation/physics/SpringAnimationSet;->play(Lmiuix/animation/physics/SpringAnimation;)V

    :goto_6
    iput-object v1, v5, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mVisibilityAnim:Lmiuix/animation/physics/SpringAnimationSet;

    return-object v1
.end method

.method public notifyAnimationEnd(Z)V
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiuix/view/ActionModeAnimationListener;->onStop(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationStart(Z)V
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    invoke-interface {v0, p1}, Lmiuix/view/ActionModeAnimationListener;->onStart(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAnimationUpdate(ZF)V
    .locals 1

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/view/ActionModeAnimationListener;

    invoke-interface {v0, p1, p2}, Lmiuix/view/ActionModeAnimationListener;->onUpdate(ZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_top_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_title_bottom_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_bar_horizontal_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideOverflowMenu(Z)Z

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->hideSubMenus()Z

    :cond_0
    return-void
.end method

.method protected onExpandStateChanged(II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_0
    if-eq p2, v1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    if-ne p2, v1, :cond_3

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseController:Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView$CollapseView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    sub-int/2addr p1, p2

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sub-int v6, p5, p3

    sub-int v4, v6, v0

    invoke-direct {p0, p2, p3, p4, v4}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutCollapseViews(IIII)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->onLayoutExpandViews(ZIIII)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->animateLayoutWithProcess(F)V

    return-void
.end method

.method protected onLayoutExpandViews(ZIIII)V
    .locals 1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    sub-int p2, p4, p1

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p5, p3

    sub-int/2addr p4, p5

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p2

    iget-object p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, p2

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v3, v1, v0, v4}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    iget v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v4

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, p2

    if-le v3, v2, :cond_3

    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int v4, v2, p2

    :cond_5
    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_4

    :cond_6
    if-lez v3, :cond_7

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    add-int/2addr v0, p2

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mInnerExpandState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_4

    :cond_9
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_4
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II[I)V
    .locals 1

    if-lez p3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, p3

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    iget p5, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    const/4 v0, 0x1

    if-lt p1, p5, :cond_0

    sub-int p1, p2, p3

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p4, v0

    add-int/2addr p1, p3

    aput p1, p4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    const/4 p1, 0x0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p1, p4, v0

    neg-int p3, p5

    add-int/2addr p1, p3

    aput p1, p4, v0

    :goto_0
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p1, p2, :cond_1

    sub-int/2addr p2, p1

    aput p2, p6, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I[I)V
    .locals 0

    if-gez p5, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    if-ge p1, p2, :cond_1

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p2, p5

    iget p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    const/4 p4, 0x1

    if-gt p2, p3, :cond_0

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    sub-int/2addr p2, p5

    iput p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p2, p7, p4

    add-int/2addr p2, p5

    aput p2, p7, p4

    goto :goto_0

    :cond_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    aget p3, p7, p4

    neg-int p2, p2

    add-int/2addr p3, p2

    aput p3, p7, p4

    :goto_0
    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    if-eq p2, p1, :cond_1

    sub-int/2addr p1, p2

    aput p1, p8, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p4, :cond_0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p2, p1}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    check-cast p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    const v1, 0x102001a

    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButton(ILjava/lang/CharSequence;)V

    iget-boolean p1, p1, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->postShowOverflowMenu()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->isOverflowOpen:Z

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->title:Ljava/lang/CharSequence;

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView$SavedState;->defaultButtonText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->isResizable()Z

    move-result p0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 3

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTouchScrolling:Z

    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mNonTouchScrolling:Z

    :goto_0
    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_3

    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPendingHeight:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setExpandState(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    if-le p1, p2, :cond_4

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mMovableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mCollapseHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    :goto_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mPostScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic postShowOverflowMenu()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->postShowOverflowMenu()V

    return-void
.end method

.method public removeAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setActionBarTransitionListener(Lmiuix/appcompat/app/ActionBarTransitionListener;)V

    return-void
.end method

.method public setActionModeAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mStartWithAnim:Z

    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimationProgress:F

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mAnimateToVisible:Z

    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->notifyAnimationUpdate(ZF)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {p0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;I)V
    .locals 4

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    const v2, 0x1020019

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton1MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const v2, 0x102001a

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    if-eqz v2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mButton2MenuItem:Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-direct {p0, p1, p3}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->setButtonContentDescription(II)V

    :cond_6
    return-void
.end method

.method public bridge synthetic setContentHeight(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setContentHeight(I)V

    return-void
.end method

.method public setContentInset(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mContentInset:I

    return-void
.end method

.method public bridge synthetic setExpandState(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(I)V

    return-void
.end method

.method public bridge synthetic setExpandState(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setExpandState(IZ)V

    return-void
.end method

.method public bridge synthetic setResizable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setResizable(Z)V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 6

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_5

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->setWidthLimit(IZ)V

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lmiuix/internal/util/DeviceHelper;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x11

    goto :goto_0

    :cond_2
    const/16 v1, 0x50

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iput-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mSplitView:Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mMenuView:Lmiuix/appcompat/internal/view/menu/action/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_5
    return-void
.end method

.method public bridge synthetic setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitView(Lmiuix/appcompat/internal/app/widget/ActionBarContainer;)V

    return-void
.end method

.method public bridge synthetic setSplitWhenNarrow(Z)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setSplitWhenNarrow(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->initTitle()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->mTitleOptional:Z

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/AbsActionBarView;->mActionMenuPresenter:Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/action/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->clearBackground()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarContextView;->resetBackground()V

    :goto_0
    return-void
.end method
