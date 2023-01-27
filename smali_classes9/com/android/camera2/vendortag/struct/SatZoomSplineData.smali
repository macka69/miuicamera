.class public Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
.super Ljava/lang/Object;
.source "SatZoomSplineData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;
    }
.end annotation


# instance fields
.field public final size:B

.field public final times:[F

.field public final totalsize:B

.field public final type:B

.field public final zooms:[F


# direct methods
.method public constructor <init>(BBB[F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    iput-byte p2, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    iput-byte p3, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    iput-object p4, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    iput-object p5, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SatZoomSplineData(type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->size:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalsize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->totalsize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zooms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->zooms:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", times: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;->times:[F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
