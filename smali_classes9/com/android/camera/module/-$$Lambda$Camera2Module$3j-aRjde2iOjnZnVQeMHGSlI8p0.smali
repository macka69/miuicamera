.class public final synthetic Lcom/android/camera/module/-$$Lambda$Camera2Module$3j-aRjde2iOjnZnVQeMHGSlI8p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$3j-aRjde2iOjnZnVQeMHGSlI8p0;->f$0:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$Camera2Module$3j-aRjde2iOjnZnVQeMHGSlI8p0;->f$0:Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    invoke-static {p0}, Lcom/android/camera/module/Camera2Module;->lambda$handleLongExpCaptureIfNeeded$24(Lcom/android/camera2/vendortag/struct/MiviSuperNightData;)V

    return-void
.end method
