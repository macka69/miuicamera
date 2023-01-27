.class public final synthetic Lcom/android/camera/module/-$$Lambda$VideoSkyModule$NMEGHytwnKNFqQjxnV6t9SFFrGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$NMEGHytwnKNFqQjxnV6t9SFFrGo;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/-$$Lambda$VideoSkyModule$NMEGHytwnKNFqQjxnV6t9SFFrGo;->f$0:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/camera/module/VideoSkyModule;->lambda$onNewUriArrived$1(Landroid/net/Uri;)V

    return-void
.end method
