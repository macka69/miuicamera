.class Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;
.super Landroid/view/animation/LinearInterpolator;
.source "CameraSnapAnimateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRebound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7

    invoke-super {p0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    const v0, 0x4604d000    # 8500.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapPaintCircle;

    move-result-object v2

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v0, v1

    const/high16 v4, 0x45fa0000    # 8000.0f

    div-float/2addr v1, v4

    mul-float/2addr v1, v3

    iput v1, v2, Lcom/android/camera/ui/drawable/CameraPaintBase;->timeAngle:F

    :cond_0
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpg-float v2, v0, v1

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x41fa0000    # 31.25f

    if-gtz v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$1100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    move-result-object v1

    div-float/2addr v0, v6

    mul-float/2addr v0, v5

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    invoke-interface {v1, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;->OnValueUp(F)V

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$1100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;->OnTheValue(Z)V

    goto :goto_0

    :cond_1
    sub-float v1, v0, v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$1100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;->OnTheValue(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$17;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->access$1100(Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;

    move-result-object p0

    div-float/2addr v0, v6

    mul-float/2addr v0, v5

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    invoke-interface {p0, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable$LongPressIncreaseListener;->OnIncrease(F)V

    :goto_0
    return p1
.end method
