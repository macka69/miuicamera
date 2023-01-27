.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;->f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$D88P7VededohU6MgPsg92LjK3vc;->f$1:Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$downloadMaterial$14$NetworkMaterialDownLoad(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Throwable;)V

    return-void
.end method
