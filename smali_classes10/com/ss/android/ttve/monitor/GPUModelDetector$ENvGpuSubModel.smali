.class public final enum Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
.super Ljava/lang/Enum;
.source "GPUModelDetector.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/monitor/GPUModelDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENvGpuSubModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum VideoCore_IV_HW:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

.field public static final enum Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Adreno"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Mali"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Mali_MP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Mali_T"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_SGX"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_SGX_MP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_SGX_MP2"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_Rogue_Han"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_Rogue_Hood"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_Rogue_Marlowe"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "PowerVR_Rogue_G"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Intel_HD_Graphics"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "NVIDIA_Tegra"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "NVIDIA_Tegra_X1"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "NVIDIA_AP"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "Vivante_GC"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    new-instance v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const-string v1, "VideoCore_IV_HW"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->VideoCore_IV_HW:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v1, 0x12

    new-array v1, v1, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    sget-object v16, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Unknown:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v16, v1, v2

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Adreno:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v4

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v5

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Mali_T:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v6

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v7

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v8

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_SGX_MP2:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v9

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Han:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v10

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Hood:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v11

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_Marlowe:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v12

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->PowerVR_Rogue_G:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v13

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Intel_HD_Graphics:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    aput-object v2, v1, v14

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_Tegra_X1:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->NVIDIA_AP:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->Vivante_GC:Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    const-class v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;
    .locals 1

    sget-object v0, Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->$VALUES:[Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    invoke-virtual {v0}, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttve/monitor/GPUModelDetector$ENvGpuSubModel;

    return-object v0
.end method
