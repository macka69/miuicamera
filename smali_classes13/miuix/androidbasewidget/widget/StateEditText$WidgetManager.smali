.class public abstract Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
.super Ljava/lang/Object;
.source "StateEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/StateEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WidgetManager"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
.end method

.method protected onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V
    .locals 0

    return-void
.end method

.method protected onDetached()V
    .locals 0

    return-void
.end method

.method protected abstract onWidgetClick(I)V
.end method
