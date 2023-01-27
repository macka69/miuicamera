.class public final synthetic Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintCenterIndicator$q6kPb0lUkQhBFElzebaUVeijGNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintCenterIndicator$q6kPb0lUkQhBFElzebaUVeijGNY;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintCenterIndicator$q6kPb0lUkQhBFElzebaUVeijGNY;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintCenterIndicator;->lambda$setupLottie$0(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
