.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;->f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$m51bBSYBYtyTCCaD1EibEBvKXS4;->f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadItem$7$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
