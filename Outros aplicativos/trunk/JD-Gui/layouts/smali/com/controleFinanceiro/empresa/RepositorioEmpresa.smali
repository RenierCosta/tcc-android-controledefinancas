.class public Lcom/controleFinanceiro/empresa/RepositorioEmpresa;
.super Ljava/lang/Object;
.source "RepositorioEmpresa.java"


# static fields
.field private static final EMPRESA:Ljava/lang/String; = "empresa"

.field private static final NOME_BANCO:Ljava/lang/String; = "controle_financeiro"

.field public static final NOME_TABELA:Ljava/lang/String; = "FIN_EMPRESA"

.field protected static db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "controle_financeiro"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    return-void
.end method

.method public static atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "valores"    # Landroid/content/ContentValues;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 83
    sget-object v1, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_EMPRESA"

    invoke-virtual {v1, v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "count":I
    const-string v1, "empresa"

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

    .line 85
    return v0
.end method

.method public static atualizar(Lcom/controleFinanceiro/empresa/Empresa;)I
    .locals 7
    .param p0, "empresa"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 68
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, "values":Landroid/content/ContentValues;
    const-string v5, "EMP_ST_NOME"

    iget-object v6, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v5, "EMP_CH_TELEFONE"

    iget-object v6, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget v5, p0, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "_id":Ljava/lang/String;
    const-string v3, "_id=?"

    .line 75
    .local v3, "where":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 77
    .local v4, "whereArgs":[Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->atualizar(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "count":I
    return v1
.end method

.method public static inserir(Landroid/content/ContentValues;)J
    .locals 5
    .param p0, "valores"    # Landroid/content/ContentValues;

    .prologue
    .line 63
    sget-object v2, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "FIN_EMPRESA"

    const-string v4, ""

    invoke-virtual {v2, v3, v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 64
    .local v0, "id":J
    return-wide v0
.end method

.method public static inserir(Lcom/controleFinanceiro/empresa/Empresa;)J
    .locals 5
    .param p0, "empresa"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 53
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 54
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "EMP_ST_NOME"

    iget-object v4, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "EMP_CH_TELEFONE"

    iget-object v4, p0, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->inserir(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 58
    .local v0, "id":J
    return-wide v0
.end method

.method public static salvar(Lcom/controleFinanceiro/empresa/Empresa;)J
    .locals 4
    .param p0, "empresa"    # Lcom/controleFinanceiro/empresa/Empresa;

    .prologue
    .line 39
    iget v2, p0, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    int-to-long v0, v2

    .line 41
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->atualizar(Lcom/controleFinanceiro/empresa/Empresa;)I

    .line 48
    :goto_0
    return-wide v0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->inserir(Lcom/controleFinanceiro/empresa/Empresa;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public buscarEmpresa(J)Lcom/controleFinanceiro/empresa/Empresa;
    .locals 12
    .param p1, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 135
    sget-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_EMPRESA"

    sget-object v3, Lcom/controleFinanceiro/empresa/Empresa;->colunas:[Ljava/lang/String;

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

    .line 137
    .local v10, "c":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 140
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    new-instance v11, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v11}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V

    .line 145
    .local v11, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 146
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 147
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    move-object v0, v11

    .line 152
    .end local v11    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 152
    goto :goto_0
.end method

.method public buscarEmpresaPorNome(Ljava/lang/String;)Lcom/controleFinanceiro/empresa/Empresa;
    .locals 13
    .param p1, "nome"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 197
    const/4 v10, 0x0

    .line 200
    .local v10, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_EMPRESA"

    sget-object v2, Lcom/controleFinanceiro/empresa/Empresa;->colunas:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EMP_ST_NOME=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 203
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v11, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v11}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v10    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .local v11, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 209
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v11

    .line 211
    .end local v11    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .restart local v10    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v10

    .line 217
    .end local v8    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 213
    .local v9, "e":Landroid/database/SQLException;
    :goto_1
    const-string v0, "empresa"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar a empresa pelo nome: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v12

    .line 214
    goto :goto_0

    .line 212
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v10, v11

    .end local v11    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .restart local v10    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    goto :goto_1
.end method

.method public carregaComboEmpresa()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 109
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "empresas":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/empresa/Empresa;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, "idxId":I
    const-string v5, "EMP_ST_NOME"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 120
    .local v3, "idxEMP_ST_NOME":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v1}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V

    .line 123
    .local v1, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 124
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 126
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 118
    if-nez v5, :cond_0

    .line 130
    .end local v1    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .end local v3    # "idxEMP_ST_NOME":I
    .end local v4    # "idxId":I
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 131
    return-object v2
.end method

.method public deletar(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 89
    const-string v2, "_id=?"

    .line 91
    .local v2, "where":Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "_id":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 94
    .local v3, "whereArgs":[Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->deletar(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "count":I
    return v1
.end method

.method public deletar(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FIN_EMPRESA"

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "count":I
    const-string v1, "empresa"

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

    .line 102
    return v0
.end method

.method public fechar()V
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 232
    :cond_0
    return-void
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 157
    :try_start_0
    sget-object v0, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FIN_EMPRESA"

    sget-object v2, Lcom/controleFinanceiro/empresa/Empresa;->colunas:[Ljava/lang/String;

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

    .line 160
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 159
    .local v9, "e":Landroid/database/SQLException;
    const-string v0, "empresa"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Erro ao buscar as empresas: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 160
    goto :goto_0
.end method

.method public listarEmpresas()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/controleFinanceiro/empresa/Empresa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 168
    .local v0, "c":Landroid/database/Cursor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "empresas":Ljava/util/List;, "Ljava/util/List<Lcom/controleFinanceiro/empresa/Empresa;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 173
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 174
    .local v5, "idxId":I
    const-string v7, "EMP_ST_NOME"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 175
    .local v3, "idxEMP_ST_NOME":I
    const-string v7, "EMP_CH_TELEFONE"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 179
    .local v4, "idxEMP_ST_TELEFONE":I
    :cond_0
    new-instance v1, Lcom/controleFinanceiro/empresa/Empresa;

    invoke-direct {v1}, Lcom/controleFinanceiro/empresa/Empresa;-><init>()V

    .line 180
    .local v1, "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v1, Lcom/controleFinanceiro/empresa/Empresa;->id:I

    .line 183
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_ST_NOME:Ljava/lang/String;

    .line 184
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/controleFinanceiro/empresa/Empresa;->EMP_CH_TELEFONE:Ljava/lang/String;

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    .line 178
    if-nez v7, :cond_0

    .line 189
    .end local v1    # "empresa":Lcom/controleFinanceiro/empresa/Empresa;
    .end local v3    # "idxEMP_ST_NOME":I
    .end local v4    # "idxEMP_ST_TELEFONE":I
    .end local v5    # "idxId":I
    :cond_1
    new-instance v6, Lcom/controleFinanceiro/empresa/OrdenaEmpresa;

    invoke-direct {v6}, Lcom/controleFinanceiro/empresa/OrdenaEmpresa;-><init>()V

    .line 190
    .local v6, "ordena":Lcom/controleFinanceiro/empresa/OrdenaEmpresa;
    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    return-object v2
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
    .line 222
    sget-object v1, Lcom/controleFinanceiro/empresa/RepositorioEmpresa;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method
