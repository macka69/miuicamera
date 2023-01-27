.class public final synthetic Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;

    invoke-direct {v0}, Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;-><init>()V

    sput-object v0, Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;->INSTANCE:Lcom/android/zxing/-$$Lambda$QrDecoder$6BFAxqUJENy05p4DrCQeYcmMVdo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/zxing/QrDecoder;->lambda$startDecode$2(Ljava/lang/Integer;)V

    return-void
.end method
