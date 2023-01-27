.class public Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;
.super Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListController"
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lmiuix/popupwidget/R$layout;->miuix_appcompat_drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V
    .locals 1

    sget v0, Lmiuix/popupwidget/R$layout;->miuix_appcompat_drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;I)V

    return-void
.end method

.method public constructor <init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;I)V

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 0

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-void
.end method
