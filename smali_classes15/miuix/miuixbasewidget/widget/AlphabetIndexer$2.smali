.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->initAnimConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$100(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    :cond_0
    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$200(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;F)V

    :cond_0
    return-void
.end method
