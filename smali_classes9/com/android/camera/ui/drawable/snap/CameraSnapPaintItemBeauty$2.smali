.class Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$2;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "CameraSnapPaintItemBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->initClickReboundSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 10

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fe999999999999aL    # 0.8

    invoke-static/range {v0 .. v9}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v0

    double-to-float p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scaleValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSnapPaintItemBeau"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty$2;->this$0:Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->mCurrentWidth:F

    invoke-static {p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;->access$000(Lcom/android/camera/ui/drawable/snap/CameraSnapPaintItemBeauty;)Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
