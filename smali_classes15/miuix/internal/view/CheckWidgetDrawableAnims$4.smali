.class Lmiuix/internal/view/CheckWidgetDrawableAnims$4;
.super Lmiuix/animation/property/FloatProperty;
.source "CheckWidgetDrawableAnims.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckWidgetDrawableAnims;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/animation/property/FloatProperty<",
        "Lmiuix/internal/view/CheckWidgetDrawableAnims;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;->getValue(Lmiuix/internal/view/CheckWidgetDrawableAnims;)F

    move-result p0

    return p0
.end method

.method public getValue(Lmiuix/internal/view/CheckWidgetDrawableAnims;)F
    .locals 0

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->getScale()F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p1, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;->setValue(Lmiuix/internal/view/CheckWidgetDrawableAnims;F)V

    return-void
.end method

.method public setValue(Lmiuix/internal/view/CheckWidgetDrawableAnims;F)V
    .locals 0

    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$4;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    invoke-virtual {p0, p2}, Lmiuix/internal/view/CheckWidgetDrawableAnims;->setScale(F)V

    return-void
.end method
