.class Lmiuix/androidbasewidget/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v1

    cmpl-float v1, v0, v1

    const-string v3, "targe"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v1, :cond_1

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v3, v1, v6

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v6

    iget-object v3, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v3, v6, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v3, v5, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lmiuix/androidbasewidget/widget/SeekBar$1$1;

    invoke-direct {v5, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V

    aput-object v5, v3, v6

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ne p2, v0, :cond_4

    :cond_3
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    :cond_4
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_5
    return-void

    nop

    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666
        0x3e19999a
    .end array-data
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
