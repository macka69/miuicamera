.class final Ljava8/util/Spliterators$2;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/Spliterators;->getBooleanPropVal(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defVal:Z

.field final synthetic val$prop:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Ljava8/util/Spliterators$2;->val$defVal:Z

    iput-object p2, p0, Ljava8/util/Spliterators$2;->val$prop:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 2

    iget-boolean v0, p0, Ljava8/util/Spliterators$2;->val$defVal:Z

    :try_start_0
    iget-object p0, p0, Ljava8/util/Spliterators$2;->val$prop:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ljava8/util/Spliterators$2;->run()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
