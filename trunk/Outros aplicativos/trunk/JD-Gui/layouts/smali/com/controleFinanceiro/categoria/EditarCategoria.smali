.class public Lcom/controleFinanceiro/categoria/EditarCategoria;
.super Landroid/app/Activity;
.source "EditarCategoria.java"


# static fields
.field static final RESULT_EXCLUIR:I = 0x2

.field static final RESULT_SALVAR:I = 0x1


# instance fields
.field private Ed_Descricao:Landroid/widget/EditText;

.field private Sp_Tipo:Landroid/widget/Spinner;

.field private comboTipo:[Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Entrada"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Sa\u00edda"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->comboTipo:[Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected buscarCategoria(J)Lcom/controleFinanceiro/categoria/Categoria;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 148
    sget-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->buscarCategoria(J)Lcom/controleFinanceiro/categoria/Categoria;

    move-result-object v0

    return-object v0
.end method

.method public excluir()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/categoria/EditarCategoria;->excluirCategoria(J)V

    .line 141
    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/controleFinanceiro/categoria/EditarCategoria;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->finish()V

    .line 145
    return-void
.end method

.method protected excluirCategoria(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 156
    sget-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-virtual {v0, p1, p2}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->deletar(J)I

    .line 157
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v6, 0x7f030005

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->setContentView(I)V

    .line 37
    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Ed_Descricao:Landroid/widget/EditText;

    .line 38
    const v6, 0x7f060013

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Sp_Tipo:Landroid/widget/Spinner;

    .line 40
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    iget-object v7, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->comboTipo:[Ljava/lang/String;

    invoke-direct {v0, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 41
    .local v0, "adaptador":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 42
    iget-object v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Sp_Tipo:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 44
    const/4 v6, 0x0

    iput v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    .line 46
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 48
    .local v5, "extras":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 49
    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    .line 51
    iget v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    if-eqz v6, :cond_0

    .line 52
    iget v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    int-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lcom/controleFinanceiro/categoria/EditarCategoria;->buscarCategoria(J)Lcom/controleFinanceiro/categoria/Categoria;

    move-result-object v4

    .line 53
    .local v4, "c":Lcom/controleFinanceiro/categoria/Categoria;
    iget-object v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Sp_Tipo:Landroid/widget/Spinner;

    iget v7, v4, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 54
    iget-object v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Ed_Descricao:Landroid/widget/EditText;

    iget-object v7, v4, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .end local v4    # "c":Lcom/controleFinanceiro/categoria/Categoria;
    :cond_0
    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 59
    .local v1, "btCancelar":Landroid/widget/Button;
    new-instance v6, Lcom/controleFinanceiro/categoria/EditarCategoria$1;

    invoke-direct {v6, p0}, Lcom/controleFinanceiro/categoria/EditarCategoria$1;-><init>(Lcom/controleFinanceiro/categoria/EditarCategoria;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x7f060014

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 68
    .local v3, "btSalvar":Landroid/widget/Button;
    new-instance v6, Lcom/controleFinanceiro/categoria/EditarCategoria$2;

    invoke-direct {v6, p0}, Lcom/controleFinanceiro/categoria/EditarCategoria$2;-><init>(Lcom/controleFinanceiro/categoria/EditarCategoria;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v6, 0x7f060016

    invoke-virtual {p0, v6}, Lcom/controleFinanceiro/categoria/EditarCategoria;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 76
    .local v2, "btExcluir":Landroid/widget/Button;
    iget v6, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    if-nez v6, :cond_1

    .line 78
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_1
    new-instance v6, Lcom/controleFinanceiro/categoria/EditarCategoria$3;

    invoke-direct {v6, p0}, Lcom/controleFinanceiro/categoria/EditarCategoria$3;-><init>(Lcom/controleFinanceiro/categoria/EditarCategoria;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->finish()V

    .line 109
    return-void
.end method

.method public salvar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 113
    iget-object v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Ed_Descricao:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const v1, 0x7f050041

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/categoria/EditarCategoria;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 133
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v0, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-direct {v0}, Lcom/controleFinanceiro/categoria/Categoria;-><init>()V

    .line 117
    .local v0, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    iget v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    if-eqz v1, :cond_1

    .line 119
    iget v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->id:I

    iput v1, v0, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Ed_Descricao:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/controleFinanceiro/categoria/EditarCategoria;->Sp_Tipo:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    .line 125
    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->salvarCategoria(Lcom/controleFinanceiro/categoria/Categoria;)V

    .line 128
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/controleFinanceiro/categoria/EditarCategoria;->setResult(ILandroid/content/Intent;)V

    .line 129
    const v1, 0x7f050042

    invoke-virtual {p0, v1}, Lcom/controleFinanceiro/categoria/EditarCategoria;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/EditarCategoria;->finish()V

    goto :goto_0
.end method

.method protected salvarCategoria(Lcom/controleFinanceiro/categoria/Categoria;)V
    .locals 1
    .param p1, "categoria"    # Lcom/controleFinanceiro/categoria/Categoria;

    .prologue
    .line 152
    sget-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-static {p1}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->salvar(Lcom/controleFinanceiro/categoria/Categoria;)J

    .line 153
    return-void
.end method
