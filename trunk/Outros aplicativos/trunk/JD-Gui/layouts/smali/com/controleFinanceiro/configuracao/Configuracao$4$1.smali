.class Lcom/controleFinanceiro/configuracao/Configuracao$4$1;
.super Ljava/lang/Object;
.source "Configuracao.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/configuracao/Configuracao$4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/controleFinanceiro/configuracao/Configuracao$4;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/configuracao/Configuracao$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$4;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$4;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$4;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/controleFinanceiro/configuracao/Configuracao;->setResult(I)V

    .line 142
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$4$1;->this$1:Lcom/controleFinanceiro/configuracao/Configuracao$4;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao$4;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao$4;->access$0(Lcom/controleFinanceiro/configuracao/Configuracao$4;)Lcom/controleFinanceiro/configuracao/Configuracao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->fecharJanelaSenha()V

    .line 143
    return-void
.end method
