<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Quotation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <header class="jumbotron">
            <h1>Discount Percent Calculator</h1>
        </header>

        <main>
            <div class="row form-group">
                <label class="control-label col-md-2" for="lblSalesPrice">SALES PRICE</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtSalesPrice" runat="server" CssClass="form-control">1000

                    </asp:TextBox>
                </div>
                <div class="col-md-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        CssClass="text-danger" ErrorMessage="Sales Price is required field"
                        ControlToValidate="txtSalesPrice" Display="Dynamic">

                    </asp:RequiredFieldValidator>
                </div>
            </div>
            <%--            End of salesPricebox --%>

            <div class="row form-group">
                <label class="control-label col-md-2" for="lblDiscountPercent">DiscountPercent</label>
                <div class="col-md-4">
                    <asp:TextBox ID="txtDiscountPercent" runat="server" CssClass="form-control">

                    </asp:TextBox>

                </div>


                <div class="col-md-6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        CssClass="text-danger" ControlToValidate="txtDiscountPercent" Display="Dynamic"
                        ErrorMessage="Discount Percent is required">
                    </asp:RequiredFieldValidator>

                    <asp:RangeValidator ID="RangeValidator2" runat="server" CssClass="text-danger"
                        ControlToValidate="txtDiscountPercent" Display="Dynamic" ErrorMessage="PErcent must range from 1 to 80"
                        MinimumValue="1" MaximumValue="80" Type="Double">
                    </asp:RangeValidator>

                </div>

            </div>
            <%-- EndEventHandler of DiscountPercent --%>

            <div class="row form-group">
                <label class="control-label col-md-2" for="lblDiscountAmount">
                    Discount Amount
                </label>
                <div class="col-md-9">
                    <asp:Label ID="lblDiscountAmount" runat="server" CssClass="text-info"></asp:Label>
                </div>
            </div>

            <div class="row form-group">
                <label class="control-label col-md-2" for="lblTotalPrice">
                    Total Price
                </label>
                <div class="col-md-9">
                    <asp:Label ID="lblTotalPrice" runat="server" CssClass="text-info"></asp:Label>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-offset-2 col-md-2">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate"
                        CssClass="btn btn-primary" OnClick="btnCalculate_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear"
                        CssClass="btn btn-primary" CauseValidation="false" OnClick="btnClear_Click" />
                    <asp:Button ID="btncart" runat="server" text="Go to Cart"
                        cssclass="btn btn-primary" causevalidation="false" postbackURL="~/WebForm1.aspx"/>
                </div>

            </div>

        </main>

    </div>


</asp:Content>
