.class public final synthetic Lcom/android/camera/module/-$$Lambda$AmbilightModule$_go5BJNiIJWN1oxkwBvaiJ26_mA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/AmbilightModule;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/AmbilightModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$_go5BJNiIJWN1oxkwBvaiJ26_mA;->f$0:Lcom/android/camera/module/AmbilightModule;

    iput-boolean p2, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$_go5BJNiIJWN1oxkwBvaiJ26_mA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$_go5BJNiIJWN1oxkwBvaiJ26_mA;->f$0:Lcom/android/camera/module/AmbilightModule;

    iget-boolean p0, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$_go5BJNiIJWN1oxkwBvaiJ26_mA;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AmbilightModule;->lambda$updateRecordingTimeStyle$0$AmbilightModule(Z)V

    return-void
.end method
