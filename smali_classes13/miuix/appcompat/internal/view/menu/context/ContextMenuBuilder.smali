.class public Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;
.super Lmiuix/appcompat/internal/view/menu/MenuBuilder;
.source "ContextMenuBuilder.java"

# interfaces
.implements Landroid/view/ContextMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    move-result-object p0

    check-cast p0, Landroid/view/ContextMenu;

    return-object p0
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;)Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const p1, 0xc351

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance p1, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public show(Landroid/view/View;Landroid/os/IBinder;FF)Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuHelper;->createContextMenu(Landroid/view/View;Lmiuix/appcompat/internal/view/menu/context/ContextMenuBuilder;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0xc351

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    new-instance v0, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0, p2, p1, p3, p4}, Lmiuix/appcompat/internal/view/menu/context/ContextMenuPopupWindowHelper;->show(Landroid/os/IBinder;Landroid/view/View;FF)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
