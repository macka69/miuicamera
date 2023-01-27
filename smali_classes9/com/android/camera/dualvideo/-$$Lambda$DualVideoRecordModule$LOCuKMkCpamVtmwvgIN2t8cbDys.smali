.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;

    invoke-direct {v0}, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;-><init>()V

    sput-object v0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;->INSTANCE:Lcom/android/camera/dualvideo/-$$Lambda$DualVideoRecordModule$LOCuKMkCpamVtmwvgIN2t8cbDys;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->lambda$hideHint$11(Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V

    return-void
.end method
