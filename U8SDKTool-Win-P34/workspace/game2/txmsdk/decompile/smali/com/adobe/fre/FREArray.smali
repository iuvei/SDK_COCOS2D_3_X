.class public Lcom/adobe/fre/FREArray;
.super Lcom/adobe/fre/FREObject;
.source "FREArray.java"


# direct methods
.method private constructor <init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adobe/fre/FREObject;-><init>(Lcom/adobe/fre/FREObject$CFREObjectWrapper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vector.<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/fre/FREObject;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V

    return-void
.end method

.method protected constructor <init>([Lcom/adobe/fre/FREObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation

    const-string v0, "Array"

    invoke-direct {p0, v0, p1}, Lcom/adobe/fre/FREObject;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V

    return-void
.end method

.method public static newArray(I)Lcom/adobe/fre/FREArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/adobe/fre/FREObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p0}, Lcom/adobe/fre/FREObject;-><init>(I)V

    aput-object v2, v0, v1

    :try_start_0
    new-instance v1, Lcom/adobe/fre/FREArray;

    invoke-direct {v1, v0}, Lcom/adobe/fre/FREArray;-><init>([Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FRENoSuchNameException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static newArray(Ljava/lang/String;IZ)Lcom/adobe/fre/FREArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREASErrorException;,
            Lcom/adobe/fre/FRENoSuchNameException;,
            Lcom/adobe/fre/FREWrongThreadException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/adobe/fre/FREObject;

    const/4 v1, 0x0

    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p1}, Lcom/adobe/fre/FREObject;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/adobe/fre/FREObject;

    invoke-direct {v2, p2}, Lcom/adobe/fre/FREObject;-><init>(Z)V

    aput-object v2, v0, v1

    :try_start_0
    new-instance v1, Lcom/adobe/fre/FREArray;

    invoke-direct {v1, p0, v0}, Lcom/adobe/fre/FREArray;-><init>(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)V
    :try_end_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public native getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native getObjectAt(J)Lcom/adobe/fre/FREObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native setLength(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/adobe/fre/FREReadOnlyException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method

.method public native setObjectAt(JLcom/adobe/fre/FREObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/fre/FREInvalidObjectException;,
            Lcom/adobe/fre/FRETypeMismatchException;,
            Lcom/adobe/fre/FREWrongThreadException;
        }
    .end annotation
.end method
