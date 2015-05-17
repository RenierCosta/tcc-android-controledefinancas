.class public Lcom/controleFinanceiro/empresa/EditarEmpresa;
.super Landroid/app/Activity;
.source "EditarEmpresa.java"


# static fields
.field static final RESULT_EXCLUIR:I = 0x2

.field static final RESULT_SALVAR:I = 0x1


# instance fields
.field private btLigar:Landroid/widget/ImageButton;

.field private campoEMP_CH_TELEFONE:Landroid/widget/EditText;

.field private campoEMP_ST_NOME:Landroid/widget/EditText;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/controleFinanceiro/empresa/EditarEmpresa;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected buscarEmpresa(J)Lcom/controleFinanceiro/empresa/Empresa;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 169
    sget-object v0, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->repositorio:Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->buscarEmpresa(J)Lcom/controleFinanceiro/empresa/Empresa;

    move-result-object v0

    return-object v0
.end method

.method public excluir()V
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    if-eqz v0, :cond_0

    .line 158
    iget v0, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->excluirEmpresa(J)V

    .line 162
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->setResult(ILandroid/content/Intent;)V

    .line 165
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->finish()V

    .line 166
    return-void
.end method

.method protected excluirEmpresa(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 177
    sget-object v0, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->repositorio:Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->deletar(J)I

    .line 178
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->setContentView(I)V

    .line 39
    const v5, 0x7f060024

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_ST_NOME:Landroid/widget/EditText;

    .line 40
    const v5, 0x7f060025

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    .line 41
    const v5, 0x7f060029

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->btLigar:Landroid/widget/ImageButton;

    .line 42
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->btLigar:Landroid/widget/ImageButton;

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 44
    iput v7, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    .line 46
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 48
    .local v4, "extras":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 49
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    .line 51
    iget v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    if-eqz v5, :cond_0

    .line 52
    iget v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->buscarEmpresa(J)Lcom/controleFinanceiro/empresa/Empresa;

    move-result-object v3

    .line 53
    .local v3, "e":Lcom/controleFinanceiro/empresa/Empresa;
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_ST_NOME:Landroid/widget/EditText;

    iget-object v6, v3, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    iget-object v6, v3, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->btLigar:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 59
    .end local v3    # "e":Lcom/controleFinanceiro/empresa/Empresa;
    :cond_0
    const v5, 0x7f060027

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, "btCancelar":Landroid/widget/Button;
    new-instance v5, Lcom/controleFinanceiro/empresa/EditarEmpresa$1;

    invoke-direct {v5, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$1;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v5, 0x7f060026

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 69
    .local v2, "btSalvar":Landroid/widget/Button;
    new-instance v5, Lcom/controleFinanceiro/empresa/EditarEmpresa$2;

    invoke-direct {v5, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$2;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v5, 0x7f060028

    invoke-virtual {p0, v5}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    .local v1, "btExcluir":Landroid/widget/Button;
    iget v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    if-nez v5, :cond_1

    .line 79
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    :goto_0
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->btLigar:Landroid/widget/ImageButton;

    const v6, 0x108008d

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 103
    iget-object v5, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->btLigar:Landroid/widget/ImageButton;

    new-instance v6, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;

    invoke-direct {v6, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$4;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void

    .line 81
    :cond_1
    new-instance v5, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;

    invoke-direct {v5, p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa$3;-><init>(Lcom/controleFinanceiro/empresa/EditarEmpresa;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->finish()V

    .line 129
    return-void
.end method

.method public salvar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_ST_NOME:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const v1, 0x7f050053

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v0}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V

    .line 137
    .local v0, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    iget v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    if-eqz v1, :cond_1

    .line 139
    iget v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->id:I

    iput v1, v0, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_ST_NOME:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/controleFinanceiro/empresa/EditarEmpresa;->campoEMP_CH_TELEFONE:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->salvarEmpresa(Lcom/controleFinanceiro/empresa/Empresa;)V

    .line 146
    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->setResult(ILandroid/content/Intent;)V

    .line 152
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/EditarEmpresa;->finish()V

    goto :goto_0
.end method

.method protected salvarEmpresa(Lcom/controleFinanceiro/empresa/Empresa;)V
    .locals 1
    .param p1, "empresa"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 173
    sget-object v0, Lcom/controleFinanceiro/empresa/CadastroEmpresa;->repositorio:Lcom/controleFinanceiro/empresa/RepositorioEmpresa;

    invoke-static {p1}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->salvar(Lcom/controleFinanceiro/empresa/Empresa;)J

    .line 174
    return-void
.end method
