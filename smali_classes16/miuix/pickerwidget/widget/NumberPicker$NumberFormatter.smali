.class Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pickerwidget/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberFormatter"
.end annotation


# instance fields
.field private final iWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;->iWidth:I

    invoke-static {p0, p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
