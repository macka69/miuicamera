.class public final synthetic Lcom/android/camera/module/-$$Lambda$BaseModule$wtvUqID7rP7BbW0f-pKpZafWXM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/BaseModule;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/BaseModule;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$wtvUqID7rP7BbW0f-pKpZafWXM8;->f$0:Lcom/android/camera/module/BaseModule;

    iput p2, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$wtvUqID7rP7BbW0f-pKpZafWXM8;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$wtvUqID7rP7BbW0f-pKpZafWXM8;->f$0:Lcom/android/camera/module/BaseModule;

    iget p0, p0, Lcom/android/camera/module/-$$Lambda$BaseModule$wtvUqID7rP7BbW0f-pKpZafWXM8;->f$1:F

    invoke-virtual {v0, p0}, Lcom/android/camera/module/BaseModule;->lambda$onZoomingActionUpdate$2$BaseModule(F)V

    return-void
.end method
