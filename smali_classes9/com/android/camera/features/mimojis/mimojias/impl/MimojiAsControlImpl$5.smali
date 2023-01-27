.class Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$5;
.super Landroid/os/Handler;
.source "MimojiAsControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$5;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
