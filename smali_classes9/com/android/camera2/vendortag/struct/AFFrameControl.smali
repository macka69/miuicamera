.class public Lcom/android/camera2/vendortag/struct/AFFrameControl;
.super Ljava/lang/Object;
.source "AFFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;,
        Lcom/android/camera2/vendortag/struct/AFFrameControl$MarshalQueryableAFFrameControl;
    }
.end annotation


# static fields
.field private static final COORDINATE_COUNT:I = 0x4

.field private static final MAX_AFGYRO_SAMPLE_SIZE:I = 0x20

.field private static final MAX_NUM_OF_STEPS:I = 0x2f


# instance fields
.field private mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

.field private mTargetLensPosition:I

.field private mUseDACValue:I


# direct methods
.method public constructor <init>(IILcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mTargetLensPosition:I

    iput p2, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mUseDACValue:I

    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera2/vendortag/struct/AFFrameControl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mTargetLensPosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/camera2/vendortag/struct/AFFrameControl;)I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mUseDACValue:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/camera2/vendortag/struct/AFFrameControl;)Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    return-object p0
.end method


# virtual methods
.method public getAFGyroData()Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mAFGyroData:Lcom/android/camera2/vendortag/struct/AFFrameControl$AFGyroData;

    return-object p0
.end method

.method public getTargetLensPosition()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mTargetLensPosition:I

    return p0
.end method

.method public getUseDACValue()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/vendortag/struct/AFFrameControl;->mUseDACValue:I

    return p0
.end method
