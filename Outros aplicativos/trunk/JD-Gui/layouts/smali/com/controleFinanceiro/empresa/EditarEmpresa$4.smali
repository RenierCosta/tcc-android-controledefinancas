.class Lcom/controleFinanceiro/empresa/EditarEmpresa$4;
.super Ljava/lang/Object;
.source "EditarEmpresa.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/EditarEmpresa;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v2, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    # getter for: Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->access$0(Lcom/controleFinanceiro/empresa/EditarEmpresa;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "chamada":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    # getter for: Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->access$0(Lcom/controleFinanceiro/empresa/EditarEmpresa;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    invoke-virtual {v2, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "chamada":Landroid/content/Intent;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 111
    .local v0, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v2, "Liga\u00e7\u00e3o"

    const-string v3, "Falha"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 114
    .end local v0    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v2, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    iget-object v3, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;->this$0:Lcom/controleFinanceiro/empresa/EditarEmpresa;

    const v4, 0x7f050052

    invoke-virtual {v3, v4}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
