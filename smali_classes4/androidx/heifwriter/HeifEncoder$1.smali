.class Landroidx/heifwriter/HeifEncoder$1;
.super Ljava/lang/Object;
.source "HeifEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/heifwriter/HeifEncoder;->addYuvBufferInternal([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/heifwriter/HeifEncoder;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$1;->this$0:Landroidx/heifwriter/HeifEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Landroidx/heifwriter/HeifEncoder$1;->this$0:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {p0}, Landroidx/heifwriter/HeifEncoder;->maybeCopyOneTileYUV()V

    return-void
.end method
