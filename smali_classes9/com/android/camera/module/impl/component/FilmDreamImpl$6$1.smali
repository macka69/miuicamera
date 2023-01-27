.class Lcom/android/camera/module/impl/component/FilmDreamImpl$6$1;
.super Ljava/lang/Object;
.source "FilmDreamImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/FilmDreamImpl$6;->OnReceiveFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$6;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$6$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$6$1;->this$1:Lcom/android/camera/module/impl/component/FilmDreamImpl$6;

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$6;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$900(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/data/observeable/FilmDreamProcessing;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void
.end method
