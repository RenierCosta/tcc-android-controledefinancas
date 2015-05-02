package com.controleFinanceiro.categoria;

import java.util.Comparator;

public class OrdenaCategoria
  implements Comparator<Categoria>
{
  public int compare(Categoria paramCategoria1, Categoria paramCategoria2)
  {
    String str1 = paramCategoria1.CAT_ST_DESCRICAO;
    String str2 = paramCategoria2.CAT_ST_DESCRICAO;
    return str1.compareTo(str2);
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.categoria.OrdenaCategoria
 * JD-Core Version:    0.7.0.1
 */