.class public Lcom/alipay/sdk/net/MspClient;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/sdk/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/alipay/sdk/net/MspClient;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static a(Lcom/alipay/sdk/data/InteractionData;Ljava/lang/String;)Lorg/apache/http/entity/ByteArrayEntity;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz p0, :cond_2c

    .line 82
    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->b()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/sdk/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_2c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 88
    const-string v0, "application/octet-stream;binary/octet-stream"

    .line 90
    :cond_34
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 91
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 104
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 105
    return-object v2
.end method

.method private b()Ljava/net/URL;
    .registers 4

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 69
    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_9

    .line 71
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_8
.end method

.method private c()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_41

    .line 219
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 221
    :cond_15
    :goto_15
    return-object v0

    .line 219
    :cond_16
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->b()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_15

    .line 221
    :cond_41
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_15

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    if-eqz v1, :cond_15

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_15
.end method

.method private d()Lorg/apache/http/HttpHost;
    .registers 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_22

    .line 235
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    .line 237
    if-eqz v1, :cond_22

    .line 238
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 241
    :cond_22
    return-object v0
.end method

.method private e()Lorg/apache/http/HttpHost;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 250
    .line 252
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->g()Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_10

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 277
    :cond_f
    :goto_f
    return-object v0

    .line 257
    :cond_10
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->b()Ljava/net/URL;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_f

    .line 259
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 265
    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "https.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 273
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    goto :goto_f
.end method

.method private f()Landroid/net/NetworkInfo;
    .registers 4

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 288
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/net/MspClient;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 290
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 293
    :goto_f
    return-object v0

    :catch_10
    move-exception v0

    move-object v0, v1

    goto :goto_f
.end method

.method private g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 298
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->f()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 301
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 302
    const-string v0, "wifi"

    .line 312
    :goto_15
    return-object v0

    .line 304
    :cond_16
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_22

    move-result-object v0

    goto :goto_15

    .line 307
    :cond_1f
    const-string v0, "none"

    goto :goto_15

    .line 312
    :catch_22
    move-exception v0

    const-string v0, "none"

    goto :goto_15
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    .line 130
    invoke-static {}, Lcom/alipay/sdk/net/MspHttpClient;->a()Lcom/alipay/sdk/net/MspHttpClient;

    move-result-object v4

    .line 133
    if-nez v4, :cond_8

    .line 209
    :cond_7
    :goto_7
    return-object v3

    .line 138
    :cond_8
    :try_start_8
    invoke-virtual {v4}, Lcom/alipay/sdk/net/MspHttpClient;->c()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_9a

    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    const-string v5, "wap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_63

    move-object v1, v3

    .line 140
    :goto_21
    if-eqz v1, :cond_28

    .line 141
    const-string v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 143
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 146
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 162
    :goto_45
    if-eqz p2, :cond_13d

    .line 163
    invoke-virtual {p2}, Lcom/alipay/sdk/data/InteractionData;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_13d

    .line 165
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/Header;

    .line 166
    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_60
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_8 .. :try_end_60} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_60} :catch_8e
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_60} :catch_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_60} :catch_131
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_60} :catch_181

    goto :goto_51

    .line 189
    :catch_61
    move-exception v1

    throw v1

    .line 139
    :cond_63
    :try_start_63
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->b()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_18e

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v5, "https"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "https.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18e

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_8d
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_63 .. :try_end_8d} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_63 .. :try_end_8d} :catch_8e
    .catch Ljava/net/SocketException; {:try_start_63 .. :try_end_8d} :catch_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_63 .. :try_end_8d} :catch_131
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_8d} :catch_181

    goto :goto_21

    .line 192
    :catch_8e
    move-exception v1

    if-eqz v4, :cond_94

    .line 193
    invoke-virtual {v4}, Lcom/alipay/sdk/net/MspHttpClient;->b()V

    .line 194
    :cond_94
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 139
    :cond_9a
    :try_start_9a
    invoke-direct {p0}, Lcom/alipay/sdk/net/MspClient;->f()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_18b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_18b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_18b

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-eqz v5, :cond_18b

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_bb
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_9a .. :try_end_bb} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9a .. :try_end_bb} :catch_8e
    .catch Ljava/net/SocketException; {:try_start_9a .. :try_end_bb} :catch_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_9a .. :try_end_bb} :catch_131
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bb} :catch_181

    goto/16 :goto_21

    .line 197
    :catch_bd
    move-exception v1

    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 148
    :cond_c4
    :try_start_c4
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 150
    if-eqz p2, :cond_188

    invoke-virtual {p2}, Lcom/alipay/sdk/data/InteractionData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/sdk/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/sdk/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_f6
    :goto_f6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fe

    const-string v1, "application/octet-stream;binary/octet-stream"

    :cond_fe
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 152
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 153
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "Keep-Alive"

    const-string v3, "timeout=180, max=100"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_c4 .. :try_end_12f} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_c4 .. :try_end_12f} :catch_8e
    .catch Ljava/net/SocketException; {:try_start_c4 .. :try_end_12f} :catch_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_c4 .. :try_end_12f} :catch_131
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_12f} :catch_181

    goto/16 :goto_45

    .line 200
    :catch_131
    move-exception v1

    if-eqz v4, :cond_137

    .line 201
    invoke-virtual {v4}, Lcom/alipay/sdk/net/MspHttpClient;->b()V

    .line 202
    :cond_137
    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    .line 169
    :cond_13d
    :try_start_13d
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->d()Z

    .line 170
    invoke-virtual {v4, v2}, Lcom/alipay/sdk/net/MspHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 176
    const-string v1, "X-Hostname"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_163

    array-length v2, v1

    if-lez v2, :cond_163

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_163

    .line 179
    const-string v1, "X-Hostname"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    :cond_163
    const-string v1, "X-ExecuteTime"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_7

    array-length v2, v1

    if-lez v2, :cond_7

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 186
    const-string v1, "X-ExecuteTime"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_17f
    .catch Lcom/alipay/sdk/exception/NetErrorException; {:try_start_13d .. :try_end_17f} :catch_61
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_13d .. :try_end_17f} :catch_8e
    .catch Ljava/net/SocketException; {:try_start_13d .. :try_end_17f} :catch_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_13d .. :try_end_17f} :catch_131
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_17f} :catch_181

    goto/16 :goto_7

    .line 205
    :catch_181
    move-exception v1

    new-instance v1, Lcom/alipay/sdk/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/sdk/exception/NetErrorException;-><init>()V

    throw v1

    :cond_188
    move-object v1, v3

    goto/16 :goto_f6

    :cond_18b
    move-object v1, v3

    goto/16 :goto_21

    :cond_18e
    move-object v1, v3

    goto/16 :goto_21
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alipay/sdk/net/MspClient;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/sdk/exception/NetErrorException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/sdk/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/sdk/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
