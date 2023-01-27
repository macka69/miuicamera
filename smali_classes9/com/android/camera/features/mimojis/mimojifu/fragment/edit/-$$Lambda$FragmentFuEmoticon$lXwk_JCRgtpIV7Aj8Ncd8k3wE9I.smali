.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field public final synthetic f$2:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$2:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-boolean p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$2:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/-$$Lambda$FragmentFuEmoticon$lXwk_JCRgtpIV7Aj8Ncd8k3wE9I;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->lambda$backToPreview$7$FragmentFuEmoticon(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;Z)V

    return-void
.end method
