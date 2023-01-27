.class public final synthetic Lcom/android/camera/tts/-$$Lambda$TTSHelper$fG5TgxFcX1c7gXr7NEECRnoSMYo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/tts/TTSHelper$Listener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/tts/TTSHelper$Listener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$fG5TgxFcX1c7gXr7NEECRnoSMYo;->f$0:Lcom/android/camera/tts/TTSHelper$Listener;

    iput-boolean p2, p0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$fG5TgxFcX1c7gXr7NEECRnoSMYo;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$fG5TgxFcX1c7gXr7NEECRnoSMYo;->f$0:Lcom/android/camera/tts/TTSHelper$Listener;

    iget-boolean p0, p0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$fG5TgxFcX1c7gXr7NEECRnoSMYo;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/camera/tts/TTSHelper;->lambda$onTtsStopped$1(Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    return-void
.end method
