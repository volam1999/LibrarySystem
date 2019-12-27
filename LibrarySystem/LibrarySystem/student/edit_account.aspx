<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student.Master" AutoEventWireup="true" CodeBehind="edit_account.aspx.cs" Inherits="LibrarySystem.student.edit_account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C2" runat="server">
     <div class="card">
            <div class="card-header">
                <strong class="card-title">EDIT ACCOUNT</strong>
            </div>
            <div class="card-body">
                <!-- Book Card -->
                <div id="pay-invoice">
                    <div class="card-body">
                        <form runat="server" method="post">
                            <div class="form-group">
                                <label for="" class="control-label mb-1">First Name</label>
                                <asp:TextBox ID="txt_firstname" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Last Name</label>
                                <asp:TextBox ID="txt_lastname" runat="server" class="form-control"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Email</label>
                                <asp:TextBox ID="txt_email" runat="server" class="form-control"></asp:TextBox>
                            </div>
                               <div class="form-group">
                                <label for="" class="control-label mb-1">Contact</label>
                                <asp:TextBox ID="txt_contact" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Photo</label>
                                <asp:Label ID="lb_photo" runat="server"></asp:Label>
                                <asp:FileUpload ID="fud_image" runat="server" class="form-control"></asp:FileUpload>
                            </div>
 
                            <div>
                                <a href="#" onclick="history.go(-1)" class="btn btn-danger btn-lg btn-info btn-block"> CANCEL</a>
                                <asp:Button ID="btn_add" runat="server" class="btn btn-primary btn-lg btn-info btn-block" Text="UPDATE" OnClick="btn_add_Click"/>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
