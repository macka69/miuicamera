.class public final synthetic Lcom/android/camera/module/-$$Lambda$ovU3icP70N6eTMJvgY9ROrzv6-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$ovU3icP70N6eTMJvgY9ROrzv6-A;->f$0:Lcom/android/camera/module/BaseModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$ovU3icP70N6eTMJvgY9ROrzv6-A;->f$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    return-void
.end method
