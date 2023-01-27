.class public final synthetic Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$jaO-2G28EvnnNin3NiRM_X7CYGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$jaO-2G28EvnnNin3NiRM_X7CYGs;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/-$$Lambda$DualVideoModuleBase$jaO-2G28EvnnNin3NiRM_X7CYGs;->f$0:[I

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->lambda$onCameraOpened$15([ILcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
