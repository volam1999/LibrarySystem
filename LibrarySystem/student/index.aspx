<%@ Page Title="" Language="C#" MasterPageFile="~/student/Student.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LibrarySystem.student.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title">All Books</strong>
            </div>
            <div class="card-body">
                <asp:Repeater ID="r1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">Book Image</th>
                                    <th scope="col">Book Title</th>
                                    <th scope="col">Author Name</th>
                                    <th scope="col">ISBN</th>
                                    <th scope="col">Available</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <img src="../<%#Eval("image") %>" height="100" width="100" /></td>
                            <td><%#Eval("title") %></td>
                            <td><%#Eval("author") %></td>
                            <td><%#Eval("isbn") %></td>
                            <td><%#Eval("available_qty") %></td>
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
