.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoModule$KH3JxbF8mtbDi8HV491_bO8EGKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$KH3JxbF8mtbDi8HV491_bO8EGKg;->f$0:Lcom/android/camera/module/VideoModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoModule$KH3JxbF8mtbDi8HV491_bO8EGKg;->f$0:Lcom/android/camera/module/VideoModule;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/VideoModule;->lambda$stopRecorder$2$VideoModule(Ljava/lang/Boolean;)V

    return-void
.end method
