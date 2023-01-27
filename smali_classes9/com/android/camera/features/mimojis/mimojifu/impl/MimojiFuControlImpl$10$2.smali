.class Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10$2;
.super Ljava/lang/Object;
.source "MimojiFuControlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;->onSceneBindEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$2500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)V

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10$2;->this$1:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl$10;->this$0:Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;

    invoke-static {p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->access$500(Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;)Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->resetConfig()V

    return-void
.end method
