.class public Lmiuix/appcompat/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;,
        Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private final mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

.field private mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

.field private mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiuix/appcompat/R$styleable;->miuiPopupMenu:[I

    sget v1, Lmiuix/appcompat/R$attr;->miuiPopupMenuStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Lmiuix/appcompat/R$styleable;->miuiPopupMenu_miuiPopupTheme:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    new-instance p1, Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lmiuix/appcompat/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    new-instance p1, Lmiuix/appcompat/widget/PopupMenu$1;

    iget-object p2, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lmiuix/appcompat/widget/PopupMenu$1;-><init>(Lmiuix/appcompat/widget/PopupMenu;Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$000(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/PopupMenu;)Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    return-object p0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public inflate(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/MenuRes;
        .end annotation
    .end param

    invoke-direct {p0}, Lmiuix/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public setOnDismissListener(Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mOnDismissListener:Lmiuix/appcompat/widget/PopupMenu$OnDismissListener;

    return-void
.end method

.method public setOnMenuItemClickListener(Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .param p1    # Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenuItemClickListener:Lmiuix/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showAsDropDown(II)V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object v1, p0, Lmiuix/appcompat/widget/PopupMenu;->mMenu:Lmiuix/appcompat/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lmiuix/internal/widget/PopupMenuWindow;->update(Landroid/view/Menu;)V

    iget-object v0, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    invoke-virtual {v0, p1}, Lmiuix/internal/widget/ListPopup;->setHorizontalOffset(I)V

    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    invoke-virtual {p1, p2}, Lmiuix/internal/widget/ListPopup;->setVerticalOffset(I)V

    iget-object p1, p0, Lmiuix/appcompat/widget/PopupMenu;->mPopupMenu:Lmiuix/internal/widget/PopupMenuWindow;

    iget-object p0, p0, Lmiuix/appcompat/widget/PopupMenu;->mAnchor:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lmiuix/internal/widget/PopupMenuWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
