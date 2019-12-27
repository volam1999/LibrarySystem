<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="display_user_info.aspx.cs" Inherits="LibrarySystem.display_student_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="C1" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="alert alert-danger" runat="server" id="error1" role="alert" style="display: none;">
                <strong>Your Books NOT Updated!</strong>
            </div>
            <div class="alert alert-success" runat="server" id="done1" role="alert" style="display: none;">
                <strong>Your Books Updated Successfully!</strong>
            </div>
            <div class="alert alert-danger" runat="server" id="error2" role="alert" style="display: none;">
                <strong>Your Books NOT Deleted!</strong>
            </div>
            <div class="alert alert-success" runat="server" id="done2" role="alert" style="display: none;">
                <strong>Your Books Deleted Successfully!</strong>
            </div>
            <div class="card-header">
                <strong class="card-title">All User In The System</strong>
            </div>
            <div class="card-body">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped text-center" id="table">
                            <thead>
                                <tr>
                                    <th scope="col">Photo</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">User Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Contact</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Active</th>
                                    <th scope="col">Deactive</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <img src="<%#Eval("photo") %>" height="100" width="100" /></td>
                            <td><%#Eval("firstname") %></td>
                            <td><%#Eval("lastname") %></td>
                            <td><%#Eval("username") %></td>
                            <td><%#Eval("email") %></td>
                            <td><%#Eval("contact") %></td>
                            <td><%#Eval("approved") %></td>
                            <td><a href="user_active.aspx?id=<%#Eval("id") %> " class="btn btn-outline-success btn-lg btn-block">Active</a></td>
                            <td><a href="user_deactive.aspx?id=<%#Eval("id") %> " class="btn btn-outline-danger btn-lg btn-block">Deactive</a></td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </tbody>
                       </table> 
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

</asp:Content>
