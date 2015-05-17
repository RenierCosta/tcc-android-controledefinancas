.class Lcom/controleFinanceiro/configuracao/Configuracao$1;
.super Ljava/lang/Object;
.source "Configuracao.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/configuracao/Configuracao;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/configuracao/Configuracao;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$1;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$1;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    # invokes: Lcom/controleFinanceiro/configuracao/Configuracao;->isExternalStorageAvail()Z
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/controleFinanceiro/configuracao/Configuracao$ExportDatabaseFileTask;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$1;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao$ExportDatabaseFileTask;-><init>(Lcom/controleFinanceiro/configuracao/Configuracao;Lcom/controleFinanceiro/configuracao/Configuracao$ExportDatabaseFileTask;)V

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/configuracao/Configuracao$ExportDatabaseFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$1;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    iget-object v1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$1;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    const v2, 0x7f050043

    invoke-virtual {v1, v2}, Lcom/controleFinanceiro/configuracao/Configuracao;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
