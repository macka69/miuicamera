.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;
.super Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;
.source "DropDownSingleChoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$100(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    :cond_0
    return-void
.end method
