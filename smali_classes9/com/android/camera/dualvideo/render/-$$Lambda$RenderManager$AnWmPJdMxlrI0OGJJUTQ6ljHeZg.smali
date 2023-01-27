.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$AnWmPJdMxlrI0OGJJUTQ6ljHeZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$AnWmPJdMxlrI0OGJJUTQ6ljHeZg;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$RenderManager$AnWmPJdMxlrI0OGJJUTQ6ljHeZg;->f$0:Ljava/util/List;

    check-cast p1, Lcom/android/camera/module/encoder/RenderHandler;

    invoke-static {p0, p1}, Lcom/android/camera/dualvideo/render/RenderManager;->lambda$drawForRecording$30(Ljava/util/List;Lcom/android/camera/module/encoder/RenderHandler;)V

    return-void
.end method
