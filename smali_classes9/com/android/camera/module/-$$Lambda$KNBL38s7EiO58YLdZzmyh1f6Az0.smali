.class public final synthetic Lcom/android/camera/module/-$$Lambda$KNBL38s7EiO58YLdZzmyh1f6Az0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/module/TimeFreezeModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/TimeFreezeModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$KNBL38s7EiO58YLdZzmyh1f6Az0;->f$0:Lcom/android/camera/module/TimeFreezeModule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$KNBL38s7EiO58YLdZzmyh1f6Az0;->f$0:Lcom/android/camera/module/TimeFreezeModule;

    invoke-virtual {p0}, Lcom/android/camera/module/CloneModule;->onHostStopAndNotifyActionStop()V

    return-void
.end method
