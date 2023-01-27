.class public Lmiuix/androidbasewidget/widget/SeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private defaultForegroundPrimaryColor:I

.field private defaultForegroundPrimaryDisableColor:I

.field private defaultIconPrimaryColor:I

.field private mDisabledProgressAlpha:F

.field private mForegroundPrimaryColor:I

.field private mForegroundPrimaryDisableColor:I

.field private mIStateStyle:Lmiuix/animation/IStateStyle;

.field private mIconPrimaryColor:I

.field private mIconTransparent:I

.field private mIsInMiddle:Z

.field private mMaxMiddle:F

.field private mMiddleEnabled:Z

.field private mMinMiddle:F

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mProgess:I

.field private mProgressColorStateList:Landroid/content/res/ColorStateList;

.field private trainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/androidbasewidget/R$attr;->seekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lmiuix/androidbasewidget/widget/SeekBar$1;

    invoke-direct {v0, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->trainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    sget-object v0, Lmiuix/androidbasewidget/R$styleable;->SeekBar:[I

    sget v1, Lmiuix/androidbasewidget/R$style;->Widget_SeekBar_DayNight:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_primary_colors_light:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_disable_color_light:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryDisableColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_progress_background_icon_light:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultIconPrimaryColor:I

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_middleEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_foregroundPrimaryDisableColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryDisableColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_iconPrimaryColor:I

    iget v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultIconPrimaryColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_disabledProgressAlpha:I

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_minMiddle:I

    const v2, 0x3eeb851f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    sget p3, Lmiuix/androidbasewidget/R$styleable;->SeekBar_maxMiddle:I

    const v3, 0x3f0a3d71

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/androidbasewidget/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p2, p1, v1

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    :cond_0
    iput v2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    :cond_1
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p2, p1, v1

    if-ltz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    :cond_2
    iput v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    :cond_3
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/SeekBar;->isInMiddle(II)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    iget-boolean p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIsInMiddle:Z

    if-eqz p2, :cond_4

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_4
    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    iget p3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const-string v1, "targe"

    aput-object v1, p3, v0

    iget v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-interface {p2, p3}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->trainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance p1, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;

    invoke-direct {p1, p0}, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;-><init>(Lmiuix/androidbasewidget/widget/SeekBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    return p0
.end method

.method static synthetic access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F
    .locals 0

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    return p0
.end method

.method static synthetic access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I
    .locals 0

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p0
.end method

.method static synthetic access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I
    .locals 0

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgess:I

    return p1
.end method

.method static synthetic access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIStateStyle:Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method private getMinWrapper()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/widget/SeekBar;->getMin()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isInMiddle(II)Z
    .locals 1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->getMinWrapper()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMinMiddle:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMaxMiddle:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updatePrimaryColor()V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v3, :cond_3

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    check-cast v2, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ClipDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v0, v4, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    iput-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    sget-object v3, Landroid/widget/SeekBar;->ENABLED_STATE_SET:[I

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryDisableColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryDisableColor:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mProgressColorStateList:Landroid/content/res/ColorStateList;

    sget-object v3, Landroid/widget/SeekBar;->EMPTY_STATE_SET:[I

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryColor:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget v3, p0, Lmiuix/androidbasewidget/widget/SeekBar;->defaultForegroundPrimaryColor:I

    if-eq v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x2

    new-array v3, v0, [I

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    const/4 v6, 0x1

    aput v4, v3, v6

    new-array v0, v0, [[I

    new-array v4, v6, [I

    const v7, -0x101009e

    aput v7, v4, v5

    aput-object v4, v0, v5

    new-array v4, v5, [I

    aput-object v4, v0, v6

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    const v0, 0x1020006

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eqz v1, :cond_4

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconTransparent:I

    :goto_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->drawableStateChanged()V

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget p0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mDisabledProgressAlpha:F

    mul-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    return-void
.end method

.method public setForegroundPrimaryColor(II)V
    .locals 0

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryColor:I

    iput p2, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mForegroundPrimaryDisableColor:I

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setIconPrimaryColor(I)V
    .locals 0

    iput p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mIconPrimaryColor:I

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    return-void
.end method

.method public setMiddleEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mMiddleEnabled:Z

    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->updatePrimaryColor()V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar;->trainsOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-ne p1, v0, :cond_0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    :goto_0
    return-void
.end method
