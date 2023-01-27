.class public final synthetic Lcom/android/camera/-$$Lambda$Camera$hTPLWAB8pk7oKNyAGCBnHmzmOqs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/-$$Lambda$Camera$hTPLWAB8pk7oKNyAGCBnHmzmOqs;->f$0:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final onAvailabilityStatusFetched(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/-$$Lambda$Camera$hTPLWAB8pk7oKNyAGCBnHmzmOqs;->f$0:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->lambda$onCreate$2$Camera(I)V

    return-void
.end method
