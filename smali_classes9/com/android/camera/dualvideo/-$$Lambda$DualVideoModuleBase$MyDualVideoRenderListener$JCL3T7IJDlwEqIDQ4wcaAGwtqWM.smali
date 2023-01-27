.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$MyDualVideoRenderListener$JCL3T7IJDlwEqIDQ4wcaAGwtqWM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase$MyDualVideoRenderListener;->lambda$onSwitchClicked$4(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p0

    return-object p0
.end method
