.class final synthetic Ljava8/util/Maps$Entry$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# instance fields
.field private final arg$1:Ljava/util/Comparator;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/Maps$Entry$$Lambda$3;->arg$1:Ljava/util/Comparator;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    new-instance v0, Ljava8/util/Maps$Entry$$Lambda$3;

    invoke-direct {v0, p0}, Ljava8/util/Maps$Entry$$Lambda$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ljava8/util/Maps$Entry$$Lambda$3;->arg$1:Ljava/util/Comparator;

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p0, p1, p2}, Ljava8/util/Maps$Entry;->lambda$comparingByKey$6d558cbf$1(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method
