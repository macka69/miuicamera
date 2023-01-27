.class public final synthetic Lcom/android/camera/module/-$$Lambda$AmbilightModule$vM-IrASGKoVp4uFGrKOwKkUJAZE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/module/AmbilightModule$SaveStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/AmbilightModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/AmbilightModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$vM-IrASGKoVp4uFGrKOwKkUJAZE;->f$0:Lcom/android/camera/module/AmbilightModule;

    return-void
.end method


# virtual methods
.method public final onSaveCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$AmbilightModule$vM-IrASGKoVp4uFGrKOwKkUJAZE;->f$0:Lcom/android/camera/module/AmbilightModule;

    invoke-virtual {p0}, Lcom/android/camera/module/AmbilightModule;->lambda$startSaveTask$1$AmbilightModule()V

    return-void
.end method
