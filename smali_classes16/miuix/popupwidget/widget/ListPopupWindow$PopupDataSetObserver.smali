.class Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->show()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->dismiss(Z)V

    return-void
.end method
