.class public final Landroid/provider/MiuiSettings$AntiVirus;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AntiVirus"
.end annotation


# static fields
.field private static final INSTALL_MONITOR_ENABLED:Ljava/lang/String; = "virus_scan_install"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInstallMonitorEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virus_scan_install"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lmiui/util/ExtraSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setInstallMonitorEnabled(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "virus_scan_install"

    invoke-static {v0, v1, p1}, Lmiui/util/ExtraSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    return-void
.end method
