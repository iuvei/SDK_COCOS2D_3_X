.class public Lcom/tencent/stat/a/d;
.super Lcom/tencent/stat/a/e;


# instance fields
.field private a:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 7

    invoke-direct {p0, p1, p2, p5}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/stat/a/d;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    invoke-direct {p0, p3, p4}, Lcom/tencent/stat/a/d;->a(ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Throwable;Ljava/lang/Thread;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 8

    invoke-direct {p0, p1, p2, p6}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/stat/a/d;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    invoke-direct {p0, p3, p4}, Lcom/tencent/stat/a/d;->a(ILjava/lang/Throwable;)V

    iput-object p5, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;IILjava/lang/Thread;Lcom/tencent/stat/StatSpecifyReportedInfo;)V
    .registers 9

    invoke-direct {p0, p1, p2, p7}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;ILcom/tencent/stat/StatSpecifyReportedInfo;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/stat/a/d;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    if-eqz p3, :cond_1a

    if-gtz p5, :cond_12

    invoke-static {}, Lcom/tencent/stat/StatConfig;->getMaxReportEventLength()I

    move-result p5

    :cond_12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p5, :cond_1f

    iput-object p3, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    :cond_1a
    :goto_1a
    iput-object p6, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    iput p4, p0, Lcom/tencent/stat/a/d;->m:I

    return-void

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p3, v0, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    goto :goto_1a
.end method

.method private a(ILjava/lang/Throwable;)V
    .registers 5

    if-eqz p2, :cond_1a

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/stat/a/d;->m:I

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1a
    return-void
.end method


# virtual methods
.method public a()Lcom/tencent/stat/a/f;
    .registers 2

    sget-object v0, Lcom/tencent/stat/a/f;->c:Lcom/tencent/stat/a/f;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/tencent/stat/a/d;->c:J

    return-void
.end method

.method public a(Lorg/json/JSONObject;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "er"

    iget-object v1, p0, Lcom/tencent/stat/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/q;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ea"

    iget v1, p0, Lcom/tencent/stat/a/d;->m:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/tencent/stat/a/d;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/tencent/stat/a/d;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    :cond_18
    new-instance v0, Lcom/tencent/stat/common/b;

    iget-object v1, p0, Lcom/tencent/stat/a/d;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/stat/common/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/stat/a/d;->o:Ljava/lang/Thread;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/stat/common/b;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_24
    const/4 v0, 0x1

    return v0
.end method
