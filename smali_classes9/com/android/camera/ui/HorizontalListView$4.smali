.class Lcom/android/camera/ui/HorizontalListView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 4

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0, v1, v0, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/camera/ui/HorizontalListView$4;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$900(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$600(Lcom/android/camera/ui/HorizontalListView;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p1, v1

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->access$700(Lcom/android/camera/ui/HorizontalListView;I)I

    move-result v6

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$900(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    iget-object p0, v4, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$300(Lcom/android/camera/ui/HorizontalListView;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$300(Lcom/android/camera/ui/HorizontalListView;)Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->isSplitFocusExposureDown()Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalListView;->isTouchMoveEnable()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    iget p4, p2, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    float-to-int p3, p3

    add-int/2addr p4, p3

    iput p4, p2, Lcom/android/camera/ui/HorizontalListView;->mNextX:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/camera/ui/HorizontalListView;->access$402(Lcom/android/camera/ui/HorizontalListView;Z)Z

    iget-object p0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->requestLayout()V

    return p2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ui/HorizontalListView;->access$502(Lcom/android/camera/ui/HorizontalListView;Z)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/camera/ui/HorizontalListView$4;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$600(Lcom/android/camera/ui/HorizontalListView;)I

    move-result p1

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {v0, p1}, Lcom/android/camera/ui/HorizontalListView;->access$700(Lcom/android/camera/ui/HorizontalListView;I)I

    move-result v6

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$800(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    invoke-static {p1}, Lcom/android/camera/ui/HorizontalListView;->access$800(Lcom/android/camera/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/HorizontalListView$4;->this$0:Lcom/android/camera/ui/HorizontalListView;

    iget-object p0, v4, Lcom/android/camera/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
