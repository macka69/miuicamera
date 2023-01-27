.class public Lmiuix/androidbasewidget/widget/ClearableEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "ClearableEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I


# instance fields
.field private mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a9

    aput v2, v0, v1

    sput-object v0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/androidbasewidget/R$attr;->clearableEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/ClearableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x2

    aget-object p1, p1, p2

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$1;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$1;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    new-instance p1, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    invoke-direct {p1, p0, p0}, Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;-><init>(Lmiuix/androidbasewidget/widget/ClearableEditText;Landroid/view/View;)V

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lmiuix/androidbasewidget/widget/ClearableEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    return p0
.end method

.method static synthetic access$002(Lmiuix/androidbasewidget/widget/ClearableEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    return p1
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/ClearableEditText;)Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/ClearableEditText;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/androidbasewidget/widget/ClearableEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private onButtonTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onClearButtonClick()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mPressed:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private onClearButtonClick()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_TAP_LIGHT:I

    invoke-static {p0, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mAccessHelper:Lmiuix/androidbasewidget/widget/ClearableEditText$AccessHelper;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    :goto_1
    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lmiuix/androidbasewidget/widget/ClearableEditText;->onButtonTouchEvent(Landroid/view/MotionEvent;)V

    return v2

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    :cond_0
    return-void
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mShown:Z

    if-nez p0, :cond_0

    sget-object p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->EMPTY_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/EditText;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ClearableEditText can only set drawables by setCompoundDrawablesRelative()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p3, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/ClearableEditText;->mDrawable:Landroid/graphics/drawable/Drawable;

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
