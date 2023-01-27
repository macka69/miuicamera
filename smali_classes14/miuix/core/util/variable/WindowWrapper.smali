.class public Lmiuix/core/util/variable/WindowWrapper;
.super Ljava/lang/Object;
.source "WindowWrapper.java"


# static fields
.field private static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field private static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT_MASK:I = 0x11

.field private static final FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS:I = -0x80000000

.field private static final FLAG_TRANSLUCENT_STATUS:I = 0x4000000

.field protected static setExtraFlags:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/view/Window;

    const-string v1, "setExtraFlags"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiuix/reflect/Reflects;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setTranslucentStatus(Landroid/view/Window;I)Z
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/16 v1, 0x17

    const/4 v3, 0x1

    if-lt v0, v1, :cond_3

    const/high16 v1, -0x80000000

    if-nez p1, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-ne p1, v3, :cond_2

    const/16 v4, 0x2010

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    and-int/lit16 v4, v4, -0x2001

    and-int/lit8 v4, v4, -0x11

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    :goto_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    const/high16 v0, 0x4000000

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_5
    :goto_1
    const/4 v0, 0x2

    const/16 v1, 0x11

    if-nez p1, :cond_6

    :try_start_0
    sget-object p1, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    if-ne p1, v3, :cond_7

    move p1, v1

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_2
    sget-object v4, Lmiuix/core/util/variable/WindowWrapper;->setExtraFlags:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v2, v3

    :catch_0
    return v2
.end method
