.class public final synthetic Lcom/android/camera/module/-$$Lambda$CloneModule$gbaxZs6f9HKmoXtLAW1yEWv1LWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/CloneModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$gbaxZs6f9HKmoXtLAW1yEWv1LWU;->f$0:Lcom/android/camera/module/CloneModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$CloneModule$gbaxZs6f9HKmoXtLAW1yEWv1LWU;->f$0:Lcom/android/camera/module/CloneModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->lambda$setOrientationParameter$9$CloneModule()V

    return-void
.end method
