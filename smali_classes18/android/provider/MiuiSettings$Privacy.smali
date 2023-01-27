.class public final Landroid/provider/MiuiSettings$Privacy;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Privacy"
.end annotation


# static fields
.field public static final ACTION_PRIVACY_AUTHORIZATION_DIALOG:Ljava/lang/String; = "miui.intent.action.PRIVACY_AUTHORIZATION_DIALOG"

.field public static final PRIVACY_PREFIX:Ljava/lang/String; = "privacy_status_"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1, p2}, Lmiui/security/SecurityManager;->setAppPrivacyStatus(Ljava/lang/String;Z)V

    return-void
.end method
