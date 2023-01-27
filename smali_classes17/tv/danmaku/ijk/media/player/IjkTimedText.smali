.class public final Ltv/danmaku/ijk/media/player/IjkTimedText;
.super Ljava/lang/Object;
.source "IjkTimedText.java"


# instance fields
.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextChars:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/player/IjkTimedText;->mTextChars:Ljava/lang/String;

    return-object p0
.end method
