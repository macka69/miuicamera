.class Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;
.super Ljava/lang/Object;
.source "VideoInterpolatorAsyncImp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->doDecodeAndEncode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;


# direct methods
.method constructor <init>(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp$1;->this$0:Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;

    invoke-static {p0}, Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;->access$200(Lcom/miui/extravideo/interpolation/VideoInterpolatorAsyncImp;)V

    return-void
.end method
