.class public final synthetic Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;->f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;->f$0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;

    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/impl/-$$Lambda$MimojiAsControlImpl$LJ72UEdI9yfWK9OjYVXygmIlYfA;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;->lambda$showLoadProgress$1(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;Z)V

    return-void
.end method
