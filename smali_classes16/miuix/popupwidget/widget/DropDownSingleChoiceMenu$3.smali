.class Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {p1, p3}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$202(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)I

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-static {p1}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->access$000(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;)Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object p1

    iget-object p2, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-interface {p1, p2, p3}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;->onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V

    :cond_0
    iget-object p0, p0, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;

    invoke-virtual {p0}, Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method
