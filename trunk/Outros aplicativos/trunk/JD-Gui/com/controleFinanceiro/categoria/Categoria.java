package com.controleFinanceiro.categoria;

import android.provider.BaseColumns;

public class Categoria
{
  public static String[] colunas;
  public int CAT_IN_TIPO;
  public String CAT_ST_DESCRICAO;
  public String CAT_ST_TIPO;
  public int id;
  
  static
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = "_id";
    arrayOfString[1] = "CAT_ST_DESCRICAO";
    arrayOfString[2] = "CAT_IN_TIPO";
    colunas = arrayOfString;
  }
  
  public Categoria() {}
  
  public Categoria(int paramInt1, String paramString, int paramInt2)
  {
    this.id = paramInt1;
    this.CAT_ST_DESCRICAO = paramString;
    this.CAT_IN_TIPO = paramInt2;
  }
  
  public Categoria(String paramString, int paramInt)
  {
    this.CAT_ST_DESCRICAO = paramString;
    this.CAT_IN_TIPO = paramInt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder("Descrição: ");
    String str = this.CAT_ST_DESCRICAO;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(str).append(", Tipo:");
    int i = this.CAT_IN_TIPO;
    return i;
  }
  
  public static final class Categorias
    implements BaseColumns
  {
    public static final String DEFAULT_SORT_ORDER = "CAT_ST_DESCRICAO ASC";
    public static final String cat_in_tipo = "CAT_IN_TIPO";
    public static final String cat_st_descricao = "CAT_ST_DESCRICAO";
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.categoria.Categoria
 * JD-Core Version:    0.7.0.1
 */