.class public final synthetic Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

.field public final synthetic f$1:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$1:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iput p3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$2:I

    iput p4, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$1:Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    iget v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$2:I

    iget p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/-$$Lambda$FragmentMimojiAsEmoticon$VLVyeCmm3xjXOoZmb59UkjI1S38;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->lambda$updateEmoticonThumbnailProgress$4$FragmentMimojiAsEmoticon(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V

    return-void
.end method
