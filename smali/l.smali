.class final Ll;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldh;


# static fields
.field static final a:Ldh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll;

    invoke-direct {v0}, Ll;-><init>()V

    sput-object v0, Ll;->a:Ldh;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    invoke-static {p1}, Lm;->a(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
