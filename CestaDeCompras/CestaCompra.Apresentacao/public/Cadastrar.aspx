<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="CestaCompra.Apresentacao._Cadastrar" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="margin: 5% 5% 20px 20%">

        <table class="table">
            <tbody>
                <tr>
                    <th scope="row">Nome</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtNome"></asp:TextBox></td>
                </tr>
                <tr>
                    <th scope="row">Sobrenome</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtSobrenome"></asp:TextBox></td>
                </tr>
                <tr>
                    <th scope="row">Data de Nascimento</th>
                    <td>
                        <asp:TextBox ClientIDMode="Static" ID="TxtDataNascimento" runat="server" CssClass="calendarImg" Width="180px" type="date"></asp:TextBox></td>
                </tr>
                <tr>
                    <th scope="row">Email</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtEmail"></asp:TextBox></td>
                </tr>
                <tr>
                    <th scope="row">Login</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtLogin"></asp:TextBox></td>
                </tr>
                <tr>
                    <th scope="row">Senha</th>
                    <td>
                        <asp:TextBox runat="server" ID="TxtSenha" type="password"></asp:TextBox></td>
                </tr>
            </tbody>
        </table>

        <asp:Button ID="BtnCadastrar" class="btn btn-primary" runat="server" TabIndex="4" OnClick="BtnCadastrar_Click" Text="Cadastrar" />
        <asp:LinkButton ID="LkbEsqueceuSenha" OnClientClick="return window.confirm('Deseja realmente solicitar recuperação de senha?');" OnClick="LkbEsqueceuSenha_Click" runat="server">Esqueceu sua senha?</asp:LinkButton>
    </div>

</asp:Content>
