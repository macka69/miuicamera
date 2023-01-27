.class Lmiuix/miuixbasewidget/widget/FilterSortView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/FilterSortView$TabView$OnFilteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/FilterSortView;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnFilteredChangedListener(Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-static {p2}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lmiuix/animation/controller/AnimState;

    const-string v0, "target"

    invoke-direct {p2, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    new-array v1, v2, [J

    invoke-virtual {p2, v0, p1, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/FilterSortView$1;->this$0:Lmiuix/miuixbasewidget/widget/FilterSortView;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/FilterSortView;->access$500(Lmiuix/miuixbasewidget/widget/FilterSortView;)Lmiuix/miuixbasewidget/widget/FilterSortView$TabView;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-array p2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p0, p1, p2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method
