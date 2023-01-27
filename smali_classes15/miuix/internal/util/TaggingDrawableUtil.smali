.class public Lmiuix/internal/util/TaggingDrawableUtil;
.super Ljava/lang/Object;
.source "TaggingDrawableUtil.java"


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_SINGLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a3

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    new-array v1, v0, [I

    const v2, 0x10100a4

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    new-array v1, v0, [I

    const v2, 0x10100a5

    aput v2, v1, v3

    sput-object v1, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    new-array v0, v0, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a3
        0x10100a4
        0x10100a5
        0x10100a6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateBackgroundState(Landroid/view/View;II)V
    .locals 3

    if-eqz p0, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lmiuix/internal/util/TaggingDrawableUtil;->STATES_TAGS:[I

    invoke-static {v1, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->containsTagState(Landroid/graphics/drawable/StateListDrawable;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    invoke-direct {v1, v0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object v0, v1

    :cond_1
    instance-of p0, v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    if-eqz p0, :cond_5

    check-cast v0, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    const/4 p0, 0x1

    if-ne p2, p0, :cond_2

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_SINGLE:[I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_FIRST:[I

    goto :goto_0

    :cond_3
    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_4

    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_LAST:[I

    goto :goto_0

    :cond_4
    sget-object p0, Lmiuix/internal/util/TaggingDrawableUtil;->STATE_SET_MIDDLE:[I

    :goto_0
    invoke-virtual {v0, p0}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public static updateItemBackground(Landroid/view/View;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateBackgroundState(Landroid/view/View;II)V

    invoke-static {p0, p1, p2}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemPadding(Landroid/view/View;II)V

    return-void
.end method

.method public static updateItemPadding(Landroid/view/View;II)V
    .locals 4

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_2
    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_large:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_small:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_4
    :goto_1
    return-void
.end method
