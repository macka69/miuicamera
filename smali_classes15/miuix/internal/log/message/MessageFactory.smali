.class public Lmiuix/internal/log/message/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/log/message/MessageFactory$MessageCache;
    }
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MessageFactory"

.field private static mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiuix/internal/log/message/MessageFactory$MessageCache<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/Class;)Lmiuix/internal/log/message/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lmiuix/internal/log/message/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lmiuix/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/internal/log/message/MessageFactory$MessageCache;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lmiuix/internal/log/message/MessageFactory$MessageCache;->createInstance(Ljava/lang/Class;I)Lmiuix/internal/log/message/MessageFactory$MessageCache;

    move-result-object v0

    sget-object v1, Lmiuix/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lmiuix/internal/log/message/MessageFactory$MessageCache;->obtain()Lmiuix/internal/log/message/Message;

    move-result-object p0

    return-object p0
.end method

.method static recycle(Lmiuix/internal/log/message/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lmiuix/internal/log/message/Message;",
            ">(TT;)V"
        }
    .end annotation

    sget-object v0, Lmiuix/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/internal/log/message/MessageFactory$MessageCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiuix/internal/log/message/MessageFactory$MessageCache;->recycle(Lmiuix/internal/log/message/Message;)V

    :cond_0
    return-void
.end method
