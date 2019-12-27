<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="issue_books.aspx.cs" Inherits="LibrarySystem.issue_books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
      <div class="col-lg-12">
        <div class="alert alert-danger" runat="server" id="error" role="alert" style="display: none;">
            <strong>Your Books NOT Added!</strong>
        </div>
        <div class="alert alert-success" runat="server" id="msg" role="alert" style="display: none;">
            <strong>Your Books Added Successfully!</strong>
        </div>
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Issue Books</strong>
            </div>
            <div class="card-body">
                <!-- Book Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="f1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Select ID</label>
                                <asp:DropDownList ID="ddl_id" runat="server" class="form-control" AppendDataBoundItems="true" DataTextField="username" DataValueField="id" required></asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book ISBN</label>
                                <asp:DropDownList ID="ddl_isbn" runat="server" class="form-control" AppendDataBoundItems="true" DataTextField="isbn" DataValueField="isbn" required AutoPostBack="True" OnSelectedIndexChanged="ddl_isbn_SelectedIndexChanged"></asp:DropDownList>
                            </div>

                            <div class="form-group">

                                <table style="width:100%; display:none" id="tb1" runat="server" class="table text-center">
                                    <tr>
                                        <td colspan="3" class="text-center"><h3><strong>View Book Detail</strong></h3></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="5" style="width: 208px"><asp:Image ID="img_issue" runat="server" Height="228" Width="207" /></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                    <tr>
                                         <td style="width: 260px" align="right">Books Name:</td>
                                        <td align="left" style="padding-left:5px;"><asp:Label ID="lb_bookname" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 260px" align="right">Author:</td>
                                        <td align="left" style="padding-left:5px;"><asp:Label ID="lb_author" runat="server"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 260px" align="right">Available QTY:</td>
                                        <td align="left" style="padding-left:5px;"><asp:Label ID="lb_instock" runat="server"></asp:Label></td>
                                    </tr>
                                </table>

                            </div>

                            <div>
                                <asp:Button ID="btn_issue" runat="server" class="btn btn-lg btn-info btn-block" Text="Issue Books" OnClick="btn_issue_Click"/>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <!-- .card -->

    </div>
    <!--/.col-->
</asp:Content>
