.class public Lmiuix/internal/widget/PopupMenuWindow;
.super Lmiuix/internal/widget/ListPopup;
.source "PopupMenuWindow.java"


# instance fields
.field private mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-direct {v0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$Dz2vEvvv4SXdik0QJJHjn7fkCw0;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$Dz2vEvvv4SXdik0QJJHjn7fkCw0;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance p1, Lmiuix/internal/widget/-$$Lambda$J_XEdHnaRGVca2pNfCfoXiOaY2s;

    invoke-direct {p1, p0}, Lmiuix/internal/widget/-$$Lambda$J_XEdHnaRGVca2pNfCfoXiOaY2s;-><init>(Lmiuix/internal/widget/PopupMenuWindow;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {p1, p3}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    new-instance p2, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;

    invoke-direct {p2, p0, p1}, Lmiuix/internal/widget/-$$Lambda$PopupMenuWindow$K8XAqnRastPelOAVKwmzHaXRtqg;-><init>(Lmiuix/internal/widget/PopupMenuWindow;Landroid/view/SubMenu;)V

    invoke-virtual {p0, p2}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->onMenuItemClick(Landroid/view/MenuItem;)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private synthetic lambda$null$0(Landroid/view/SubMenu;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/internal/widget/ListPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    iget-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$1$PopupMenuWindow(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmiuix/internal/widget/PopupMenuWindow;->lambda$new$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic lambda$null$0$PopupMenuWindow(Landroid/view/SubMenu;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/internal/widget/PopupMenuWindow;->lambda$null$0(Landroid/view/SubMenu;)V

    return-void
.end method

.method protected onDismiss()V
    .locals 0

    return-void
.end method

.method protected onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastAnchor:Landroid/view/View;

    iput-object p2, p0, Lmiuix/internal/widget/PopupMenuWindow;->mLastParent:Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/PopupMenuWindow;->mAdapter:Lmiuix/internal/widget/PopupMenuAdapter;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
