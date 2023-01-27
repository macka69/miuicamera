.class Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/popupwidget/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/popupwidget/widget/ListPopupWindow;Lmiuix/popupwidget/widget/ListPopupWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lmiuix/popupwidget/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    if-nez p1, :cond_0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {v0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$800(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ArrowPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/ArrowPopupWindow;->getContentHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p1}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$1000(Lmiuix/popupwidget/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lmiuix/popupwidget/widget/ListPopupWindow$PopupTouchInterceptor;->this$0:Lmiuix/popupwidget/widget/ListPopupWindow;

    invoke-static {p0}, Lmiuix/popupwidget/widget/ListPopupWindow;->access$900(Lmiuix/popupwidget/widget/ListPopupWindow;)Lmiuix/popupwidget/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
