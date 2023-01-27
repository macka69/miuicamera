.class final Lfr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z

.field public static final b:Z

.field static final c:J

.field static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:Ljava/lang/Class;

.field private static final h:Z

.field private static final i:Z

.field private static final j:Lfq;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-class v1, [Ljava/lang/Object;

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [Z

    const-class v7, Ljava/lang/Object;

    const-class v0, Lfr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfr;->e:Ljava/util/logging/Logger;

    invoke-static {}, Lfr;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lfr;->f:Lsun/misc/Unsafe;

    sget-object v0, Lbx;->a:Ljava/lang/Class;

    sput-object v0, Lfr;->g:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lfr;->h:Z

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lfr;->i:Z

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v8, Lfp;

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    invoke-direct {v8, v0}, Lfp;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lfr;->h:Z

    if-eqz v0, :cond_1

    new-instance v8, Lfo;

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    invoke-direct {v8, v0}, Lfo;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lfr;->i:Z

    if-eqz v0, :cond_2

    new-instance v8, Lfn;

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    invoke-direct {v8, v0}, Lfn;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v8, Lfr;->j:Lfq;

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    const-string v8, "putLong"

    const-string v9, "putInt"

    const-string v10, "putByte"

    const-string v11, "getInt"

    const-string v12, "getByte"

    const-string v13, "objectFieldOffset"

    const-string v14, "com.google.protobuf.UnsafeUtil"

    const-string v15, "platform method missing - proto runtime falling back to safer methods: "

    move-object/from16 v16, v1

    const-string v1, "getLong"

    move-object/from16 v17, v2

    const/4 v2, 0x1

    const/16 v18, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v19, v3

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    const-class v20, Ljava/lang/reflect/Field;

    aput-object v20, v3, v18

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v21, v4

    const/4 v4, 0x1

    :try_start_2
    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lbx;->a()Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v18

    invoke-virtual {v0, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v18

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v18

    invoke-virtual {v0, v11, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v18

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {v0, v8, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const-string v2, "copyMemory"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object v7, v2, v3

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-string v3, "copyMemory"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move-object/from16 v22, v5

    const/4 v0, 0x1

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v19, v3

    :goto_1
    move-object/from16 v21, v4

    :goto_2
    sget-object v2, Lfr;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v22, v5

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x47

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v2, v3, v14, v4, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    :cond_5
    move-object/from16 v22, v5

    :goto_3
    move/from16 v0, v18

    :goto_4
    sput-boolean v0, Lfr;->a:Z

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    const/4 v2, 0x1

    :try_start_4
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/reflect/Field;

    aput-object v4, v3, v18

    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v18

    const-string v4, "arrayBaseOffset"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    const-class v2, Ljava/lang/Class;

    aput-object v2, v3, v18

    const-string v2, "arrayIndexScale"

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v7, v3, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    const/4 v4, 0x1

    :try_start_6
    aput-object v2, v3, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v0, v11, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v7, v3, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    const/4 v4, 0x1

    :try_start_8
    aput-object v2, v3, v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-virtual {v0, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v4, 0x1

    :try_start_a
    aput-object v3, v2, v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const/4 v3, 0x1

    :try_start_c
    aput-object v1, v2, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v8, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/4 v3, 0x1

    :try_start_e
    aput-object v2, v1, v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    const-string v2, "getObject"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const/4 v3, 0x1

    :try_start_10
    aput-object v1, v2, v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v1, 0x2

    :try_start_11
    aput-object v7, v2, v1

    const-string v3, "putObject"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lbx;->a()Z

    move-result v2

    if-nez v2, :cond_6

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    const/4 v3, 0x1

    :try_start_12
    aput-object v1, v2, v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-virtual {v0, v12, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v3, 0x1

    :try_start_14
    aput-object v1, v2, v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    const/4 v3, 0x1

    :try_start_16
    aput-object v2, v1, v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    const-string v2, "getBoolean"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    const/4 v3, 0x1

    :try_start_18
    aput-object v1, v2, v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putBoolean"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    const/4 v3, 0x1

    :try_start_1a
    aput-object v2, v1, v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    const-string v2, "getFloat"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v7, v2, v18

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    const/4 v3, 0x1

    :try_start_1c
    aput-object v1, v2, v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putFloat"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    aput-object v7, v1, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    const/4 v3, 0x1

    :try_start_1e
    aput-object v2, v1, v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :try_start_1f
    const-string v2, "getDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v7, v1, v18

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    const/4 v4, 0x1

    :try_start_20
    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "putDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto :goto_5

    :cond_6
    const/4 v4, 0x1

    :goto_5
    move v0, v4

    goto :goto_8

    :catchall_3
    move-exception v0

    move v4, v3

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move v4, v2

    goto :goto_6

    :catchall_6
    move-exception v0

    const/4 v4, 0x1

    :goto_6
    sget-object v1, Lfr;->e:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x47

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "supportsUnsafeArrayOperations"

    invoke-virtual {v1, v2, v14, v3, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const/4 v4, 0x1

    :goto_7
    move/from16 v0, v18

    :goto_8
    sput-boolean v0, Lfr;->b:Z

    const-class v0, [B

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lfr;->c:J

    invoke-static {v6}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static {v6}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static/range {v22 .. v22}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static/range {v22 .. v22}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static/range {v21 .. v21}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static/range {v21 .. v21}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static/range {v19 .. v19}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static/range {v19 .. v19}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static/range {v17 .. v17}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static/range {v17 .. v17}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static/range {v16 .. v16}, Lfr;->b(Ljava/lang/Class;)I

    invoke-static/range {v16 .. v16}, Lfr;->d(Ljava/lang/Class;)V

    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    sget-object v1, Lfr;->j:Lfq;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lfq;->a(Ljava/lang/reflect/Field;)V

    :cond_9
    :goto_9
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    move v2, v4

    goto :goto_a

    :cond_a
    move/from16 v2, v18

    :goto_a
    sput-boolean v2, Lfr;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lfq;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    not-int v0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lfq;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0}, Lfq;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static b(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static b(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfr;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 9

    const-class v0, [B

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {}, Lbx;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lfr;->g:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v3

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v7, "peekLong"

    invoke-virtual {v2, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v1, v7, v4

    const-string v8, "pokeLong"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v1, v7, v4

    const-string v8, "pokeInt"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v3

    aput-object v1, v7, v6

    const-string v1, "peekInt"

    invoke-virtual {v2, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v4, [Ljava/lang/Class;

    aput-object p0, v1, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v1, v6

    const-string v7, "pokeByte"

    invoke-virtual {v2, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v6, [Ljava/lang/Class;

    aput-object p0, v1, v3

    const-string v7, "peekByte"

    invoke-virtual {v2, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x4

    new-array v7, v1, [Ljava/lang/Class;

    aput-object p0, v7, v3

    aput-object v0, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    const-string v8, "pokeByteArray"

    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    aput-object p0, v1, v3

    aput-object v0, v1, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v1, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v1, v5

    const-string p0, "peekByteArray"

    invoke-virtual {v2, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    :cond_0
    return v3
.end method

.method static c(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0}, Lfq;->b(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static h(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->g(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->h(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
