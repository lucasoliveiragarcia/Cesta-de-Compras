<%@ Page Title="Lista de Compras" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RealizarCompra.aspx.cs" Inherits="CestaCompra.Apresentacao.RealizarCompra" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function getConfirmation(sender, title, message) {
            $("#spnTitle").text(title);
            $("#spnMsg").text(message);
            $('#modalPopUp').modal('show');
            $('#btnConfirm').attr('onclick', "$('#modalPopUp').modal('hide');setTimeout(function(){" + $(sender).prop('href') + "}, 50);");
            return false;
        }
    </script>

    <div>
        <div id="modalPopUp" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">
                            <span id="spnTitle"></span>
                        </h4>
                    </div>
                    <div class="modal-body">
                        <p>
                            <span id="spnMsg"></span>.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" id="btnConfirm" class="btn btn-danger">
                            Yes, please</button>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>

    <div class="container-fluid">
        <h2><%: Title %></h2>
        <asp:MultiView ID="mvwPrincipal" runat="server" ActiveViewIndex="0">
            <asp:View ID="viewEscolhaLista" runat="server">
                <h3>Escolha uma lista</h3>
                <asp:Button ID="BtnCriarNovaLista" class="btn btn-success btn-lg col-md-6" runat="server" TabIndex="1" OnClick="BtnCriarNovaLista_Click" Text="Criar Nova Lista" />

                <asp:GridView ID="gvwListaCompra" runat="server" Width="50%" CellSpacing="1" CellPadding="0"
                    AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
                    PageSize="20" OnPageIndexChanging="Paginacao_Grid"
                    CssClass="table table-hover table-striped" ShowHeader="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BtnAbriLista" class="btn btn-light btn-lg col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                                    OnCommand="EscolherLista_Command" CommandArgument='<%# Eval("idlistaCompra") %>' />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                            <ItemStyle HorizontalAlign="Left" Wrap="False" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:View>
            <asp:View ID="viewEscolhaEstabelecimento" runat="server">
                <h3>Escolha uma lista</h3>
                <asp:Button ID="Button1" class="btn btn-success btn-lg col-md-6" runat="server" TabIndex="1" OnClick="BtnCriarNovaLista_Click" Text="Criar Nova Lista" />

                <asp:GridView ID="gvwEstabelecimento" runat="server" Width="50%" CellSpacing="1" CellPadding="0"
                    AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
                    PageSize="20" OnPageIndexChanging="Paginacao_Grid"
                    CssClass="table table-hover table-striped" ShowHeader="false">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BtnEscolhaEstabelecimento" class="btn btn-light btn-lg col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                                    OnCommand="EscolherEstabelecimento_Command" CommandArgument='<%# Eval("idestabelecimento") %>' />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                            <ItemStyle HorizontalAlign="Left" Wrap="False" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:View>
            <asp:View ID="viewPrincipal" runat="server">
                <form>
                    <div class="form-group">
                        <label for="FormControlInputNome">Nome: </label>
                        <asp:Label ID="TxtNomeLista" runat="server" Class="text-justify" Text=""></asp:Label>
                    </div>

                    <div id="DivLista">
                        <asp:GridView ID="GvwLista" runat="server" Width="50%" CellSpaci10g="1" CellPadding="0"
                            AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
                            PageSize="20" OnPageIndexChanging="Paginacao_Grid" OnSorting="GvwLista_Sorting" AlternatingRowStyle-BackColor="White"
                            CssClass="table table-hover table-striped" ShowHeader="true" DataKeyNames="iditemlistacompra">
                            <Columns>
                                <asp:TemplateField HeaderText="iditemlistacompra" HeaderStyle-Wrap="false" ItemStyle-Wrap="false" Visible="false">
                                    <ItemTemplate>
                                        <asp:Label ID="iditemlistacompra" runat="server" Text='<%# Eval("iditemlistacompra") %>' Visible="false"></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Wrap="False" />
                                    <ItemStyle Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Produto">
                                    <ItemTemplate>
                                        <asp:Button ID="BtnProduto" class="btn btn-success col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nomeProduto") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantidade" HeaderStyle-Width="100px">
                                    <ItemTemplate>
                                        <asp:TextBox ID="TxtQuantidade" runat="server" Class="form-control" MaxLength="3" Text='<%# Eval("quantidade") %>'></asp:TextBox>
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderStyle-Width="15px">
                                    <ItemTemplate>
                                        <asp:Button ID="BtnRemoverProduto" class="btn btn-danger col-md-12" runat="server" TabIndex="1" Text="Remover"
                                            OnCommand="RemoverProduto_Command" CommandArgument='<%# Eval("iditemlistacompra") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>

                    <asp:LinkButton ID="LkbAdicionarProduto" runat="server" CssClass="btn btn-primary" OnClick="LkbAdicionarProduto_Click"><i class="glyphicon glyphicon-trash"></i>Adicionar Produto</asp:LinkButton>
                    <asp:LinkButton ID="LkbSalvarListaCompra" runat="server" CssClass="btn btn-danger" OnClick="LkbSalvarListaCompra_Click"><i class="glyphicon glyphicon-trash"></i>Salvar</asp:LinkButton>
                    <asp:LinkButton ID="LkbExcluirListaCompra" runat="server" CssClass="btn btn-danger" OnClick="LkbExcluirListaCompra_Click"><i class="glyphicon glyphicon-trash"></i>Excluir Lista</asp:LinkButton>
                </form>
            </asp:View>
            <asp:View ID="viewAdicionarProduto" runat="server">
                <form>
                    <div class="form-group">
                        <label for="FormControlInputNome">Pesquisar produto: </label>
                        <asp:Label ID="Label1" runat="server" Class="text-justify" Text=""></asp:Label>
                        <asp:TextBox ID="TxtNomePesquisaProduto" CssClass="form-control" placeholder="Ex: Arroz" runat="server" />
                        <asp:Button ID="BtnPesquisarProduto" class="btn btn-success" runat="server" TabIndex="1" OnClick="BtnPesquisarProduto_Click" Text="Pesquisar" />
                    </div>
                    <div id="DivListaAddProduto">
                        <asp:GridView ID="GvwAddProduto" runat="server" Width="30%" CellSpaci10g="1" CellPadding="0"
                            AllowSorting="True" GridLines="None" AutoGenerateColumns="False" AllowPaging="True"
                            PageSize="20" OnPageIndexChanging="Paginacao_Grid" OnSorting="GvwLista_Sorting"
                            CssClass="table table-hover table-striped" ShowHeader="false">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="BtnAbriLista" class="btn btn-success col-md-12" runat="server" TabIndex="1" Text='<%# Eval("nome") %>'
                                            OnCommand="AdicionarProduto_Command"
                                            CommandArgument='<%# Eval("idproduto") %>' />
                                    </ItemTemplate>
                                    <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                                    <ItemStyle HorizontalAlign="Left" Wrap="False" />
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </form>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
