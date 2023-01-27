.class Lmiuix/appcompat/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/DatePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog$1;->this$0:Lmiuix/appcompat/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lmiuix/pickerwidget/widget/DatePicker;IIIZ)V
    .locals 0

    iget-object p1, p0, Lmiuix/appcompat/app/DatePickerDialog$1;->this$0:Lmiuix/appcompat/app/DatePickerDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/DatePickerDialog;->access$000(Lmiuix/appcompat/app/DatePickerDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiuix/appcompat/app/DatePickerDialog$1;->this$0:Lmiuix/appcompat/app/DatePickerDialog;

    invoke-static {p0, p2, p3, p4}, Lmiuix/appcompat/app/DatePickerDialog;->access$100(Lmiuix/appcompat/app/DatePickerDialog;III)V

    :cond_0
    return-void
.end method
