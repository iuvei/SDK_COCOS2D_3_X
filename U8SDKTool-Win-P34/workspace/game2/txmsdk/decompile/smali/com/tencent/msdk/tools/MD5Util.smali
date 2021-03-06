.class public Lcom/tencent/msdk/tools/MD5Util;
.super Ljava/lang/Object;
.source "MD5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode([B)[B
    .registers 5
    .param p0, "bytes"    # [B

    .prologue
    .line 16
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 17
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    .line 21
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_d
    return-object v1

    .line 20
    :catch_e
    move-exception v2

    .line 21
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static encode2Base64([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 40
    invoke-static {p0}, Lcom/tencent/msdk/tools/MD5Util;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode2HexStr([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 31
    invoke-static {p0}, Lcom/tencent/msdk/tools/MD5Util;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeFile(Ljava/lang/String;)[B
    .registers 11
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 50
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 51
    .local v1, "digest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_10} :catch_9a

    .line 53
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 54
    .local v2, "digesta":[B
    const/4 v5, -0x1

    .line 56
    .local v5, "readed":I
    :goto_12
    :try_start_12
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3d

    .line 57
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_b7

    goto :goto_12

    .line 60
    :catch_1e
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    :try_start_1f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOEXCeption: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_b7

    .line 65
    :try_start_39
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_3c} :catch_9a

    .line 79
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "digesta":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readed":I
    :goto_3c
    return-object v2

    .line 59
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "digesta":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "readed":I
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_1e
    .catchall {:try_start_3d .. :try_end_40} :catchall_b7

    move-result-object v2

    .line 65
    :try_start_41
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_44} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_44} :catch_9a

    goto :goto_3c

    .line 66
    :catch_45
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_60} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_60} :catch_9a

    goto :goto_3c

    .line 72
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "digesta":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readed":I
    :catch_61
    move-exception v3

    .line 73
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move-object v2, v6

    .line 75
    goto :goto_3c

    .line 66
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "digesta":[B
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "readed":I
    :catch_7e
    move-exception v3

    .line 67
    :try_start_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_99
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_99} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7f .. :try_end_99} :catch_9a

    goto :goto_3c

    .line 76
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "digesta":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readed":I
    :catch_9a
    move-exception v3

    .line 77
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NoSuchAlgorithmException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move-object v2, v6

    .line 79
    goto :goto_3c

    .line 64
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "digesta":[B
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "readed":I
    :catchall_b7
    move-exception v7

    .line 65
    :try_start_b8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_bb} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b8 .. :try_end_bb} :catch_9a

    .line 69
    :goto_bb
    :try_start_bb
    throw v7

    .line 66
    :catch_bc
    move-exception v3

    .line 67
    .local v3, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_bb .. :try_end_d7} :catch_61
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_bb .. :try_end_d7} :catch_9a

    goto :goto_bb
.end method

.method public static encodeFile2Base64(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/tencent/msdk/tools/MD5Util;->encodeFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, "bytes":[B
    if-nez v0, :cond_8

    .line 100
    const/4 v1, 0x0

    .line 102
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/tencent/msdk/tools/Base64Util;->encode([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static encodeFile2HexStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/tencent/msdk/tools/MD5Util;->encodeFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
