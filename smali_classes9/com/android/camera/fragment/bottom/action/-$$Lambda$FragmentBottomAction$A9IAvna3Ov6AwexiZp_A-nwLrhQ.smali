.class public final synthetic Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$A9IAvna3Ov6AwexiZp_A-nwLrhQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/AnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/AnimationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$A9IAvna3Ov6AwexiZp_A-nwLrhQ;->f$0:Lcom/android/camera/ui/AnimationView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/action/-$$Lambda$FragmentBottomAction$A9IAvna3Ov6AwexiZp_A-nwLrhQ;->f$0:Lcom/android/camera/ui/AnimationView;

    invoke-static {p0, p1}, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;->lambda$initAnimation$0(Lcom/android/camera/ui/AnimationView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
