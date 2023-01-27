.class Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "AutoHibernationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/dialog/AutoHibernationFragment$1;->this$0:Lcom/android/camera/fragment/dialog/AutoHibernationFragment;

    invoke-static {p0}, Lcom/android/camera/fragment/dialog/AutoHibernationFragment;->access$000(Lcom/android/camera/fragment/dialog/AutoHibernationFragment;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    return-void
.end method
