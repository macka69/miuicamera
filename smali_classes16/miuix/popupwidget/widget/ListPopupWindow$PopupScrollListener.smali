.class Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p2}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupScrollListener;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    :cond_0
    return-void
.end method
