.class Lcom/miui/extravideo/common/MediaEncoderAsync$1;
.super Ljava/lang/Object;
.source "MediaEncoderAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extravideo/common/MediaEncoderAsync;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;


# direct methods
.method constructor <init>(Lcom/miui/extravideo/common/MediaEncoderAsync;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {v0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/extravideo/common/MediaEncoderAsync$1;->this$0:Lcom/miui/extravideo/common/MediaEncoderAsync;

    invoke-static {p0}, Lcom/miui/extravideo/common/MediaEncoderAsync;->access$100(Lcom/miui/extravideo/common/MediaEncoderAsync;)Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/miui/extravideo/common/MediaEncoderAsync$EncodeUpdateListener;->onEncodeEnd(Z)V

    :cond_0
    return-void
.end method
