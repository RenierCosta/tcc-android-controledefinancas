.class public Lcom/controleFinanceiro/categoria/RepositorioCategoria;
.super Ljava/lang/Object;
.source "RepositorioCategoria.java"


# static fields
.field private static final CATEGORIA:Ljava/lang/String; = "categoria"

.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field public static final NOME_TABELA:Ljava/lang/String; = "FIN_CATEGORIA"

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "controle_financeiro"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    return-void
.end method

.method public static atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "valores"    # Landroid/content/ContentValues;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 84
    sget-object v1, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CATEGORIA"

    invoke-virtual {v1, v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "count":I
    const-string v1, "categoria"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Atualizou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v0
.end method

.method public static atualizar(Lcom/controleFinanceiro/categoria/Categoria;)I
    .locals 7
    .param p0, "categoria"    # Lcom/controleFinanceiro/categoria/Categoria;

    .prologue
    .line 67
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "CAT_ST_DESCRICAO"

    iget-object v6, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v5, "CAT_IN_TIPO"

    iget v6, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    iget v5, p0, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "_id":Ljava/lang/String;
    const-string v3, "_id=?"

    .line 74
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 76
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, "count":I
    return v1
.end method

.method public static inserir(Landroid/content/ContentValues;)J
    .locals 5
    .param p0, "valores"    # Landroid/content/ContentValues;

    .prologue
    .line 61
    sget-object v2, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_CATEGORIA"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 62
    .local v0, "id":J
    return-wide v0
.end method

.method public static inserir(Lcom/controleFinanceiro/categoria/Categoria;)J
    .locals 5
    .param p0, "categoria"    # Lcom/controleFinanceiro/categoria/Categoria;

    .prologue
    .line 51
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "CAT_ST_DESCRICAO"

    iget-object v4, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "CAT_IN_TIPO"

    iget v4, p0, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    invoke-static {v2}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->inserir(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 56
    .local v0, "id":J
    return-wide v0
.end method

.method public static salvar(Lcom/controleFinanceiro/categoria/Categoria;)J
    .locals 4
    .param p0, "categoria"    # Lcom/controleFinanceiro/categoria/Categoria;

    .prologue
    .line 38
    iget v2, p0, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    int-to-long v0, v2

    .line 40
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->atualizar(Lcom/controleFinanceiro/categoria/Categoria;)I

    .line 46
    :goto_0
    return-wide v0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->inserir(Lcom/controleFinanceiro/categoria/Categoria;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public buscarCategoria(J)Lcom/controleFinanceiro/categoria/Categoria;
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 110
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CATEGORIA"

    sget-object v3, Lcom/controleFinanceiro/categoria/Categoria;->colunas:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 112
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 115
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    new-instance v11, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-direct {v11}, Lcom/controleFinanceiro/categoria/Categoria;-><init>()V

    .line 120
    .local v11, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 121
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 122
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I

    move-object v0, v11

    .line 127
    .end local v11    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 127
    goto :goto_0
.end method

.method public buscarCategoriaPorNome(Ljava/lang/String;)Lcom/controleFinanceiro/categoria/Categoria;
    .locals 13
    .param p1, "nome"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 232
    const/4 v9, 0x0

    .line 235
    .local v9, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CATEGORIA"

    sget-object v2, Lcom/controleFinanceiro/categoria/Categoria;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CAT_ST_DESCRICAO=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 238
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    new-instance v10, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-direct {v10}, Lcom/controleFinanceiro/categoria/Categoria;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v9    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .local v10, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 244
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 245
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/controleFinanceiro/categoria/Categoria;->CAT_IN_TIPO:I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 247
    .end local v10    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .restart local v9    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v9

    .line 253
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    move-object v11, v0

    .line 249
    .local v11, "e":Landroid/database/SQLException;
    :goto_1
    const-string v0, "categoria"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a categoria pelo nome: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 250
    goto :goto_0

    .line 248
    .end local v9    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .end local v11    # "e":Landroid/database/SQLException;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v9, v10

    .end local v10    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .restart local v9    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    goto :goto_1
.end method

.method public buscarTipoCategoria(Ljava/lang/String;)I
    .locals 11
    .param p1, "categoria"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v10, 0x0

    .line 213
    .local v10, "tipo_categoria":I
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CATEGORIA"

    sget-object v2, Lcom/controleFinanceiro/categoria/Categoria;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CAT_ST_DESCRICAO=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 216
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 221
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v10

    .line 227
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 223
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "categoria"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a categoria pelo nome: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public carregaComboCategoria()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "categorias":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/categoria/Categoria;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 184
    .local v4, "idxId":I
    const-string v6, "CAT_ST_DESCRICAO"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 189
    .local v3, "idxCAT_ST_DESCRICAO":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-direct {v1}, Lcom/controleFinanceiro/categoria/Categoria;-><init>()V

    .line 192
    .local v1, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 193
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 195
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 187
    if-nez v6, :cond_0

    .line 200
    .end local v1    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .end local v3    # "idxCAT_ST_DESCRICAO":I
    .end local v4    # "idxId":I
    :cond_1
    new-instance v5, Lcom/controleFinanceiro/categoria/OrdenaCategoria;

    invoke-direct {v5}, Lcom/controleFinanceiro/categoria/OrdenaCategoria;-><init>()V

    .line 201
    .local v5, "ordena":Lcom/controleFinanceiro/categoria/OrdenaCategoria;
    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 204
    return-object v2
.end method

.method public deletar(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 91
    const-string v2, "_id=?"

    .line 93
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "_id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 96
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->deletar(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, "count":I
    return v1
.end method

.method public deletar(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 103
    sget-object v1, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_CATEGORIA"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, "count":I
    const-string v1, "categoria"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deletou ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] registros"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return v0
.end method

.method public fechar()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 268
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 133
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_CATEGORIA"

    sget-object v2, Lcom/controleFinanceiro/categoria/Categoria;->colunas:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 135
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "categoria"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a categoria: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 136
    goto :goto_0
.end method

.method public listarCategoria()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/categoria/Categoria;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 144
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "categorias":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/categoria/Categoria;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "idxId":I
    const-string v6, "CAT_ST_DESCRICAO"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 151
    .local v4, "idxCAT_ST_DESCRICAO":I
    const-string v6, "CAT_IN_TIPO"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 155
    .local v3, "idxCAT_IN_TIPO":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/categoria/Categoria;

    invoke-direct {v1}, Lcom/controleFinanceiro/categoria/Categoria;-><init>()V

    .line 156
    .local v1, "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->id:I

    .line 160
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_DESCRICAO:Ljava/lang/String;

    .line 162
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-nez v6, :cond_2

    .line 163
    const-string v6, "Entrada"

    iput-object v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_TIPO:Ljava/lang/String;

    .line 168
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    .line 154
    if-nez v6, :cond_0

    .line 170
    .end local v1    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .end local v3    # "idxCAT_IN_TIPO":I
    .end local v4    # "idxCAT_ST_DESCRICAO":I
    .end local v5    # "idxId":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 171
    return-object v2

    .line 165
    .restart local v1    # "categoria":Lcom/controleFinanceiro/categoria/Categoria;
    .restart local v3    # "idxCAT_IN_TIPO":I
    .restart local v4    # "idxCAT_ST_DESCRICAO":I
    .restart local v5    # "idxId":I
    :cond_2
    const-string v6, "Sa\u00edda"

    iput-object v6, v1, Lcom/controleFinanceiro/categoria/Categoria;->CAT_ST_TIPO:Ljava/lang/String;

    goto :goto_0
.end method

.method public query(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "queryBuilder"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 258
    sget-object v1, Lcom/controleFinanceiro/categoria/RepositorioCategoria;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 259
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method
