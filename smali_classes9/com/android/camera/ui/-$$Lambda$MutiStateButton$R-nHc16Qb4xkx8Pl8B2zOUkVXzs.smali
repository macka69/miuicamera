.class public final synthetic Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/MutiStateButton;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/MutiStateButton;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$0:Lcom/android/camera/ui/MutiStateButton;

    iput p2, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$1:F

    iput p3, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$2:F

    iput p4, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$3:F

    iput p5, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$4:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$0:Lcom/android/camera/ui/MutiStateButton;

    iget v1, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$1:F

    iget v2, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$2:F

    iget v3, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$3:F

    iget v4, p0, Lcom/android/camera/ui/-$$Lambda$MutiStateButton$R-nHc16Qb4xkx8Pl8B2zOUkVXzs;->f$4:F

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/MutiStateButton;->lambda$startSwtichAnimation$0$MutiStateButton(FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
