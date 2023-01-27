.class Lmiuix/appcompat/app/DateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/DateTimePickerDialog;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/DateTimePickerDialog;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/DateTimePickerDialog;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    invoke-static {p1}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    move-result-object p1

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog$1;->this$0:Lmiuix/appcompat/app/DateTimePickerDialog;

    invoke-static {p0}, Lmiuix/appcompat/app/DateTimePickerDialog;->access$100(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/pickerwidget/widget/DateTimePicker;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->getTimeInMillis()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;->onTimeSet(Lmiuix/appcompat/app/DateTimePickerDialog;J)V

    :cond_0
    return-void
.end method
