.class public Lmiuix/appcompat/app/DateTimePickerDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "DateTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# instance fields
.field private mLunarModePanel:Landroid/view/View;

.field private mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

.field private mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    invoke-direct {p0, p3}, Lmiuix/appcompat/app/DateTimePickerDialog;->init(I)V

    sget p1, Lmiuix/appcompat/R$string;->date_time_picker_dialog_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimeListener:Lmiuix/appcompat/app/DateTimePickerDialog$OnTimeSetListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/appcompat/app/DateTimePickerDialog;)Lmiuix/pickerwidget/widget/DateTimePicker;
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    return-object p0
.end method

.method private init(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/app/DateTimePickerDialog$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/DateTimePickerDialog$1;-><init>(Lmiuix/appcompat/app/DateTimePickerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_datetime_picker_dialog:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    sget v1, Lmiuix/appcompat/R$id;->dateTimePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/pickerwidget/widget/DateTimePicker;

    iput-object v1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {v1, p1}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinuteInterval(I)V

    sget p1, Lmiuix/appcompat/R$id;->lunarModePanel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    sget p1, Lmiuix/appcompat/R$id;->datePickerLunar:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    new-instance v0, Lmiuix/appcompat/app/-$$Lambda$DateTimePickerDialog$BakRZOE8nSC7DVzivT4k4vGSBv8;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/-$$Lambda$DateTimePickerDialog$BakRZOE8nSC7DVzivT4k4vGSBv8;-><init>(Lmiuix/appcompat/app/DateTimePickerDialog;)V

    invoke-virtual {p1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setLunarMode(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$DateTimePickerDialog(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/DateTimePickerDialog;->lambda$init$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLunarMode(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModePanel:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setMaxDateTime(J)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMaxDateTime(J)V

    return-void
.end method

.method public setMinDateTime(J)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->setMinDateTime(J)V

    return-void
.end method

.method public switchLunarState(Z)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mLunarModeState:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public update(J)V
    .locals 0

    iget-object p0, p0, Lmiuix/appcompat/app/DateTimePickerDialog;->mTimePicker:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-virtual {p0, p1, p2}, Lmiuix/pickerwidget/widget/DateTimePicker;->update(J)V

    return-void
.end method
