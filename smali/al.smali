.class public final Lal;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/util/List;

.field private static final h:Lbi;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/util/List;

.field public f:Lbi;

.field public g:Z

.field private final i:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.google.android.googlequicksearchbox.GsaPublicContentProvider"

    aput-object v3, v1, v2

    const-string v4, "content://%s/publicvalue/lens_oem_availability"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lal;->a:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v3, "content://%s/publicvalue/ar_stickers_availability"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lal;->b:Ljava/lang/String;

    const-string v3, "Pixel"

    const-string v4, "Pixel XL"

    const-string v5, "walleye"

    const-string v6, "Pixel 2"

    const-string v7, "taimen"

    const-string v8, "Pixel 2 XL"

    const-string v9, "blueline"

    const-string v10, "Pixel 3"

    const-string v11, "crosshatch"

    const-string v12, "Pixel 3 XL"

    const-string v13, "bonito"

    const-string v14, "Pixel 3a XL"

    const-string v15, "sargo"

    const-string v16, "Pixel 3a"

    const-string v17, "flame"

    const-string v18, "Pixel 4"

    const-string v19, "coral"

    const-string v20, "Pixel 4 XL"

    const-string v21, "Pixel 4a"

    const-string v22, "sunfish"

    filled-new-array/range {v3 .. v22}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lal;->c:Ljava/util/List;

    sget-object v1, Lbi;->f:Lbi;

    invoke-virtual {v1}, Lde;->e()Lda;

    move-result-object v1

    check-cast v1, Lbf;

    iget-boolean v3, v1, Lda;->c:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v2, v1, Lda;->c:Z

    :goto_0
    iget-object v3, v1, Lda;->b:Lde;

    check-cast v3, Lbi;

    iget v4, v3, Lbi;->a:I

    or-int/2addr v0, v4

    iput v0, v3, Lbi;->a:I

    const-string v0, "1.2.0"

    iput-object v0, v3, Lbi;->b:Ljava/lang/String;

    iget-object v0, v1, Lda;->b:Lde;

    check-cast v0, Lbi;

    iget v3, v0, Lbi;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lbi;->a:I

    const-string v3, ""

    iput-object v3, v0, Lbi;->c:Ljava/lang/String;

    sget v0, Lbh;->a:I

    iget-boolean v3, v1, Lda;->c:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v2, v1, Lda;->c:Z

    :goto_1
    iget-object v3, v1, Lda;->b:Lde;

    check-cast v3, Lbi;

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iput v4, v3, Lbi;->d:I

    iget v0, v3, Lbi;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v3, Lbi;->a:I

    sget v0, Lbh;->a:I

    iget-boolean v3, v1, Lda;->c:Z

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lda;->b()V

    iput-boolean v2, v1, Lda;->c:Z

    :goto_2
    iget-object v2, v1, Lda;->b:Lde;

    check-cast v2, Lbi;

    add-int/lit8 v3, v0, -0x2

    if-eqz v0, :cond_3

    iput v3, v2, Lbi;->e:I

    iget v0, v2, Lbi;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v2, Lbi;->a:I

    invoke-virtual {v1}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lbi;

    sput-object v0, Lal;->h:Lbi;

    return-void

    :cond_3
    throw v5

    :cond_4
    throw v5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lal;->e:Ljava/util/List;

    iput-object p1, p0, Lal;->d:Landroid/content/Context;

    iput-object v0, p0, Lal;->i:Landroid/content/pm/PackageManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lal;->g:Z

    sget-object v1, Lal;->h:Lbi;

    iput-object v1, p0, Lal;->f:Lbi;

    :try_start_0
    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lal;->h:Lbi;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lda;

    invoke-virtual {v2, v1}, Lda;->a(Lde;)V

    check-cast v2, Lbf;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-boolean v1, v2, Lda;->c:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lda;->b()V

    iput-boolean p1, v2, Lda;->c:Z

    :goto_0
    iget-object v1, v2, Lda;->b:Lde;

    check-cast v1, Lbi;

    sget-object v3, Lbi;->f:Lbi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v1, Lbi;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lbi;->a:I

    iput-object v0, v1, Lbi;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lda;->f()Lde;

    move-result-object v0

    check-cast v0, Lbi;

    iput-object v0, p0, Lal;->f:Lbi;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "LensSdkParamsReader"

    const-string v1, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v0, Lak;

    invoke-direct {v0, p0}, Lak;-><init>(Lal;)V

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final a(Lai;)V
    .locals 1

    iget-boolean v0, p0, Lal;->g:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lal;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p0, p0, Lal;->f:Lbi;

    invoke-interface {p1, p0}, Lai;->a(Lbi;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lal;->i:Landroid/content/pm/PackageManager;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "LensSdkParamsReader"

    const-string v1, "Unable to find agsa package: com.google.android.googlequicksearchbox"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
