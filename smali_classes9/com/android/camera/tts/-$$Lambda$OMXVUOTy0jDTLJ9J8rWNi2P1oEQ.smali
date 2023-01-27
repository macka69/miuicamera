.class public final synthetic Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;

    invoke-direct {v0}, Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;-><init>()V

    sput-object v0, Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;->INSTANCE:Lcom/android/camera/tts/-$$Lambda$OMXVUOTy0jDTLJ9J8rWNi2P1oEQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/tts/TTSHelper$BatchListener;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p1, p2}, Lcom/android/camera/tts/TTSHelper$BatchListener;->onDone(Landroid/util/Pair;)V

    return-void
.end method
