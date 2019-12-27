<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="display_all_book.aspx.cs" Inherits="LibrarySystem.display_all_book" %>

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
                <strong class="card-title">All Books In System</strong>
            </div>
            <div class="card-body">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped" id="table">
                            <thead>
                                <tr>
                                    <th scope="col">Book Image</th>
                                    <th scope="col">Book Title</th>
                                    <th scope="col">Author Name</th>
                                    <th scope="col">ISBN</th>
                                    <th scope="col">Available</th>
                                    <th scope="col">EDIT</th>
                                    <th scope="col">DELETE</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <img src="<%#Eval("image") %>" height="100" width="100" /></td>
                            <td><%#Eval("title") %></td>
                            <td><%#Eval("author") %></td>
                            <td><%#Eval("isbn") %></td>
                            <td><%#Eval("available_qty") %></td>
                            <td><a href="edit_books.aspx?id=<%#Eval("id") %> " class="btn btn-success btn-block">Edit</a></td>
                            <td><a href="delete_books.aspx?id=<%#Eval("id") %> " class="btn btn-danger btn-block">Delete</a></td>
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
