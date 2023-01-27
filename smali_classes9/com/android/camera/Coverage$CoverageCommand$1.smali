.class Lcom/android/camera/Coverage$CoverageCommand$1;
.super Ljava/lang/Object;
.source "Coverage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Coverage$CoverageCommand;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Coverage$CoverageCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/Coverage$CoverageCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Coverage$CoverageCommand$1;->this$0:Lcom/android/camera/Coverage$CoverageCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/Coverage$CoverageCommand$1;->this$0:Lcom/android/camera/Coverage$CoverageCommand;

    invoke-static {p0}, Lcom/android/camera/Coverage$CoverageCommand;->access$000(Lcom/android/camera/Coverage$CoverageCommand;)V

    return-void
.end method
