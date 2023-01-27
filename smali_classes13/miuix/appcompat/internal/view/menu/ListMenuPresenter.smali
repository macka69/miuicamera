.class public Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lmiuix/appcompat/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field public static final VIEWS_TAG:Ljava/lang/String; = "miuix:menu:list"


# instance fields
.field mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field mMenuLayout:I

.field mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_expanded_menu_layout:I

    invoke-direct {p0, v0, p1, p2}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    iput p3, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;-><init>(III)V

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;IILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->calcAndSetPadding(Landroid/content/Context;IILandroid/view/View;)V

    return-void
.end method

.method private static calcAndSetPadding(Landroid/content/Context;IILandroid/view/View;)V
    .locals 2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_item_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_item_padding_large:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_item_padding_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_list_menu_item_padding_small:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    invoke-virtual {p3, v0, p1, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mId:I

    return p0
.end method

.method getItemIndexOffset()I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lmiuix/appcompat/internal/view/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V
    .locals 2

    iget v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    :goto_0
    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lmiuix/appcompat/internal/view/menu/MenuPresenter;)V

    :cond_2
    iput-object p2, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {p0, p3}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Lmiuix/appcompat/internal/view/menu/SubMenuBuilder;)Z
    .locals 2

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;-><init>(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lmiuix/appcompat/internal/view/menu/MenuBuilder;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "miuix:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string p0, "miuix:menu:list"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setCallback(Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mCallback:Lmiuix/appcompat/internal/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mId:I

    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 0

    iput p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    iget-object p1, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mMenuView:Lmiuix/appcompat/internal/view/menu/ExpandedMenuView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter;->mAdapter:Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
