.class Lmiuix/popupwidget/widget/DropDownPopupWindow$4;
.super Landroid/view/ViewOutlineProvider;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;->setupContentView(Landroid/widget/FrameLayout;Landroid/view/View;IILmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->this$0:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iput-object p2, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3f333333

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->val$contentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$4;->val$contentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_1
    :goto_0
    return-void
.end method
