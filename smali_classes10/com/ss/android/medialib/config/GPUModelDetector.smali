.class public Lcom/ss/android/medialib/config/GPUModelDetector;
.super Ljava/lang/Object;
.source "GPUModelDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;,
        Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;,
        Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GPUModelDetector"

.field private static final instance:Lcom/ss/android/medialib/config/GPUModelDetector;


# instance fields
.field private isSurpportAdvancedEffect:Z

.field private isSurpportHighResolutionRecord:Z

.field private mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

.field private mGPUModelNumber:I

.field private mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadLibrary()V

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector;

    invoke-direct {v0}, Lcom/ss/android/medialib/config/GPUModelDetector;-><init>()V

    sput-object v0, Lcom/ss/android/medialib/config/GPUModelDetector;->instance:Lcom/ss/android/medialib/config/GPUModelDetector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DetectAdrenoGpu([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aget-object v3, p1, v2

    const-string v4, "(TM)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    goto :goto_0

    :cond_1
    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    :cond_2
    :goto_0
    return-void
.end method

.method private DetectIntelGpu([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aget-object v2, p1, v2

    const-string v3, "HD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const-string v3, "Graphics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v2, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    :cond_1
    return-void
.end method

.method private DetectMaliGpu([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    aget-object v0, p1, v1

    const-string v1, "MP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    :cond_2
    :goto_0
    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    goto :goto_1

    :cond_3
    if-ne v0, v1, :cond_4

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    aget-object v0, p1, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_4

    aget-object p1, p1, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    :cond_4
    :goto_1
    return-void
.end method

.method private DetectNVIDIAGpu([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aget-object v3, p1, v2

    const-string v4, "Tegra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    aget-object p1, p1, v1

    const-string v0, "X1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_2
    aget-object p1, p1, v2

    const-string v0, "AP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    :cond_3
    :goto_0
    return-void
.end method

.method private DetectPowerVRGpu([Ljava/lang/String;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    aget-object v3, p1, v2

    const-string v4, "SGX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_4

    if-eq v0, v4, :cond_1

    return-void

    :cond_1
    aget-object v0, p1, v1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    aget-object v0, p1, v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    goto/16 :goto_0

    :cond_2
    aget-object v0, p1, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "MP2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, p1, v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    goto/16 :goto_0

    :cond_3
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    goto :goto_0

    :cond_4
    aget-object v3, p1, v2

    const-string v5, "Rogue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eq v0, v4, :cond_5

    return-void

    :cond_5
    aget-object v0, p1, v1

    const-string v3, "Han"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_6
    aget-object v0, p1, v1

    const-string v3, "Hood"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_7
    aget-object v0, p1, v1

    const-string v3, "Marlowe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    goto :goto_0

    :cond_8
    aget-object v0, p1, v1

    const-string v3, "G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object p1, p1, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    :cond_9
    :goto_0
    return-void
.end method

.method private DetectVideoCoreGpu([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const-string v1, "IV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    aget-object p1, p1, v0

    const-string v0, "HW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->VideoCore_IV_HW:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    :cond_0
    return-void
.end method

.method private DetectVivanteGCGpu([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->stripNonDigitCharFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    return-void
.end method

.method private DetectVivanteGpu([Ljava/lang/String;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, "GC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->stripNonDigitCharFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/config/GPUModelDetector;Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->getGPUModel(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/config/GPUModelDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportAdvancedEffect:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ss/android/medialib/config/GPUModelDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportAdvancedEffect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/config/GPUModelDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportHighResolutionRecord:Z

    return p0
.end method

.method static synthetic access$202(Lcom/ss/android/medialib/config/GPUModelDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportHighResolutionRecord:Z

    return p1
.end method

.method private getGPUModel(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;
    .locals 3

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    const-string v1, "[-\\s+]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_8

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Adreno"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Adreno:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectAdrenoGpu([Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "Mali"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Mali:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectMaliGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "PowerVR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->PowerVR:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectPowerVRGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "Intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "Intel(R)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "NVIDIA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectNVIDIAGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "Vivante"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectVivanteGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "GC1000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Vivante:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectVivanteGCGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "VideoCore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->VideoCore:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectVideoCoreGpu([Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_0
    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;->Intel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iput-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    invoke-direct {p0, p1}, Lcom/ss/android/medialib/config/GPUModelDetector;->DetectIntelGpu([Ljava/lang/String;)V

    :cond_8
    :goto_1
    new-instance p1, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;

    iget-object v0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;

    iget-object v1, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUSubModel:Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;

    iget v2, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->mGPUModelNumber:I

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;-><init>(Lcom/ss/android/medialib/config/GPUModelDetector;Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuModel;Lcom/ss/android/medialib/config/GPUModelDetector$ENvGpuSubModel;I)V

    return-object p1
.end method

.method public static getInstance()Lcom/ss/android/medialib/config/GPUModelDetector;
    .locals 1

    sget-object v0, Lcom/ss/android/medialib/config/GPUModelDetector;->instance:Lcom/ss/android/medialib/config/GPUModelDetector;

    return-object v0
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "-?[0-9]+.?[0-9]+"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "[0-9]+"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static native nativeGetGLVersion()Ljava/lang/String;
.end method

.method public static native nativeGetGPURenderer()Ljava/lang/String;
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private stripNonDigitCharFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ss/android/medialib/config/GPUModelDetector;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public detectGPUSurpportAdvancedEffect()V
    .locals 1

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/config/GPUModelDetector$1;-><init>(Lcom/ss/android/medialib/config/GPUModelDetector;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public detectGPUSurpportHighResolutionRecord()V
    .locals 1

    new-instance v0, Lcom/ss/android/medialib/config/GPUModelDetector$2;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/config/GPUModelDetector$2;-><init>(Lcom/ss/android/medialib/config/GPUModelDetector;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getGLVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/ss/android/medialib/config/GPUModelDetector;->nativeGetGLVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGPUModel()Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;
    .locals 1

    invoke-static {}, Lcom/ss/android/medialib/config/GPUModelDetector;->nativeGetGPURenderer()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ss/android/medialib/config/GPUModelDetector;->getGPUModel(Ljava/lang/String;)Lcom/ss/android/medialib/config/GPUModelDetector$GPUModelInfo;

    move-result-object p0

    return-object p0
.end method

.method public isSurpportAdvancedEffect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportAdvancedEffect:Z

    return p0
.end method

.method public isSurpportHighResolutionRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/medialib/config/GPUModelDetector;->isSurpportHighResolutionRecord:Z

    return p0
.end method
