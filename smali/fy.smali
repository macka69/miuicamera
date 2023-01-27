.class public final enum Lfy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lfy;

.field public static final enum b:Lfy;

.field public static final enum c:Lfy;

.field public static final enum d:Lfy;

.field public static final enum e:Lfy;

.field public static final enum f:Lfy;

.field public static final enum g:Lfy;

.field public static final enum h:Lfy;

.field public static final enum i:Lfy;

.field public static final enum j:Lfy;

.field public static final enum k:Lfy;

.field public static final enum l:Lfy;

.field public static final enum m:Lfy;

.field public static final enum n:Lfy;

.field public static final enum o:Lfy;

.field public static final enum p:Lfy;

.field public static final enum q:Lfy;

.field public static final enum r:Lfy;

.field private static final synthetic u:[Lfy;


# instance fields
.field public final s:Lfz;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lfy;

    sget-object v1, Lfz;->d:Lfz;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->a:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->c:Lfz;

    const-string v2, "FLOAT"

    const/4 v5, 0x5

    invoke-direct {v0, v2, v4, v1, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->b:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->b:Lfz;

    const-string v2, "INT64"

    const/4 v6, 0x2

    invoke-direct {v0, v2, v6, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->c:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->b:Lfz;

    const-string v2, "UINT64"

    const/4 v7, 0x3

    invoke-direct {v0, v2, v7, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->d:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "INT32"

    const/4 v8, 0x4

    invoke-direct {v0, v2, v8, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->e:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->b:Lfz;

    const-string v2, "FIXED64"

    invoke-direct {v0, v2, v5, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->f:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "FIXED32"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->g:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->e:Lfz;

    const-string v2, "BOOL"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->h:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->f:Lfz;

    const-string v2, "STRING"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->i:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->i:Lfz;

    const-string v2, "GROUP"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1, v7}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->j:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->i:Lfz;

    const-string v2, "MESSAGE"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v13, v1, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->k:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->g:Lfz;

    const-string v2, "BYTES"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v14, v1, v6}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->l:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "UINT32"

    const/16 v15, 0xc

    invoke-direct {v0, v2, v15, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->m:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->h:Lfz;

    const-string v2, "ENUM"

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->n:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "SFIXED32"

    const/16 v15, 0xe

    invoke-direct {v0, v2, v15, v1, v5}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->o:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->b:Lfz;

    const-string v2, "SFIXED64"

    const/16 v15, 0xf

    invoke-direct {v0, v2, v15, v1, v4}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->p:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->a:Lfz;

    const-string v2, "SINT32"

    const/16 v15, 0x10

    invoke-direct {v0, v2, v15, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->q:Lfy;

    new-instance v0, Lfy;

    sget-object v1, Lfz;->b:Lfz;

    const-string v2, "SINT64"

    const/16 v15, 0x11

    invoke-direct {v0, v2, v15, v1, v3}, Lfy;-><init>(Ljava/lang/String;ILfz;I)V

    sput-object v0, Lfy;->r:Lfy;

    const/16 v1, 0x12

    new-array v1, v1, [Lfy;

    sget-object v2, Lfy;->a:Lfy;

    aput-object v2, v1, v3

    sget-object v2, Lfy;->b:Lfy;

    aput-object v2, v1, v4

    sget-object v2, Lfy;->c:Lfy;

    aput-object v2, v1, v6

    sget-object v2, Lfy;->d:Lfy;

    aput-object v2, v1, v7

    sget-object v2, Lfy;->e:Lfy;

    aput-object v2, v1, v8

    sget-object v2, Lfy;->f:Lfy;

    aput-object v2, v1, v5

    sget-object v2, Lfy;->g:Lfy;

    aput-object v2, v1, v9

    sget-object v2, Lfy;->h:Lfy;

    aput-object v2, v1, v10

    sget-object v2, Lfy;->i:Lfy;

    aput-object v2, v1, v11

    sget-object v2, Lfy;->j:Lfy;

    aput-object v2, v1, v12

    sget-object v2, Lfy;->k:Lfy;

    aput-object v2, v1, v13

    sget-object v2, Lfy;->l:Lfy;

    aput-object v2, v1, v14

    sget-object v2, Lfy;->m:Lfy;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lfy;->n:Lfy;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lfy;->o:Lfy;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lfy;->p:Lfy;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lfy;->q:Lfy;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lfy;->u:[Lfy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILfz;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfy;->s:Lfz;

    iput p4, p0, Lfy;->t:I

    return-void
.end method

.method public static values()[Lfy;
    .locals 1

    sget-object v0, Lfy;->u:[Lfy;

    invoke-virtual {v0}, [Lfy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfy;

    return-object v0
.end method
