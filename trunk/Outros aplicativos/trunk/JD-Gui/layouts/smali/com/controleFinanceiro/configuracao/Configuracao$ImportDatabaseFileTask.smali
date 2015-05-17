.class Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;
.super Landroid/os/AsyncTask;
.source "Configuracao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/controleFinanceiro/configuracao/Configuracao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportDatabaseFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/controleFinanceiro/configuracao/Configuracao;


# direct methods
.method private constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V
    .locals 1

    .prologue
    .line 231
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 233
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao;Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V

    return-void
.end method


# virtual methods
.method copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dst"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 275
    .local v0, "inChannel":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 278
    .local v5, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 282
    :cond_0
    if-eqz v5, :cond_1

    .line 283
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 285
    :cond_1
    return-void

    .line 279
    :catchall_0
    move-exception v1

    .line 280
    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 282
    :cond_2
    if-eqz v5, :cond_3

    .line 283
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 284
    :cond_3
    throw v1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 241
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "backupControleFinanceiro/controle_financeiro"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v0, "dbFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data/com.controleFinanceiro/databases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "exportDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 252
    invoke-virtual {p0, v0, v3}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 253
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 255
    :goto_0
    return-object v4

    .line 254
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 255
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x1

    .line 261
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f05004b

    invoke-virtual {v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f05004c

    invoke-virtual {v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f05004a

    invoke-virtual {v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$ImportDatabaseFileTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 238
    return-void
.end method
