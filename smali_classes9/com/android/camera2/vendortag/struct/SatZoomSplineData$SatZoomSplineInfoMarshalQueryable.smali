.class public Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable;
.super Ljava/lang/Object;
.source "SatZoomSplineData.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/SatZoomSplineData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatZoomSplineInfoMarshalQueryable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/camera2/vendortag/struct/SatZoomSplineData$SatZoomSplineInfoMarshalQueryable$MarshalerImpl;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;ILcom/android/camera2/vendortag/struct/SatZoomSplineData$1;)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "Lcom/android/camera2/vendortag/struct/SatZoomSplineData;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    const-class p0, Lcom/android/camera2/vendortag/struct/SatZoomSplineData;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
