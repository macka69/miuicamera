.class public Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable$RadioButtonConstantState;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.source "RadioButtonAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RadioButtonConstantState"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method protected newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;

    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    return-object p0
.end method
