.class final synthetic Law;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lba;

.field private final b:[B

.field private final c:Lk;


# direct methods
.method public constructor <init>(Lba;[BLk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law;->a:Lba;

    iput-object p2, p0, Law;->b:[B

    iput-object p3, p0, Law;->c:Lk;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Law;->a:Lba;

    iget-object v1, p0, Law;->b:[B

    iget-object p0, p0, Law;->c:Lk;

    invoke-virtual {v0, v1, p0}, Lba;->c([BLk;)V

    return-void
.end method
