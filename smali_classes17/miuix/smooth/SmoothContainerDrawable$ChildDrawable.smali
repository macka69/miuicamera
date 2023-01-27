.class Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "SmoothContainerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/smooth/SmoothContainerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;Lmiuix/smooth/SmoothContainerDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1    # Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lmiuix/smooth/SmoothContainerDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-nez v1, :cond_0

    move-object p3, p1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_2
    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    invoke-virtual {v1, p3, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :goto_0
    const/16 p4, 0x17

    if-lt v0, p4, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    :cond_5
    const/4 p3, 0x0

    :goto_1
    iput-object p3, p0, Lmiuix/smooth/SmoothContainerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
