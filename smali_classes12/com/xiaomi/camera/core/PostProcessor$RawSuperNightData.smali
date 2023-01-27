.class Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;
.super Ljava/lang/Object;
.source "PostProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RawSuperNightData"
.end annotation


# instance fields
.field mainImageReceived:Z

.field reprocessData:Lcom/xiaomi/camera/imagecodec/ReprocessData;

.field tuningImageReceived:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/core/PostProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/core/PostProcessor$RawSuperNightData;-><init>()V

    return-void
.end method
