.class Lcom/android/camera/ui/DragLayoutBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayoutBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/DragLayoutBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/DragLayoutBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/DragLayoutBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/DragLayoutBar$2;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/camera/ui/DragLayoutBar$2;->this$0:Lcom/android/camera/ui/DragLayoutBar;

    invoke-static {p0}, Lcom/android/camera/ui/DragLayoutBar;->access$700(Lcom/android/camera/ui/DragLayoutBar;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/ui/DragLayoutBar;->access$602(Lcom/android/camera/ui/DragLayoutBar;I)I

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
