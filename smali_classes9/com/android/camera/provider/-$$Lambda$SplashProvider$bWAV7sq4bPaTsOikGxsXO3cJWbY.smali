.class public final synthetic Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/provider/SplashProvider;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/provider/SplashProvider;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$0:Lcom/android/camera/provider/SplashProvider;

    iput-object p2, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$0:Lcom/android/camera/provider/SplashProvider;

    iget-object v1, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/camera/provider/-$$Lambda$SplashProvider$bWAV7sq4bPaTsOikGxsXO3cJWbY;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/provider/SplashProvider;->lambda$getSplashFile$0$SplashProvider(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
