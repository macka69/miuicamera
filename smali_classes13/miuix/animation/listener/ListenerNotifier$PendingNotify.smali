.class Lmiuix/animation/listener/ListenerNotifier$PendingNotify;
.super Ljava/lang/Object;
.source "ListenerNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/listener/ListenerNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingNotify"
.end annotation


# instance fields
.field tag:Ljava/lang/Object;

.field what:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    return-void
.end method


# virtual methods
.method isSame(Ljava/lang/Object;I)Z
    .locals 1

    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget p0, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    if-ne p0, p2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setData(Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->tag:Ljava/lang/Object;

    iput p2, p0, Lmiuix/animation/listener/ListenerNotifier$PendingNotify;->what:I

    return-void
.end method
