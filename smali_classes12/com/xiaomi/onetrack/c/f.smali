.class public Lcom/xiaomi/onetrack/c/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONArray;

.field public b:I

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;ILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/f;->a:Lorg/json/JSONArray;

    iput p2, p0, Lcom/xiaomi/onetrack/c/f;->b:I

    iput-object p3, p0, Lcom/xiaomi/onetrack/c/f;->c:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lcom/xiaomi/onetrack/c/f;->d:Z

    return-void
.end method
