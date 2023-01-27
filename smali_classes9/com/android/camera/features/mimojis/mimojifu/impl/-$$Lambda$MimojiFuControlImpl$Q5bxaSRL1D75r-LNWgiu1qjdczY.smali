.class public final synthetic Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$Q5bxaSRL1D75r-LNWgiu1qjdczY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$Q5bxaSRL1D75r-LNWgiu1qjdczY;->f$0:Z

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$Q5bxaSRL1D75r-LNWgiu1qjdczY;->f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$Q5bxaSRL1D75r-LNWgiu1qjdczY;->f$0:Z

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/impl/-$$Lambda$MimojiFuControlImpl$Q5bxaSRL1D75r-LNWgiu1qjdczY;->f$1:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuControlImpl;->lambda$showLoadProgress$1(ZLcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;)V

    return-void
.end method
