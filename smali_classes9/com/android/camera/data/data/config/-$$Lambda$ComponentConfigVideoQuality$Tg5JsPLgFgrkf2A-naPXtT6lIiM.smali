.class public final synthetic Lcom/android/camera/data/data/config/-$$Lambda$ComponentConfigVideoQuality$Tg5JsPLgFgrkf2A-naPXtT6lIiM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/-$$Lambda$ComponentConfigVideoQuality$Tg5JsPLgFgrkf2A-naPXtT6lIiM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/data/data/config/-$$Lambda$ComponentConfigVideoQuality$Tg5JsPLgFgrkf2A-naPXtT6lIiM;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/config/-$$Lambda$ComponentConfigVideoQuality$Tg5JsPLgFgrkf2A-naPXtT6lIiM;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/data/data/config/-$$Lambda$ComponentConfigVideoQuality$Tg5JsPLgFgrkf2A-naPXtT6lIiM;->f$1:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->lambda$reInit$0(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
