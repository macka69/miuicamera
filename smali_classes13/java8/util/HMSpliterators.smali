.class final Ljava8/util/HMSpliterators;
.super Ljava/lang/Object;
.source "HMSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/HMSpliterators$HashMapSpliterator;,
        Ljava8/util/HMSpliterators$EntrySpliterator;,
        Ljava8/util/HMSpliterators$ValueSpliterator;,
        Ljava8/util/HMSpliterators$KeySpliterator;
    }
.end annotation


# static fields
.field private static final ENTRYSET_$0_OFF:J

.field private static final HASHSET_MAP_OFF:J

.field private static final KEYSET_$0_OFF:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final VALUES_$0_OFF:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "this$0"

    sget-object v1, Ljava8/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v1, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    :try_start_0
    const-string v1, "java.util.HashMap$Values"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "java.util.HashMap$KeySet"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "java.util.HashMap$EntrySet"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Ljava8/util/HMSpliterators;->VALUES_$0_OFF:J

    sget-object v1, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava8/util/HMSpliterators;->KEYSET_$0_OFF:J

    sget-object v1, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/HMSpliterators;->ENTRYSET_$0_OFF:J

    sget-object v0, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/HashSet;

    const-string v2, "map"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/HMSpliterators;->HASHSET_MAP_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEntrySetSpliterator(Ljava/util/Set;)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava8/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/HMSpliterators$EntrySpliterator;

    invoke-static {p0}, Ljava8/util/HMSpliterators;->getHashMapFromEntrySet(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/HMSpliterators$EntrySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v6
.end method

.method private static getHashMapFromEntrySet(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators;->ENTRYSET_$0_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private static getHashMapFromHashSet(Ljava/util/HashSet;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashSet<",
            "TK;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators;->HASHSET_MAP_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private static getHashMapFromKeySet(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators;->KEYSET_$0_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private static getHashMapFromValues(Ljava/util/Collection;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Ljava8/util/HMSpliterators;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava8/util/HMSpliterators;->VALUES_$0_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method static getHashSetSpliterator(Ljava/util/HashSet;)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashSet<",
            "TE;>;)",
            "Ljava8/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/HMSpliterators$KeySpliterator;

    invoke-static {p0}, Ljava8/util/HMSpliterators;->getHashMapFromHashSet(Ljava/util/HashSet;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/HMSpliterators$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v6
.end method

.method static getKeySetSpliterator(Ljava/util/Set;)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;)",
            "Ljava8/util/Spliterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/HMSpliterators$KeySpliterator;

    invoke-static {p0}, Ljava8/util/HMSpliterators;->getHashMapFromKeySet(Ljava/util/Set;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/HMSpliterators$KeySpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v6
.end method

.method static getValuesSpliterator(Ljava/util/Collection;)Ljava8/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava8/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v6, Ljava8/util/HMSpliterators$ValueSpliterator;

    invoke-static {p0}, Ljava8/util/HMSpliterators;->getHashMapFromValues(Ljava/util/Collection;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava8/util/HMSpliterators$ValueSpliterator;-><init>(Ljava/util/HashMap;IIII)V

    return-object v6
.end method
