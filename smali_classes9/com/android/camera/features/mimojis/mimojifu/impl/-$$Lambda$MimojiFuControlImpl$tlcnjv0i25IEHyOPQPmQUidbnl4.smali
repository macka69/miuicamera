.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$tlcnjv0i25IEHyOPQPmQUidbnl4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/SingleOnSubscribe;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$tlcnjv0i25IEHyOPQPmQUidbnl4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$tlcnjv0i25IEHyOPQPmQUidbnl4;->f$1:[B

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/SingleEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$tlcnjv0i25IEHyOPQPmQUidbnl4;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$tlcnjv0i25IEHyOPQPmQUidbnl4;->f$1:[B

    invoke-static {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$createAvatar$9(Ljava/lang/String;[BLio/reactivex/SingleEmitter;)V

    return-void
.end method
