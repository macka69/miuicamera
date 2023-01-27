.class Lcom/android/camera/module/TimeFreezeModule$3;
.super Ljava/lang/Object;
.source "TimeFreezeModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/TimeFreezeModule;->cancelTimeFreezeCountDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/TimeFreezeModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/TimeFreezeModule$3;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/TimeFreezeModule$3;->this$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-static {p0}, Lcom/android/camera/module/TimeFreezeModule;->access$000(Lcom/android/camera/module/TimeFreezeModule;)V

    return-void
.end method
