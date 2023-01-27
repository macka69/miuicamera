.class Lcom/android/camera/ui/WaterBox$LineEndPoints;
.super Ljava/lang/Object;
.source "WaterBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/WaterBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineEndPoints"
.end annotation


# instance fields
.field private final endPoint:Landroid/graphics/PointF;

.field private final startPoint:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final component1()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final component2()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method final getEndPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method final getStartPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/PointF;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/PointF;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineEndPoints(startPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->startPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/WaterBox$LineEndPoints;->endPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
