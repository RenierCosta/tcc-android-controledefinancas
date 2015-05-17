.class public Lcom/controleFinanceiro/categoria/CadastroCategoria;
.super Landroid/app/ListActivity;
.source "CadastroCategoria.java"


# static fields
.field protected static final CONFIGURACAO:I = 0x5

.field protected static final INSERIR_EDITAR:I = 0x1

.field protected static final SOBRE:I = 0x7

.field public static repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;


# instance fields
.field private categorias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;"
        }
    .end annotation
.end field

.field janelaSobre:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected atualizarLista()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-virtual {v0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->listarCategoria()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->categorias:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;

    iget-object v1, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->categorias:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method protected editarCategoria(I)V
    .locals 4
    .param p1, "posicao"    # I

    .prologue
    .line 114
    iget-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->categorias:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/controleFinanceiro/categoria/Categoria;

    .line 115
    .local v0, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/controleFinanceiro/categoria/EditarCategoria;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v1, "it":Landroid/content/Intent;
    const-string v2, "_id"

    iget v3, v0, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->startActivityForResult(Landroid/content/Intent;I)V

    .line 119
    return-void
.end method

.method public fecharJanelaSobre()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 105
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "codigo"    # I
    .param p2, "codigoRetorno"    # I
    .param p3, "it"    # Landroid/content/Intent;

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->atualizarLista()V

    .line 130
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;

    invoke-direct {v0, p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoriaScript;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    .line 37
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->atualizarLista()V

    .line 38
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 51
    const v1, 0x7f05003c

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 52
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 54
    const/4 v1, 0x5

    const v2, 0x7f05000b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 55
    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 57
    const/4 v1, 0x7

    const v2, 0x7f05003d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 58
    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 64
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 137
    sget-object v0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->repositorio:Lcom/controleFinanceiro/categoria/RepositorioCategoria;

    invoke-virtual {v0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->fechar()V

    .line 138
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "posicao"    # I
    .param p4, "id"    # J

    .prologue
    .line 109
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 110
    invoke-virtual {p0, p3}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->editarCategoria(I)V

    .line 111
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 100
    :goto_0
    return v4

    .line 73
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/categoria/EditarCategoria;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2, v4}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 76
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/controleFinanceiro/configuracao/Configuracao;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/categoria/CadastroCategoria;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 79
    :sswitch_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    .local v0, "factorySobre":Landroid/view/LayoutInflater;
    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "viewSobre":Landroid/view/View;
    new-instance v2, Lcom/controleFinanceiro/categoria/CadastroCategoria$1;

    invoke-direct {v2, p0, p0}, Lcom/controleFinanceiro/categoria/CadastroCategoria$1;-><init>(Lcom/controleFinanceiro/categoria/CadastroCategoria;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    .line 95
    iget-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    const v3, 0x7f020010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 96
    iget-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    const-string v3, "Informa\u00e7\u00f5es"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lcom/controleFinanceiro/categoria/CadastroCategoria;->janelaSobre:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
