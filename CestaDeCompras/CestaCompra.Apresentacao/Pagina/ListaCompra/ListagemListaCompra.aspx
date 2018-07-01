<%@ Page Title="Lista de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListagemListaCompra.aspx.cs" Inherits="CestaCompra.Apresentacao.ListagemListaCompra" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" EnableViewState="true" >
    <h2><%: Title %></h2>

    

    <div id="DivListaGrid" class="container-fluid">
        <asp:Button ID="BtnCriarNovaLista" class="btn btn-success btn-lg col-md-6" runat="server" TabIndex="1" OnClick="BtnCriarNovaLista_Click" Text="Criar Nova Lista" />

        <asp:GridView ID="GvwLista" runat="server" Width="100%" CellSpacing="1" CellPadding="0"
            AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
            PageSize="20" OnPageIndexChanging="Paginacao_Grid" OnSorting="GvwLista_Sorting"
            CssClass="table table-hover table-striped" ShowHeader="false"
            >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="BtnAbriLista" class="btn btn-success btn-lg col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                             OnCommand="Editar_Command" CommandArgument='<%# Eval("idlistaCompra") %>'/>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
