<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edit_books.aspx.cs" Inherits="LibrarySystem.edit_books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">Update Books</strong>
            </div>
            <div class="card-body">
                <!-- Book Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form action="#" runat="server" method="post" novalidate="novalidate">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Title</label>
                                <asp:TextBox ID="txt_book_title" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Image</label>
                                <asp:Label ID="lb_book_img" runat="server"></asp:Label>
                                <asp:FileUpload ID="fud_image" runat="server" class="form-control"></asp:FileUpload>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Author Name</label>
                                <asp:TextBox ID="txt_book_authorname" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book ISBN</label>
                                <asp:TextBox ID="txt_book_isbn" runat="server" class="form-control"></asp:TextBox>
                            </div>


                            <div class="form-group">
                                <label for="" class="control-label mb-1">Book Qty</label>
                                <asp:TextBox ID="txt_book_qty" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div>
                                <a href="display_all_book.aspx" class="btn btn-danger btn-lg btn-info btn-block"> CANCEL</a>
                                <asp:Button ID="btn_add" runat="server" class="btn btn-primary btn-lg btn-info btn-block" Text="UPDATE" OnClick="btn_add_Click"/>
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
