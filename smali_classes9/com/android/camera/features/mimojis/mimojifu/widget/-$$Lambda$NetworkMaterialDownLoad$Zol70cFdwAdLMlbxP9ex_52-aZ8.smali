.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;ILjava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iput p2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$1:I

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$0:Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;

    iget v1, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$1:I

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/widget/-$$Lambda$NetworkMaterialDownLoad$Zol70cFdwAdLMlbxP9ex_52-aZ8;->f$3:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/widget/NetworkMaterialDownLoad;->lambda$pullNewList$5$NetworkMaterialDownLoad(ILjava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method
