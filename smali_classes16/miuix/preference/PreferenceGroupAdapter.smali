.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I

.field static final TYPE_FIRST:I = 0x2

.field static final TYPE_LAST:I = 0x4

.field static final TYPE_MIDDLE:I = 0x3

.field static final TYPE_SINGLE:I = 0x1


# instance fields
.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mCheckablePaddingStartExtra:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a3

    aput v2, v0, v1

    const/4 v3, 0x1

    const v4, 0x10100a4

    aput v4, v0, v3

    const/4 v5, 0x2

    const v6, 0x10100a5

    aput v6, v0, v5

    const/4 v5, 0x3

    const v7, 0x10100a6

    aput v7, v0, v5

    sget v5, Lmiuix/preference/R$attr;->state_no_title:I

    const/4 v8, 0x4

    aput v5, v0, v8

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    new-array v0, v3, [I

    aput v2, v0, v1

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    new-array v0, v3, [I

    aput v4, v0, v1

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    new-array v0, v3, [I

    aput v6, v0, v1

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    new-array v0, v3, [I

    aput v7, v0, v1

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    new-array v0, v3, [I

    sget v2, Lmiuix/preference/R$attr;->state_no_title:I

    aput v2, v0, v1

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    new-array v0, v0, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_item_padding_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .locals 0

    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/preference/DropDownPreference;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz p0, :cond_0

    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .locals 0

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 8

    instance-of v0, p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    iget v5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    iget v6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    iget v7, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, v1, p0, v0}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setLeftRight(IIZ)V

    invoke-virtual {p1, p2, p3}, Lmiuix/preference/drawable/MaskTaggingDrawable;->updateDrawCorner(ZZ)V

    :cond_0
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v3, :cond_0

    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {p0, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lmiuix/preference/PreferenceGroupAdapter;->drawViews(Ljava/util/List;)V

    return-void
.end method

.method private drawView(Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->drawDrawable(Landroid/graphics/drawable/Drawable;ZZ)V

    :cond_0
    return-void
.end method

.method private drawViews(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v3, v2}, Lmiuix/preference/PreferenceGroupAdapter;->drawView(Landroid/view/View;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)V
    .locals 5

    if-ltz p2, :cond_1

    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    goto :goto_1

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const/4 v2, 0x3

    :goto_1
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_6

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v1, p1

    array-length v4, v0

    add-int/2addr v1, v4

    new-array v1, v1, [I

    array-length v4, p1

    invoke-static {p1, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length p1, p1

    array-length v4, v0

    invoke-static {v0, v3, v1, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_6
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p0, p2

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    aget-object p0, p0, p2

    iput v2, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    :cond_7
    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz p0, :cond_2

    :cond_0
    instance-of p0, p1, Landroidx/preference/DialogPreference;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private updateViewBackgroundMask(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioButtonPreferenceCategory;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->drawRadioSetPreferenceCategory(Lmiuix/preference/RadioSetPreferenceCategory;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lmiuix/preference/RadioButtonPreference;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLeftAndRightWithRTL(Landroidx/recyclerview/widget/RecyclerView;Z)Landroid/util/Pair;
    .locals 0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollBarSize()I

    move-result p0

    if-eqz p2, :cond_0

    mul-int/lit8 p0, p0, 0x3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    mul-int/lit8 p0, p0, 0x3

    sub-int/2addr p1, p0

    move p0, p2

    :goto_0
    new-instance p2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method getPositionType(I)I
    .locals 0

    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p0, p0, p1

    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 7
    .param p1    # Landroidx/preference/PreferenceViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)V

    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p2, v1, p2

    iget-object p2, p2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    invoke-static {v2, v3}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lmiuix/preference/drawable/MaskTaggingDrawable;

    invoke-direct {v2, v1}, Lmiuix/preference/drawable/MaskTaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v1, v2

    :cond_0
    instance-of v2, v1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    check-cast v1, Lmiuix/preference/drawable/MaskTaggingDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    :cond_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    instance-of v2, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_2
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v4

    :goto_0
    iget-object v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getScrollBarSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    check-cast v2, Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v1, v3}, Lmiuix/preference/drawable/MaskTaggingDrawable;->setMaskEnabled(Z)V

    invoke-virtual {v2}, Lmiuix/preference/RadioSetPreferenceCategory;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    :goto_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_6

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    add-int/2addr v2, v4

    iput v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckablePaddingStartExtra:I

    add-int/2addr v2, v4

    iput v2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    :goto_2
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    instance-of p2, v0, Lmiuix/preference/RadioButtonPreference;

    if-eqz p2, :cond_8

    move-object p2, v0

    check-cast p2, Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v2, 0x10100a0

    aput v2, p2, v3

    invoke-virtual {v1, p2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    :cond_8
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lmiuix/internal/util/AnimHelper;->addPressAnim(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->updateViewBackgroundMask(Landroidx/preference/Preference;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    return-void
.end method
