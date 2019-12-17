<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="add_books.aspx.cs" Inherits="LibrarySystem.add_books" %>

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
                <strong class="card-title">Add New Books</strong>
            </div>
            <div class="card-body">
                <!-- Book Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form id="f1" runat="server">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Title</label>
                                <asp:TextBox ID="txt_book_title" runat="server" class="form-control" required></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Image</label>
                                <asp:FileUpload ID="fud_image" runat="server" class="form-control" required></asp:FileUpload>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Author Name</label>
                                <asp:TextBox ID="txt_book_authorname" runat="server" class="form-control" required></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book ISBN</label>
                                <asp:TextBox ID="txt_book_isbn" runat="server" class="form-control" required></asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Qty</label>
                                <asp:TextBox ID="txt_book_qty" runat="server" class="form-control" required></asp:TextBox>
                            </div>

                            <div>
                                <asp:Button ID="btn_add" runat="server" class="btn btn-lg btn-info btn-block" Text="Add Books" OnClick="btn_add_Click" />
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
