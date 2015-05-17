.class public Lcom/controleFinanceiro/categoria/CategoriaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoriaListAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private lista:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
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
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/categoria/Categoria;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->lista:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 32
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 36
    iget-object v5, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->lista:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/controleFinanceiro/categoria/Categoria;

    .line 38
    .local v0, "c":Lcom/controleFinanceiro/categoria/Categoria;
    iget-object v5, p0, Lcom/controleFinanceiro/categoria/CategoriaListAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 39
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 41
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f060005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, "descricao":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v5, 0x7f060006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 45
    .local v3, "tipo":Landroid/widget/TextView;
    iget-object v5, v0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_TIPO:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-object v4
.end method
