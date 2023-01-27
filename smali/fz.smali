.class public final enum Lfz;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfz;

.field public static final enum b:Lfz;

.field public static final enum c:Lfz;

.field public static final enum d:Lfz;

.field public static final enum e:Lfz;

.field public static final enum f:Lfz;

.field public static final enum g:Lfz;

.field public static final enum h:Lfz;

.field public static final enum i:Lfz;

.field private static final synthetic j:[Lfz;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lfz;

    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->a:Lfz;

    new-instance v0, Lfz;

    const-string v1, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->b:Lfz;

    new-instance v0, Lfz;

    const-string v1, "FLOAT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->c:Lfz;

    new-instance v0, Lfz;

    const-string v1, "DOUBLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->d:Lfz;

    new-instance v0, Lfz;

    const-string v1, "BOOLEAN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->e:Lfz;

    new-instance v0, Lfz;

    const-string v1, "STRING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->f:Lfz;

    new-instance v0, Lfz;

    sget-object v1, Lck;->b:Lck;

    const-string v1, "BYTE_STRING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->g:Lfz;

    new-instance v0, Lfz;

    const-string v1, "ENUM"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->h:Lfz;

    new-instance v0, Lfz;

    const-string v1, "MESSAGE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lfz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfz;->i:Lfz;

    const/16 v1, 0x9

    new-array v1, v1, [Lfz;

    sget-object v11, Lfz;->a:Lfz;

    aput-object v11, v1, v2

    sget-object v2, Lfz;->b:Lfz;

    aput-object v2, v1, v3

    sget-object v2, Lfz;->c:Lfz;

    aput-object v2, v1, v4

    sget-object v2, Lfz;->d:Lfz;

    aput-object v2, v1, v5

    sget-object v2, Lfz;->e:Lfz;

    aput-object v2, v1, v6

    sget-object v2, Lfz;->f:Lfz;

    aput-object v2, v1, v7

    sget-object v2, Lfz;->g:Lfz;

    aput-object v2, v1, v8

    sget-object v2, Lfz;->h:Lfz;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lfz;->j:[Lfz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfz;
    .locals 1

    sget-object v0, Lfz;->j:[Lfz;

    invoke-virtual {v0}, [Lfz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfz;

    return-object v0
.end method
