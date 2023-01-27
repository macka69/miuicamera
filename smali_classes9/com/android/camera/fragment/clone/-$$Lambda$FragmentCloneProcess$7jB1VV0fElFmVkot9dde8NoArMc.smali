.class public final synthetic Lcom/android/camera/fragment/clone/-$$Lambda$FragmentCloneProcess$7jB1VV0fElFmVkot9dde8NoArMc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/clone/FragmentCloneProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentCloneProcess$7jB1VV0fElFmVkot9dde8NoArMc;->f$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/clone/-$$Lambda$FragmentCloneProcess$7jB1VV0fElFmVkot9dde8NoArMc;->f$0:Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;->lambda$addViewForGestureRecognize$0$FragmentCloneProcess(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
