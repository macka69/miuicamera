.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndexerTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;Landroid/view/View;)V
    .locals 0
    .param p1    # Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 3

    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p2, p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V

    iget-object p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p2}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$700(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)Landroid/widget/SectionIndexer;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$800(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;ILandroid/widget/SectionIndexer;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3
    .param p2    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$IndexerTouchHelper;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result p0

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
