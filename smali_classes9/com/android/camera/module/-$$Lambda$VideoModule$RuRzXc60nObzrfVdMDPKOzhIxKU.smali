.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$RuRzXc60nObzrfVdMDPKOzhIxKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$RuRzXc60nObzrfVdMDPKOzhIxKU;->f$0:Lcom/android/camera/module/VideoModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$RuRzXc60nObzrfVdMDPKOzhIxKU;->f$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->lambda$updateManualEvAdjust$4$VideoModule()V

    return-void
.end method
