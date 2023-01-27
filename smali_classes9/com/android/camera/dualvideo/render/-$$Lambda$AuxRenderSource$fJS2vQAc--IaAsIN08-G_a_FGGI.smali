.class public final synthetic Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$fJS2vQAc--IaAsIN08-G_a_FGGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/AuxRenderSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$fJS2vQAc--IaAsIN08-G_a_FGGI;->f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/dualvideo/render/-$$Lambda$AuxRenderSource$fJS2vQAc--IaAsIN08-G_a_FGGI;->f$0:Lcom/android/camera/dualvideo/render/AuxRenderSource;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;

    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/AuxRenderSource;->lambda$createSurfaceTexture$0$AuxRenderSource(Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;)V

    return-void
.end method
