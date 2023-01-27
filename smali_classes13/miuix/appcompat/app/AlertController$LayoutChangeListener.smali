.class Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutChangeListener"
.end annotation


# instance fields
.field private mHost:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/appcompat/app/AlertController;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private changeViewPadding(Landroid/view/View;II)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, p3, p0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public hasNavigationBarHeightInMultiWindowMode()Z
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/appcompat/app/AlertController;

    invoke-static {p0}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lmiuix/core/util/MiuixUIUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AlertController;

    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$100(Lmiuix/appcompat/app/AlertController;)V

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AlertController;

    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->access$200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int p1, p4, p1

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mWindowVisibleFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    const/4 p3, 0x0

    if-ne p2, p4, :cond_0

    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AlertController;

    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p1, p3}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->mHost:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/appcompat/app/AlertController;

    invoke-static {p2}, Lmiuix/appcompat/app/AlertController;->access$300(Lmiuix/appcompat/app/AlertController;)Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2, p3, p1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->changeViewPadding(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method
