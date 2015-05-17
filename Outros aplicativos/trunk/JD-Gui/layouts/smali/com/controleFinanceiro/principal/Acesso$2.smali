.class Lcom/controleFinanceiro/principal/Acesso$2;
.super Ljava/lang/Object;
.source "Acesso.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/principal/Acesso;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/principal/Acesso;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/principal/Acesso;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v2, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    # getter for: Lcom/controleFinanceiro/principal/Acesso;->campoSenha:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/controleFinanceiro/principal/Acesso;->access$0(Lcom/controleFinanceiro/principal/Acesso;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    # getter for: Lcom/controleFinanceiro/principal/Acesso;->senha:Ljava/lang/String;
    invoke-static {v3}, Lcom/controleFinanceiro/principal/Acesso;->access$1(Lcom/controleFinanceiro/principal/Acesso;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    const-class v3, Lcom/controleFinanceiro/principal/Principal;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v1, "minhaAcao":Landroid/content/Intent;
    iget-object v2, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    invoke-virtual {v2, v1}, Lcom/controleFinanceiro/principal/Acesso;->startActivity(Landroid/content/Intent;)V

    .line 56
    iget-object v2, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    invoke-virtual {v2}, Lcom/controleFinanceiro/principal/Acesso;->finish()V

    .line 68
    .end local v1    # "minhaAcao":Landroid/content/Intent;
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/controleFinanceiro/principal/Acesso$2;->this$0:Lcom/controleFinanceiro/principal/Acesso;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, "alerta":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020002

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x7f050064

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const-string v2, "OK"

    new-instance v3, Lcom/controleFinanceiro/principal/Acesso$2$1;

    invoke-direct {v3, p0}, Lcom/controleFinanceiro/principal/Acesso$2$1;-><init>(Lcom/controleFinanceiro/principal/Acesso$2;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
