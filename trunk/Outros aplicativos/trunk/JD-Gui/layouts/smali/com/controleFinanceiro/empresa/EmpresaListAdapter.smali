.class public Lcom/controleFinanceiro/empresa/EmpresaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmpresaListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private lista:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/empresa/Empresa;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->lista:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 33
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 37
    iget-object v6, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/controleFinanceiro/empresa/Empresa;

    .line 39
    .local v0, "e":Lcom/controleFinanceiro/empresa/Empresa;
    iget-object v6, p0, Lcom/controleFinanceiro/empresa/EmpresaListAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 40
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030003

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 44
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f06000a

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "nome":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v6, 0x7f06000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 48
    .local v4, "telefone":Landroid/widget/TextView;
    iget-object v6, v0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v3    # "nome":Landroid/widget/TextView;
    .end local v4    # "telefone":Landroid/widget/TextView;
    :goto_0
    return-object v5

    .line 50
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 51
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
