.class Lcom/miui/extravideo/common/MediaDecoderAsync$1;
.super Ljava/lang/Object;
.source "MediaDecoderAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extravideo/common/MediaDecoderAsync;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;


# direct methods
.method constructor <init>(Lcom/miui/extravideo/common/MediaDecoderAsync;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaDecoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaDecoderAsync;

    invoke-static {p0}, Lcom/miui/extravideo/common/MediaDecoderAsync;->access$300(Lcom/miui/extravideo/common/MediaDecoderAsync;)Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/extravideo/common/MediaDecoderAsync$DecodeUpdateListener;->onDecodeStop(Z)V

    :cond_0
    return-void
.end method
