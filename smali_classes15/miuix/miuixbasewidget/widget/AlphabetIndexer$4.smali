.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;
.super Landroid/os/Handler;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .locals 0

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$500(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    :goto_0
    return-void
.end method
