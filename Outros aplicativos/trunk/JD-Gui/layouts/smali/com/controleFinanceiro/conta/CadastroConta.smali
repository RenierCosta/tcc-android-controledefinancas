.class public Lcom/controleFinanceiro/conta/CadastroConta;
.super Landroid/app/ListActivity;
.source "CadastroConta.java"


# static fields
.field protected static final CONFIGURACAO:I = 0x5

.field protected static final INSERIR_EDITAR:I = 0x1

.field protected static final SOBRE:I = 0x7

.field public static repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;


# instance fields
.field private contas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/conta/Conta;",
            ">;"
        }
    .end annotation
.end field

.field janelaSobre:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected atualizarLista()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    invoke-virtual {v0}, Lcom/controleFinanceiro/conta/RepositorioConta;->listarContas()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/conta/CadastroConta;->contas:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/controleFinanceiro/conta/ContaListAdapter;

    iget-object v1, p0, Lcom/controleFinanceiro/conta/CadastroConta;->contas:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/controleFinanceiro/conta/ContaListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/conta/CadastroConta;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method protected editarConta(I)V
    .locals 4
    .param p1, "posicao"    # I

    .prologue
    .line 113
    iget-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->contas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/controleFinanceiro/conta/Conta;

    .line 115
    .local v0, "conta":Lcom/controleFinanceiro/conta/Conta;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/controleFinanceiro/conta/EditarConta;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "_id"

    iget v3, v0, Lcom/controleFinanceiro/conta/Conta;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/controleFinanceiro/conta/CadastroConta;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    return-void
.end method

.method public fecharJanelaSobre()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 104
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "codigo"    # I
    .param p2, "codigoRetorno"    # I
    .param p3, "it"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/CadastroConta;->atualizarLista()V

    .line 129
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lcom/controleFinanceiro/conta/RepositorioContaScript;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/conta/RepositorioContaScript;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    .line 36
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/CadastroConta;->atualizarLista()V

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 50
    const v1, 0x7f05003c

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 51
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 53
    const/4 v1, 0x5

    const v2, 0x7f05000b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 54
    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 56
    const/4 v1, 0x7

    const v2, 0x7f05003d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 57
    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 63
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 142
    sget-object v0, Lcom/controleFinanceiro/conta/CadastroConta;->repositorio:Lcom/controleFinanceiro/conta/RepositorioConta;

    invoke-virtual {v0}, Lcom/controleFinanceiro/conta/RepositorioConta;->fechar()V

    .line 143
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "posicao"    # I
    .param p4, "id"    # J

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 109
    invoke-virtual {p0, p3}, Lcom/controleFinanceiro/conta/CadastroConta;->editarConta(I)V

    .line 110
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 69
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 99
    :goto_0
    return v4

    .line 72
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/conta/EditarConta;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lcom/controleFinanceiro/conta/CadastroConta;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 75
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/conta/CadastroConta;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 78
    :sswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "factorySobre":Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "viewSobre":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/conta/CadastroConta$1;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/conta/CadastroConta$1;-><init>(Lcom/controleFinanceiro/conta/CadastroConta;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    .line 94
    iget-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 95
    iget-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    const v3, 0x7f05004e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 96
    iget-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 97
    iget-object v2, p0, Lcom/controleFinanceiro/conta/CadastroConta;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 134
    invoke-virtual {p0}, Lcom/controleFinanceiro/conta/CadastroConta;->atualizarLista()V

    .line 135
    return-void
.end method
