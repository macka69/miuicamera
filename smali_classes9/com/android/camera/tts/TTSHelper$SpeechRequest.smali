.class Lcom/android/camera/tts/TTSHelper$SpeechRequest;
.super Ljava/lang/Object;
.source "TTSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tts/TTSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpeechRequest"
.end annotation


# instance fields
.field final mListener:Lcom/android/camera/tts/TTSHelper$Listener;

.field final mTextToSpeak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/android/camera/tts/TTSHelper$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/android/camera/tts/TTSHelper$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mTextToSpeak:Ljava/util/List;

    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper$SpeechRequest;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    return-void
.end method
