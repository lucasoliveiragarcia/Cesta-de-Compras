<%@ Page Title="Lista de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaCompra.aspx.cs" Inherits="CestaCompra.Apresentacao.ListaCompra" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="container-fluid">
        <form>
            <div class="form-group">
                <label for="FormControlInputNome">Nome: </label>
                 <asp:Label ID="TxtNomeLista" runat="server" Class="text-justify" Text=""></asp:Label>
            </div>

            <div id="DivLista">
                <asp:GridView ID="GvwLista" runat="server" Width="100%" CellSpacing="1" CellPadding="0"
                    AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
                    PageSize="20" OnPageIndexChanging="Paginacao_Grid" OnSorting="GvwLista_Sorting"
                    CssClass="table table-hover table-striped" ShowHeader="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BtnAbriLista" class="btn btn-success btn-lg col-md-6" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                                    OnCommand="Editar_Command"
                                    CommandArgument='<%# Eval("idlistacompra") %>' />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                            <ItemStyle HorizontalAlign="Left" Wrap="False" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

            <button type="button" class="btn btn-primary">Adicionar Produto</button>
            <button type="button" class="btn btn-danger">Remover Produto</button>

        </form>
    </div>




</asp:Content>
