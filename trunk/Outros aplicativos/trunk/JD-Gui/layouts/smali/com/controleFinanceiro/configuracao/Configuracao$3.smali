.class Lcom/controleFinanceiro/configuracao/Configuracao$3;
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
    iput-object p1, p0, Lcom/controleFinanceiro/configuracao/Configuracao$3;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/controleFinanceiro/configuracao/Configuracao$3;->this$0:Lcom/controleFinanceiro/configuracao/Configuracao;

    # getter for: Lcom/controleFinanceiro/configuracao/Configuracao;->janelaAlterarSenha:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/controleFinanceiro/configuracao/Configuracao;->access$1(Lcom/controleFinanceiro/configuracao/Configuracao;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    return-void
.end method
