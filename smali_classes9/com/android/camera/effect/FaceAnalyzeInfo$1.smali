.class Lcom/android/camera/effect/FaceAnalyzeInfo$1;
.super Ljava/lang/Object;
.source "FaceAnalyzeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/FaceAnalyzeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/camera/effect/FaceAnalyzeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/effect/FaceAnalyzeInfo;
    .locals 0

    new-instance p0, Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/FaceAnalyzeInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/FaceAnalyzeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/camera/effect/FaceAnalyzeInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/camera/effect/FaceAnalyzeInfo;
    .locals 0

    new-array p0, p1, [Lcom/android/camera/effect/FaceAnalyzeInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/FaceAnalyzeInfo$1;->newArray(I)[Lcom/android/camera/effect/FaceAnalyzeInfo;

    move-result-object p0

    return-object p0
.end method
