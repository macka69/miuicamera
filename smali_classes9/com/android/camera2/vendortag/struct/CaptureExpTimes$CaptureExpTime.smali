.class public Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;
.super Ljava/lang/Object;
.source "CaptureExpTimes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureExpTime"
.end annotation


# instance fields
.field public expTime:I

.field final synthetic this$0:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/camera2/vendortag/struct/CaptureExpTimes;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->this$0:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
