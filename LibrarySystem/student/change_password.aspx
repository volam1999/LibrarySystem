<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student.Master" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="LibrarySystem.student.change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="C2" runat="server">
     <div class="breadcrumbs">
        <div class="col-sm-4">
            <div class="page-header float-left">
                <div class="page-title">
                    <h1>Change Password</h1>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
             <div class="login-form">
                    <form id="f1" runat="server">
                        <div class="form-group">
                            <label>Enter New Password</label>
                            <asp:TextBox ID="txt_password" runat="server" class="form-control" placeholder="New Password" TextMode="Password" required></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Confirm Password</label>
                            <asp:TextBox ID="txt_cpassword" runat="server" class="form-control" placeholder="Re-Password" TextMode="Password" required></asp:TextBox>
                        </div>
                        <asp:Button ID="btn_change" runat="server" class="btn btn-primary btn-flat m-b-30 m-t-30" Text="Change Password" OnClick="btn_change_Click"/>
                    </form>
                </div>
        </div>
    </div>
</asp:Content>
