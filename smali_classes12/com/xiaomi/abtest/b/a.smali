.class public Lcom/xiaomi/abtest/b/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/String; = "/ExpLayer/ExpDomain/"

.field public static final c:Ljava/lang/String; = "/ExpLayer/NonOverLapDomain/"

.field public static final d:Ljava/lang/String; = "/LaunchLayer/LaunchDomain/"

.field public static final e:Ljava/lang/String; = "https://cdn.experiment.xiaomi.com/service/getExpConf?appName=%s"

.field public static final f:Ljava/lang/String; = "abtest"

.field public static final g:I = 0x12c

.field public static final h:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/abtest/b/a;->a:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
