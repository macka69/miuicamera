.class public final synthetic Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;->f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iput-object p2, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;->f$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    iget-object p0, p0, Lcom/android/camera/ui/drawable/focus/-$$Lambda$CameraFocusPaintEvAdjust$Res09OTzDL0axX9ZgeUqU_Qpf2o;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->lambda$startEvLineAriseAnimIfNeed$1$CameraFocusPaintEvAdjust(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
