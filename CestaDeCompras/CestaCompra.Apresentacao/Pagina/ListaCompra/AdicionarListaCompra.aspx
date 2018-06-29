<%@ Page Title="Nova Lista de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdicionarListaCompra.aspx.cs" Inherits="CestaCompra.Apresentacao.AdicionarListaCompra" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="container-fluid">
        <form>
            <div class="form-group">
                <label for="FormControlInputNome">Nome</label>
                <asp:TextBox ID="TxtNomeLista" CssClass="form-control" placeholder="Ex: Compras do mês" runat="server" />
            </div>

            <asp:Button ID="BtnConfirmarLista" class="btn btn-success" runat="server" TabIndex="1" OnClick="BtnConfirmarLista_Click" Text="Confirmar" />
            <asp:Button ID="BtnCancelar" class="btn btn-danger" runat="server" TabIndex="1" OnClick="BtnCancelar_Click" Text="Cancelar" />
        </form>
    </div>
</asp:Content>
