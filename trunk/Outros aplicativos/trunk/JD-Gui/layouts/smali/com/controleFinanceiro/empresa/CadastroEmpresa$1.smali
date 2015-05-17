.class Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;
.super Landroid/app/AlertDialog;
.source "CadastroEmpresa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/controleFinanceiro/empresa/CadastroEmpresa;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/controleFinanceiro/empresa/CadastroEmpresa;


# direct methods
.method constructor <init>(Lcom/controleFinanceiro/empresa/CadastroEmpresa;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/CadastroEmpresa;

    .line 82
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;)Lcom/controleFinanceiro/empresa/CadastroEmpresa;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->this$0:Lcom/controleFinanceiro/empresa/CadastroEmpresa;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "btOkSobre":Landroid/widget/Button;
    new-instance v1, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;

    invoke-direct {v1, p0}, Lcom/controleFinanceiro/empresa/CadastroEmpresa$1$1;-><init>(Lcom/controleFinanceiro/empresa/CadastroEmpresa$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method
