.class Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;
.super Ljava/lang/Object;
.source "CadastroEmpresa.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;->this$1:Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;->this$1:Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;

    # getter for: Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/CadastroEmpresa;
    invoke-static {v0}, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->access$0(Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;)Lcom/controleFinanceiro/empresa/CadastroEmpresa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->setResult(I)V

    .line 91
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;->this$1:Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;

    # getter for: Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/CadastroEmpresa;
    invoke-static {v0}, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->access$0(Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;)Lcom/controleFinanceiro/empresa/CadastroEmpresa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->fecharJanelaSobre()V

    .line 92
    return-void
.end method
