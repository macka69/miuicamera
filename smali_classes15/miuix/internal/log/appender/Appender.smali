.class public interface abstract Lmiuix/internal/log/appender/Appender;
.super Ljava/lang/Object;
.source "Appender.java"


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract append(Ljava/lang/String;Ljava/lang/String;JLmiuix/internal/log/Level;Lmiuix/internal/log/message/Message;)V
.end method

.method public abstract close()V
.end method

.method public abstract getFormatter()Lmiuix/internal/log/format/Formatter;
.end method

.method public abstract setFormatter(Lmiuix/internal/log/format/Formatter;)V
.end method
