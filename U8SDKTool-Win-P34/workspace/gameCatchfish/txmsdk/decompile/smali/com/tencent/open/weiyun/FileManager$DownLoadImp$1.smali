.class Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/weiyun/FileManager$DownLoadImp;-><init>(Lcom/tencent/open/weiyun/FileManager;Landroid/content/Context;Lcom/tencent/open/weiyun/FileManager$WeiyunFileType;Lcom/tencent/open/weiyun/WeiyunFile;Ljava/lang/String;Lcom/tencent/open/weiyun/IDownLoadFileCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

.field final synthetic val$this$0:Lcom/tencent/open/weiyun/FileManager;


# direct methods
.method constructor <init>(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Landroid/os/Looper;Lcom/tencent/open/weiyun/FileManager;)V
    .registers 4

    .prologue
    .line 569
    iput-object p1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    iput-object p3, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->val$this$0:Lcom/tencent/open/weiyun/FileManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 572
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d4

    .line 606
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v0}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v1

    new-instance v2, Lcom/tencent/tauth/UiError;

    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V

    .line 608
    :goto_1a
    return-void

    .line 574
    :pswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 576
    :try_start_1f
    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 577
    if-eqz v1, :cond_50

    .line 578
    iget-object v2, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v2

    new-instance v3, Lcom/tencent/tauth/UiError;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_3a} :catch_3b

    goto :goto_1a

    .line 590
    :catch_3b
    move-exception v0

    .line 591
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v1}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v1

    new-instance v2, Lcom/tencent/tauth/UiError;

    const/4 v3, -0x4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v5}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onError(Lcom/tencent/tauth/UiError;)V

    goto :goto_1a

    .line 581
    :cond_50
    :try_start_50
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 582
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_encrypt_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadEncryptUrl:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1602(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_cookie_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadCookieName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1702(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Ljava/lang/String;)Ljava/lang/String;

    .line 584
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_cookie_value"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadCookieValue:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1802(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_svr_port"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadServerPort:I
    invoke-static {v1, v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1902(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;I)I

    .line 586
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_svr_host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadServerHost:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$2002(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    const-string v1, "dl_thumb_size"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 588
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    const-string v2, "dl_thumb_size"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mDownloadThumbSize:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$2102(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_a0} :catch_3b

    .line 594
    :cond_a0
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v0}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onDownloadStart()V

    .line 595
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # invokes: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->doDownload()V
    invoke-static {v0}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$2200(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)V

    goto/16 :goto_1a

    .line 598
    :pswitch_b0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 599
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v1}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onDownloadProgress(I)V

    goto/16 :goto_1a

    .line 603
    :pswitch_c3
    iget-object v0, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mCallback:Lcom/tencent/open/weiyun/IDownLoadFileCallBack;
    invoke-static {v0}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$1500(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Lcom/tencent/open/weiyun/IDownLoadFileCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/weiyun/FileManager$DownLoadImp$1;->this$1:Lcom/tencent/open/weiyun/FileManager$DownLoadImp;

    # getter for: Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->mSavePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/open/weiyun/FileManager$DownLoadImp;->access$2300(Lcom/tencent/open/weiyun/FileManager$DownLoadImp;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/open/weiyun/IDownLoadFileCallBack;->onDownloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 572
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_b0
        :pswitch_c3
    .end packed-switch
.end method
