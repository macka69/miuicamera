.class final Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;
.super Ljava/lang/Object;
.source "SplitInfoListing.java"


# instance fields
.field private final splitInfoMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method getSplitInfoMap()Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoListing;->splitInfoMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method
