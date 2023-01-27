.class public abstract Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.super Lcom/android/camera/fragment/BaseFragment;
.source "BaseFragmentMimoji.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private final TAG_MIMOJI:Ljava/lang/String;

.field private mLogPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->TAG_MIMOJI:Ljava/lang/String;

    const-string v0, "MimojiApp_"

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mLogPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->TAG_MIMOJI:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLogPrefix(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->mLogPrefix:Ljava/lang/String;

    return-void
.end method
