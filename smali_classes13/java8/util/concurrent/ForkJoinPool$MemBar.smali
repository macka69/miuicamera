.class final Ljava8/util/concurrent/ForkJoinPool$MemBar;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemBar"
.end annotation


# static fields
.field private static final OFF:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final x:Ljava8/util/concurrent/Mock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava8/util/concurrent/Mock;

    invoke-direct {v0}, Ljava8/util/concurrent/Mock;-><init>()V

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-class v1, Ljava8/util/concurrent/Mock;

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fullFence()V
    .locals 5

    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    return-void
.end method

.method static loadFence()V
    .locals 4

    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    return-void
.end method

.method static storeFence()V
    .locals 5

    sget-object v0, Ljava8/util/concurrent/ForkJoinPool$MemBar;->U:Lsun/misc/Unsafe;

    sget-object v1, Ljava8/util/concurrent/ForkJoinPool$MemBar;->x:Ljava8/util/concurrent/Mock;

    sget-wide v2, Ljava8/util/concurrent/ForkJoinPool$MemBar;->OFF:J

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    return-void
.end method
