.class public final synthetic Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$bOnLgAhueECGFQyvTHWJZ4EO0GQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$bOnLgAhueECGFQyvTHWJZ4EO0GQ;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/core/-$$Lambda$ParallelDataZipper$bOnLgAhueECGFQyvTHWJZ4EO0GQ;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/xiaomi/camera/core/ParallelDataZipper;->lambda$tryToCallback$1(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
