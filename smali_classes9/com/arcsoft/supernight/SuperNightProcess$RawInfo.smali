.class public Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;
.super Ljava/lang/Object;
.source "SuperNightProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/supernight/SuperNightProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RawInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/arcsoft/supernight/SuperNightProcess;

.field public blackLevel:[I

.field public brightLevel:[I

.field public evList:[I

.field public expIndex:I

.field public fAdrcGain:F

.field public fISPGain:F

.field public fSensorGain:F

.field public fShutter:F

.field public fTotalGain:F

.field public fWbGain:[F

.field public luxIndex:I

.field public rawType:I


# direct methods
.method public constructor <init>(Lcom/arcsoft/supernight/SuperNightProcess;)V
    .locals 3

    iput-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->a:Lcom/arcsoft/supernight/SuperNightProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->evList:[I

    const/4 p1, 0x4

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->brightLevel:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->blackLevel:[I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fWbGain:[F

    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-ge v0, p1, :cond_0

    iget-object v2, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fWbGain:[F

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/arcsoft/supernight/SuperNightProcess$RawInfo;->fAdrcGain:F

    return-void
.end method
