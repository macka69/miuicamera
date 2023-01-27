.class public Lmiuix/internal/widget/PopupMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, v0}, Lmiuix/internal/widget/PopupMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    :cond_0
    iput-object p1, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/ArrayList<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiuix/internal/widget/PopupMenuAdapter;->checkMenuItem(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkMenuItem(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-interface {p1}, Landroid/view/MenuItem;->isVisible()Z

    move-result p0

    return p0
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_popup_menu_item:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;-><init>(Lmiuix/internal/widget/PopupMenuAdapter$1;)V

    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    sget v1, Lmiuix/appcompat/R$id;->tag_popup_menu_item:I

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/internal/widget/PopupMenuAdapter;->getCount()I

    move-result p3

    invoke-static {p2, p1, p3}, Lmiuix/internal/util/TaggingDrawableUtil;->updateItemBackground(Landroid/view/View;II)V

    sget p3, Lmiuix/appcompat/R$id;->tag_popup_menu_item:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    check-cast p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/internal/widget/PopupMenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object p1, p3, Lmiuix/internal/widget/PopupMenuAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {p0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p2}, Lmiuix/internal/util/AnimHelper;->addPressAnimWithBg(Landroid/view/View;)V

    return-object p2
.end method

.method public update(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/PopupMenuAdapter;->mAvailableItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lmiuix/internal/widget/PopupMenuAdapter;->buildMenuItems(Landroid/view/Menu;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
