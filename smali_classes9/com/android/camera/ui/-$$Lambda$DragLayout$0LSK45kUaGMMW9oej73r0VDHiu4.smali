.class public final synthetic Lcom/android/camera/ui/-$$Lambda$DragLayout$0LSK45kUaGMMW9oej73r0VDHiu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/DragLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/DragLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/-$$Lambda$DragLayout$0LSK45kUaGMMW9oej73r0VDHiu4;->f$0:Lcom/android/camera/ui/DragLayout;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/-$$Lambda$DragLayout$0LSK45kUaGMMW9oej73r0VDHiu4;->f$0:Lcom/android/camera/ui/DragLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/ui/DragLayout;->lambda$getDragChildren$0$DragLayout(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
