.class public final synthetic Lcom/android/camera/module/-$$Lambda$QfxCTKLbpCDe7X5CfvCdvLsgRC4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$QfxCTKLbpCDe7X5CfvCdvLsgRC4;->f$0:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$QfxCTKLbpCDe7X5CfvCdvLsgRC4;->f$0:Lcom/android/camera/module/Camera2Module;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/module/Camera2Module;->resetToIdleNoKeep(Z)V

    return-void
.end method
