.class Lmiuix/internal/widget/ListPopup$1;
.super Landroid/database/DataSetObserver;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-static {v0}, Lmiuix/internal/widget/ListPopup;->access$000(Lmiuix/internal/widget/ListPopup;)Lmiuix/internal/widget/ListPopup$ContentSize;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {v0}, Lmiuix/internal/widget/ListPopup;->computePopupContentWidth()I

    move-result v1

    iget-object p0, p0, Lmiuix/internal/widget/ListPopup$1;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/PopupWindow;->update(II)V

    :cond_0
    return-void
.end method
