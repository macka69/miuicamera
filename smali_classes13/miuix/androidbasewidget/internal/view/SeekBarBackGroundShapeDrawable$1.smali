.class Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;
.super Lmiuix/animation/property/FloatProperty;
.source "SeekBarBackGroundShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;->this$0:Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;->getValue(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;)F
    .locals 0

    invoke-virtual {p1}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->getBlackAlpha()F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable$1;->setValue(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;F)V

    return-void
.end method

.method public setValue(Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lmiuix/androidbasewidget/internal/view/SeekBarBackGroundShapeDrawable;->setBlackAlpha(F)V

    return-void
.end method
