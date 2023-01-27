.class final synthetic Lau;
.super Ljava/lang/Object;

# interfaces
.implements Lai;


# instance fields
.field private final a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau;->a:Lba;

    return-void
.end method


# virtual methods
.method public final a(Lbi;)V
    .locals 4

    const-string v0, "LensServiceConnImpl"

    iget-object p0, p0, Lau;->a:Lba;

    iget v1, p1, Lbi;->d:I

    invoke-static {v1}, Lbh;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lbh;->a:I

    :cond_0
    sget v2, Lbh;->b:I

    if-ne v1, v2, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x7

    :try_start_0
    iget-object v2, p0, Lba;->b:Landroid/content/Context;

    const/16 v3, 0x41

    invoke-virtual {v2, p1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Unable to bind Lens service."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    invoke-virtual {p0, v1}, Lba;->a(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lba;->a(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v2, "Unable to bind Lens service due to security exception."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget p1, Lbh;->j:I

    iput p1, p0, Lba;->h:I

    invoke-virtual {p0, v1}, Lba;->a(I)V

    return-void

    :cond_2
    iget p1, p1, Lbi;->d:I

    invoke-static {p1}, Lbh;->a(I)I

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lbh;->a:I

    :cond_3
    iput p1, p0, Lba;->h:I

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lba;->a(I)V

    return-void
.end method
