package com.controleFinanceiro.categoria;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import com.controleFinanceiro.configuracao.Configuracao;
import java.util.List;

public class CadastroCategoria
  extends ListActivity
{
  protected static final int CONFIGURACAO = 5;
  protected static final int INSERIR_EDITAR = 1;
  protected static final int SOBRE = 7;
  public static RepositorioCategoria repositorio;
  private List<Categoria> categorias;
  AlertDialog janelaSobre;
  
  protected void atualizarLista()
  {
    List localList1 = repositorio.listarCategoria();
    this.categorias = localList1;
    List localList2 = this.categorias;
    CategoriaListAdapter localCategoriaListAdapter = new CategoriaListAdapter(this, localList2);
    setListAdapter(localCategoriaListAdapter);
  }
  
  protected void editarCategoria(int paramInt)
  {
    Categoria localCategoria = (Categoria)this.categorias.get(paramInt);
    Intent localIntent1 = new Intent(this, EditarCategoria.class);
    int i = localCategoria.id;
    Intent localIntent2 = localIntent1.putExtra("_id", i);
    startActivityForResult(localIntent1, 1);
  }
  
  public void fecharJanelaSobre()
  {
    this.janelaSobre.cancel();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt2 != -1) {
      return;
    }
    atualizarLista();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    repositorio = new RepositorioCategoriaScript(this);
    atualizarLista();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    MenuItem localMenuItem1 = paramMenu.add(0, 1, 0, 2131034172).setIcon(2130837521);
    MenuItem localMenuItem2 = paramMenu.add(0, 5, 0, 2131034123).setIcon(2130837513);
    MenuItem localMenuItem3 = paramMenu.add(0, 7, 0, 2131034173).setIcon(2130837530);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    repositorio.fechar();
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    editarCategoria(paramInt);
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return true;
      Intent localIntent1 = new Intent(this, EditarCategoria.class);
      startActivityForResult(localIntent1, 1);
      continue;
      Intent localIntent2 = new Intent(this, Configuracao.class);
      startActivityForResult(localIntent2, 5);
      continue;
      View localView = LayoutInflater.from(this).inflate(2130903060, null);
      AlertDialog local1 = new AlertDialog(this)
      {
        protected void onCreate(Bundle paramAnonymousBundle)
        {
          super.onCreate(paramAnonymousBundle);
          Button localButton = (Button)findViewById(2131099766);
          View.OnClickListener local1 = new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              CadastroCategoria.this.setResult(0);
              CadastroCategoria.this.fecharJanelaSobre();
            }
          };
          localButton.setOnClickListener(local1);
        }
      };
      this.janelaSobre = local1;
      this.janelaSobre.setIcon(2130837520);
      this.janelaSobre.setTitle("Informações");
      this.janelaSobre.setView(localView);
      this.janelaSobre.show();
    }
  }
}


/* Location:           C:\Users\Renier\Documents\TCC\Controle de financas\trunk\Outros aplicativos\trunk\JD-Gui\ControleFinanceiro.jar
 * Qualified Name:     com.controleFinanceiro.categoria.CadastroCategoria
 * JD-Core Version:    0.7.0.1
 */