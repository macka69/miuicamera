.class public Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiuix/internal/widget/ListPopup;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

.field private mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/internal/widget/ListPopup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lmiuix/appcompat/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, v0, p2}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/ListPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lmiuix/appcompat/app/ActionBarDelegateImpl;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lmiuix/appcompat/app/ActionBarDelegateImpl;

    return-object p0
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lmiuix/internal/widget/ListPopup;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
