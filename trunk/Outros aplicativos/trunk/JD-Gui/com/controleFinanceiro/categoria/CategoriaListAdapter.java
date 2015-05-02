package com.controleFinanceiro.categoria;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public class CategoriaListAdapter
  extends BaseAdapter
{
  private Context context;
  private List<Categoria> lista;
  
  public CategoriaListAdapter(Context paramContext, List<Categoria> paramList)
  {
    this.context = paramContext;
    this.lista = paramList;
  }
  
  public int getCount()
  {
    return this.lista.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.lista.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Categoria localCategoria = (Categoria)this.lista.get(paramInt);
    View localView = ((LayoutInflater)this.context.getSystemService("layout_inflater")).inflate(2130903041, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131099653);
    String str1 = localCategoria.CAT_ST_DESCRICAO;
    localTextView1.setText(str1);
    TextView localTextView2 = (TextView)localView.findViewById(2131099654);
    String str2 = String.valueOf(localCategoria.CAT_ST_TIPO);
    localTextView2.setText(str2);
    return localView;
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.categoria.CategoriaListAdapter
 * JD-Core Version:    0.7.0.1
 */