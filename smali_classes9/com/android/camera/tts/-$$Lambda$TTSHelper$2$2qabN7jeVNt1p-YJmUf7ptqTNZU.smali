.class public final synthetic Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;

    invoke-direct {v0}, Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;-><init>()V

    sput-object v0, Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;->INSTANCE:Lcom/android/camera/tts/-$$Lambda$TTSHelper$2$2qabN7jeVNt1p-YJmUf7ptqTNZU;

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

    invoke-static {p1, p2}, Lcom/android/camera/tts/TTSHelper$2;->lambda$onStart$1(Lcom/android/camera/tts/TTSHelper$BatchListener;Landroid/util/Pair;)V

    return-void
.end method
