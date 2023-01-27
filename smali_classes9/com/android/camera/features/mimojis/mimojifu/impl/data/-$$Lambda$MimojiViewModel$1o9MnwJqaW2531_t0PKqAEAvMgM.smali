.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$1o9MnwJqaW2531_t0PKqAEAvMgM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$1o9MnwJqaW2531_t0PKqAEAvMgM;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/data/-$$Lambda$MimojiViewModel$1o9MnwJqaW2531_t0PKqAEAvMgM;->f$0:Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/data/MimojiViewModel;->lambda$getHumanListObservable$0$MimojiViewModel(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    move-result-object p0

    return-object p0
.end method
